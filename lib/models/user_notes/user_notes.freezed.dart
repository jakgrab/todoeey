// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_notes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserNotes _$UserNotesFromJson(Map<String, dynamic> json) {
  return _UserNotes.fromJson(json);
}

/// @nodoc
mixin _$UserNotes {
  List<Note> get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNotesCopyWith<UserNotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotesCopyWith<$Res> {
  factory $UserNotesCopyWith(UserNotes value, $Res Function(UserNotes) then) =
      _$UserNotesCopyWithImpl<$Res, UserNotes>;
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class _$UserNotesCopyWithImpl<$Res, $Val extends UserNotes>
    implements $UserNotesCopyWith<$Res> {
  _$UserNotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNotesImplCopyWith<$Res>
    implements $UserNotesCopyWith<$Res> {
  factory _$$UserNotesImplCopyWith(
          _$UserNotesImpl value, $Res Function(_$UserNotesImpl) then) =
      __$$UserNotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes});
}

/// @nodoc
class __$$UserNotesImplCopyWithImpl<$Res>
    extends _$UserNotesCopyWithImpl<$Res, _$UserNotesImpl>
    implements _$$UserNotesImplCopyWith<$Res> {
  __$$UserNotesImplCopyWithImpl(
      _$UserNotesImpl _value, $Res Function(_$UserNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$UserNotesImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserNotesImpl implements _UserNotes {
  _$UserNotesImpl({final List<Note> notes = const []}) : _notes = notes;

  factory _$UserNotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNotesImplFromJson(json);

  final List<Note> _notes;
  @override
  @JsonKey()
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'UserNotes(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotesImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotesImplCopyWith<_$UserNotesImpl> get copyWith =>
      __$$UserNotesImplCopyWithImpl<_$UserNotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNotesImplToJson(
      this,
    );
  }
}

abstract class _UserNotes implements UserNotes {
  factory _UserNotes({final List<Note> notes}) = _$UserNotesImpl;

  factory _UserNotes.fromJson(Map<String, dynamic> json) =
      _$UserNotesImpl.fromJson;

  @override
  List<Note> get notes;
  @override
  @JsonKey(ignore: true)
  _$$UserNotesImplCopyWith<_$UserNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
