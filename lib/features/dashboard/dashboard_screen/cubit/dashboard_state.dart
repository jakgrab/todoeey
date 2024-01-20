import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/formz_validators/note_input.dart';
import '../../../../models/note/note.dart';
import 'dashboard_cubit.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default([]) List<DateTime> dates,
    DateTime? selectedDate,
    @Default(NoteInput.pure()) NoteInput titleInput,
    @Default(NoteInput.pure()) NoteInput descriptionInput,
    @Default(false) bool areFormsValid,
    DateTime? noteDate,
    TimeOfDay? noteTime,
    NoteCreationException? noteCreationException,
    @Default([]) List<Note> notesList,
  }) = _DashboardState;
}
