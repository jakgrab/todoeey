// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_from_api_with_id.freezed.dart';
part 'note_from_api_with_id.g.dart';

@freezed
class NoteFromApiWithId with _$NoteFromApiWithId {
  factory NoteFromApiWithId({
    int? id,
    String? title,
    String? description,
    @JsonKey(name: 'is_complete') bool? isComplete,
    @JsonKey(name: 'due_date') String? dateToIsoString,
  }) = _NoteFromApiWithId;

  factory NoteFromApiWithId.fromJson(Map<String, dynamic> json) =>
      _$NoteFromApiWithIdFromJson(json);
}
