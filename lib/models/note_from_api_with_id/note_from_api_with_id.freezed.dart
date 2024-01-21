// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_from_api_with_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteFromApiWithId _$NoteFromApiWithIdFromJson(Map<String, dynamic> json) {
  return _NoteFromApiWithId.fromJson(json);
}

/// @nodoc
mixin _$NoteFromApiWithId {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_complete')
  bool? get isComplete => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String? get dateToIsoString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteFromApiWithIdCopyWith<NoteFromApiWithId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFromApiWithIdCopyWith<$Res> {
  factory $NoteFromApiWithIdCopyWith(
          NoteFromApiWithId value, $Res Function(NoteFromApiWithId) then) =
      _$NoteFromApiWithIdCopyWithImpl<$Res, NoteFromApiWithId>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      @JsonKey(name: 'is_complete') bool? isComplete,
      @JsonKey(name: 'due_date') String? dateToIsoString});
}

/// @nodoc
class _$NoteFromApiWithIdCopyWithImpl<$Res, $Val extends NoteFromApiWithId>
    implements $NoteFromApiWithIdCopyWith<$Res> {
  _$NoteFromApiWithIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isComplete = freezed,
    Object? dateToIsoString = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateToIsoString: freezed == dateToIsoString
          ? _value.dateToIsoString
          : dateToIsoString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteFromApiWithIdImplCopyWith<$Res>
    implements $NoteFromApiWithIdCopyWith<$Res> {
  factory _$$NoteFromApiWithIdImplCopyWith(_$NoteFromApiWithIdImpl value,
          $Res Function(_$NoteFromApiWithIdImpl) then) =
      __$$NoteFromApiWithIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      @JsonKey(name: 'is_complete') bool? isComplete,
      @JsonKey(name: 'due_date') String? dateToIsoString});
}

/// @nodoc
class __$$NoteFromApiWithIdImplCopyWithImpl<$Res>
    extends _$NoteFromApiWithIdCopyWithImpl<$Res, _$NoteFromApiWithIdImpl>
    implements _$$NoteFromApiWithIdImplCopyWith<$Res> {
  __$$NoteFromApiWithIdImplCopyWithImpl(_$NoteFromApiWithIdImpl _value,
      $Res Function(_$NoteFromApiWithIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isComplete = freezed,
    Object? dateToIsoString = freezed,
  }) {
    return _then(_$NoteFromApiWithIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateToIsoString: freezed == dateToIsoString
          ? _value.dateToIsoString
          : dateToIsoString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteFromApiWithIdImpl implements _NoteFromApiWithId {
  _$NoteFromApiWithIdImpl(
      {this.id,
      this.title,
      this.description,
      @JsonKey(name: 'is_complete') this.isComplete,
      @JsonKey(name: 'due_date') this.dateToIsoString});

  factory _$NoteFromApiWithIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteFromApiWithIdImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_complete')
  final bool? isComplete;
  @override
  @JsonKey(name: 'due_date')
  final String? dateToIsoString;

  @override
  String toString() {
    return 'NoteFromApiWithId(id: $id, title: $title, description: $description, isComplete: $isComplete, dateToIsoString: $dateToIsoString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteFromApiWithIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            (identical(other.dateToIsoString, dateToIsoString) ||
                other.dateToIsoString == dateToIsoString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, isComplete, dateToIsoString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteFromApiWithIdImplCopyWith<_$NoteFromApiWithIdImpl> get copyWith =>
      __$$NoteFromApiWithIdImplCopyWithImpl<_$NoteFromApiWithIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteFromApiWithIdImplToJson(
      this,
    );
  }
}

abstract class _NoteFromApiWithId implements NoteFromApiWithId {
  factory _NoteFromApiWithId(
          {final int? id,
          final String? title,
          final String? description,
          @JsonKey(name: 'is_complete') final bool? isComplete,
          @JsonKey(name: 'due_date') final String? dateToIsoString}) =
      _$NoteFromApiWithIdImpl;

  factory _NoteFromApiWithId.fromJson(Map<String, dynamic> json) =
      _$NoteFromApiWithIdImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_complete')
  bool? get isComplete;
  @override
  @JsonKey(name: 'due_date')
  String? get dateToIsoString;
  @override
  @JsonKey(ignore: true)
  _$$NoteFromApiWithIdImplCopyWith<_$NoteFromApiWithIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
