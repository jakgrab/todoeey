// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../author/author.dart';

part 'note_response.freezed.dart';
part 'note_response.g.dart';

@freezed
class NoteResponse with _$NoteResponse {
  factory NoteResponse({
    int? id,
    Author? author,
    String? title,
    String? description,
    @JsonKey(name: 'is_complete') bool? isComplete,
    @JsonKey(name: 'due_date') String? date,
  }) = _NoteResponse;

  factory NoteResponse.fromJson(Map<String, dynamic> json) => _$NoteResponseFromJson(json);
}
