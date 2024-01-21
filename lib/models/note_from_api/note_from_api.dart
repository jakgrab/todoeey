// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../note/note.dart';

part 'note_from_api.freezed.dart';
part 'note_from_api.g.dart';

@freezed
class NoteFromApi with _$NoteFromApi {
  factory NoteFromApi({
    String? title,
    String? description,
    @JsonKey(name: 'is_complete') bool? isComplete,
    @JsonKey(name: 'due_date') String? dateToIsoString,
  }) = _NoteFromApi;

  factory NoteFromApi.fromJson(Map<String, dynamic> json) => _$NoteFromApiFromJson(json);

  static NoteFromApi fromNote(Note note) {
    return NoteFromApi(
      title: note.title,
      description: note.description,
      isComplete: false,
      dateToIsoString: note.date?.toIso8601String(),
    );
  }
}
