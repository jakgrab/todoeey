import 'package:formz/formz.dart';

enum NoteInputError { empty }

class NoteInput extends FormzInput<String, NoteInputError> {
  const NoteInput.pure() : super.pure('');

  const NoteInput.dirty({String value = ''}) : super.dirty(value);

  @override
  NoteInputError? validator(String value) {
    if (value.isEmpty) {
      return NoteInputError.empty;
    }
    return null;
  }
}
