import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../../../../common/enums/note_status.dart';
import '../../../../common/formz_validators/note_input.dart';
import '../../../../models/note/note.dart';
import '../../../../repositories/note/note_repository_interface.dart';
import 'dashboard_state.dart';

class NoteCreationException implements Exception {}

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(
    this._noteRepository,
  ) : super(DashboardState());

  final NoteRepositoryInterface _noteRepository;
  late StreamSubscription<List<Note>?> _notesStreamSubscription;

  void init() async {
    _getAppBarDate();
    _notesStreamSubscription = _noteRepository.getNotes('1').listen((notes) {
      if (notes == null) return;

      final initialList = notes.map((e) => e.date).toList();
      final datesList = _prepareDatesList(initialList);

      emit(state.copyWith(
        notesList: notes,
        visibleNotesList: notes,
        datesList: datesList,
      ));
    });
  }

  void onNoteTitleChanged(String? newTitle) {
    if (newTitle == null) return;

    final titleInput = NoteInput.dirty(value: newTitle);
    emit(state.copyWith(titleInput: titleInput));
    _validateForms();
  }

  void onNoteDescriptionChanged(String? newDescription) {
    if (newDescription == null) return;

    final descriptionInput = NoteInput.dirty(value: newDescription);
    emit(state.copyWith(descriptionInput: descriptionInput));
    _validateForms();
  }

  void _validateForms() {
    final areFormsValid = Formz.validate([state.titleInput, state.descriptionInput]);
    emit(state.copyWith(areFormsValid: areFormsValid));
  }

  void setNoteDate(DateTime? date) {
    if (date == null) return;
    emit(state.copyWith(noteDate: date, noteCreationException: null));
  }

  void setNoteTime(TimeOfDay? time) {
    if (time == null) return;
    emit(state.copyWith(noteTime: time));
  }

  Future<bool> createNote() async {
    final title = state.titleInput.value;
    final description = state.descriptionInput.value;
    final date = state.noteDate;
    final time = state.noteTime ?? TimeOfDay.now();

    if (date == null) {
      emit(state.copyWith(noteCreationException: NoteCreationException()));
      return false;
    }

    final note = Note(
      id: const Uuid().v1(),
      title: title,
      description: description,
      date: date.copyWith(hour: time.hour, minute: time.minute),
    );

    final notesList = [...state.notesList, note];

    emit(state.copyWith(
      notesList: notesList,
      titleInput: const NoteInput.pure(),
      descriptionInput: const NoteInput.pure(),
      noteDate: null,
    ));

    _addDateToDatesList(date);
    _updateVisibleNotes();

    await _noteRepository.saveNote('1', note);
    return true;
  }

  Future<void> removeNote(Note note) async {
    final notes = [...state.notesList];
    final noteDate = note.date;

    notes.remove(note);
    emit(state.copyWith(notesList: notes));

    final anyNoteWithTheSameDateInList = notes.any((noteItem) {
      final noteDate = noteItem.date;
      if (noteDate?.year == note.date?.year &&
          noteDate?.month == note.date?.month &&
          noteDate?.day == note.date?.day) {
        return true;
      }
      return false;
    });

    if (!anyNoteWithTheSameDateInList) {
      _removeDateFromDatesList(noteDate);
    }

    await _noteRepository.deleteNote('1', note);

    _updateVisibleNotes();
  }

  Future<void> updateNote(Note note) async {
    final notes = [...state.notesList];

    final index = notes.indexWhere((currentNote) => currentNote.id == note.id);
    notes[index] = note;

    emit(state.copyWith(notesList: notes));
    await _noteRepository.updateNote('1', note);

    _updateVisibleNotes();
  }

  void selectDate(DateTime date) {
    final isDateAlreadySelected = state.selectedDate == date;

    if (isDateAlreadySelected) {
      emit(state.copyWith(
        selectedDate: null,
      ));
      _updateVisibleNotes();
      return;
    }

    emit(state.copyWith(
      selectedDate: date,
    ));

    _updateVisibleNotes();
  }

  void setNoteFilterStatus(NoteFilterStatus noteStatus) {
    emit(state.copyWith(noteFilterStatus: noteStatus));

    _updateVisibleNotes();
  }

  void _updateVisibleNotes() {
    _filterNotesBySelectedDate();

    _filterNotesByFilterStatus();
  }

  void _filterNotesByFilterStatus() {
    final noteFilterstatus = state.noteFilterStatus;
    if (noteFilterstatus == NoteFilterStatus.none) return;

    final showOnlyComplete = noteFilterstatus == NoteFilterStatus.complete ? true : false;

    final filteredNotes =
        state.visibleNotesList.where((note) => note.isComplete == showOnlyComplete).toList();

    emit(state.copyWith(visibleNotesList: filteredNotes));
  }

  void _filterNotesBySelectedDate() {
    final selectedDate = state.selectedDate;
    final notesList = state.notesList;

    if (selectedDate == null) {
      emit(state.copyWith(visibleNotesList: notesList));
      return;
    }

    final visibleNotes = state.notesList.where((note) {
      final noteDate = note.date;
      if (noteDate == null) {
        return false;
      }

      if (noteDate.year == selectedDate.year &&
          noteDate.month == selectedDate.month &&
          noteDate.day == selectedDate.day) {
        return true;
      }

      return false;
    }).toList();

    emit(state.copyWith(
      visibleNotesList: visibleNotes,
    ));
  }

  void _addDateToDatesList(DateTime date) {
    final datesList = [...state.datesList, date];

    final removedSameHourAndMinute = _prepareDatesList(datesList);

    emit(state.copyWith(datesList: removedSameHourAndMinute));
  }

  void _removeDateFromDatesList(DateTime? date) {
    if (date == null) return;

    final datesList = [...state.datesList]..removeWhere((dateItem) {
        if (dateItem?.year == date.year &&
            dateItem?.month == date.month &&
            dateItem?.day == date.day) {
          return true;
        }

        return false;
      });

    final removedSameHourAndMinute = _prepareDatesList(datesList);

    emit(state.copyWith(datesList: removedSameHourAndMinute));
  }

  List<DateTime?> _prepareDatesList(List<DateTime?> dateTimes) {
    dateTimes.sort(_compareDates);

    final seen = <String, bool>{};
    return dateTimes.where((dateTime) {
      if (dateTime == null) {
        return false;
      }
      final key = '${dateTime.year}-${dateTime.month}-${dateTime.day}';
      if (seen.containsKey(key)) {
        return false;
      } else {
        seen[key] = true;
        return true;
      }
    }).toList();
  }

  int _compareDates(DateTime? a, DateTime? b) {
    if (a == null || b == null) {
      return 0;
    }
    return a.compareTo(b);
  }

  void _getAppBarDate() {
    final today = DateTime.now();

    final formatter = DateFormat('EEEE, d MMM');

    final formattedDate = formatter.format(today);

    emit(state.copyWith(appBarDate: formattedDate));
  }

  @override
  Future<void> close() {
    _notesStreamSubscription.cancel();
    return super.close();
  }
}
