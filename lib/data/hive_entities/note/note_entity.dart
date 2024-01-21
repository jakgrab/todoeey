import 'package:hive/hive.dart';

import '../../../models/note/note.dart';

part 'note_entity.g.dart';

@HiveType(typeId: 1)
class NoteEntity extends HiveObject {
  NoteEntity({
    this.id,
    this.title,
    this.description,
    this.date,
    this.isComplete,
  });

  @HiveField(0)
  int? id;

  @HiveField(1)
  String? title;

  @HiveField(2)
  String? description;

  @HiveField(3)
  DateTime? date;

  @HiveField(4)
  bool? isComplete;

  static NoteEntity fromNote(Note note) {
    return NoteEntity(
      id: note.id,
      title: note.title,
      description: note.description,
      date: note.date,
      isComplete: note.isComplete,
    );
  }
}
