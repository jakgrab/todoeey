import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:uuid/uuid.dart';

import '../../../../common/formz_validators/note_input.dart';
import '../../../../models/note/note.dart';
import 'dashboard_state.dart';

class NoteCreationException implements Exception {}

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState());

  void init() {
    final now = DateTime.now();
    final datesList = <DateTime>[];

    for (var i = 0; i < 99; i++) {
      final nextDay = now.add(Duration(days: i));
      datesList.add(nextDay);
    }

    emit(state.copyWith(dates: datesList));
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
    if (date == null) {
      return;
    }

    emit(state.copyWith(noteDate: date));
  }

  void setNoteTime(TimeOfDay? time) {
    if (time == null) {
      return;
    }

    emit(state.copyWith(noteTime: time));
  }

  void createNote() {
    final title = state.titleInput.value;
    final description = state.descriptionInput.value;
    final date = state.noteDate;

    if (date == null) {
      emit(state.copyWith(noteCreationException: NoteCreationException()));
    }

    final note = Note(
      id: const Uuid().v1(),
      title: title,
      description: description,
      date: date,
    );

    final notesList = [...state.notesList, note];

    emit(state.copyWith(
      notesList: notesList,
      titleInput: const NoteInput.pure(),
      descriptionInput: const NoteInput.pure(),
    ));
  }

  void updateNote(Note note) {
    final notes = [...state.notesList];
    notes.removeWhere((element) => element.id == note.id);
    notes.add(note);

    emit(state.copyWith(notesList: notes));
  }

  void selectDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }
}
