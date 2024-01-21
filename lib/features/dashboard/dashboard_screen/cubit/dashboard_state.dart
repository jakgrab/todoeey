import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/enums/note_status.dart';
import '../../../../common/formz_validators/note_input.dart';
import '../../../../models/note/note.dart';
import 'dashboard_cubit.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default([]) List<DateTime?> datesList,
    @Default([]) List<Note> visibleNotesList,
    @Default([]) List<Note> notesList,
    DateTime? selectedDate,
    @Default(NoteFilterStatus.none) NoteFilterStatus noteFilterStatus,
    @Default('') String appBarDate,
    @Default(NoteInput.pure()) NoteInput titleInput,
    @Default(NoteInput.pure()) NoteInput descriptionInput,
    @Default(false) bool areFormsValid,
    DateTime? noteDate,
    TimeOfDay? noteTime,
    NoteCreationException? noteCreationException,
  }) = _DashboardState;
}
