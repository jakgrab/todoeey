// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteResponse _$NoteResponseFromJson(Map<String, dynamic> json) {
  return _NoteResponse.fromJson(json);
}

/// @nodoc
mixin _$NoteResponse {
  int? get id => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_complete')
  bool? get isComplete => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteResponseCopyWith<NoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteResponseCopyWith<$Res> {
  factory $NoteResponseCopyWith(
          NoteResponse value, $Res Function(NoteResponse) then) =
      _$NoteResponseCopyWithImpl<$Res, NoteResponse>;
  @useResult
  $Res call(
      {int? id,
      Author? author,
      String? title,
      String? description,
      @JsonKey(name: 'is_complete') bool? isComplete,
      @JsonKey(name: 'due_date') String? date});

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$NoteResponseCopyWithImpl<$Res, $Val extends NoteResponse>
    implements $NoteResponseCopyWith<$Res> {
  _$NoteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isComplete = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteResponseImplCopyWith<$Res>
    implements $NoteResponseCopyWith<$Res> {
  factory _$$NoteResponseImplCopyWith(
          _$NoteResponseImpl value, $Res Function(_$NoteResponseImpl) then) =
      __$$NoteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Author? author,
      String? title,
      String? description,
      @JsonKey(name: 'is_complete') bool? isComplete,
      @JsonKey(name: 'due_date') String? date});

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$NoteResponseImplCopyWithImpl<$Res>
    extends _$NoteResponseCopyWithImpl<$Res, _$NoteResponseImpl>
    implements _$$NoteResponseImplCopyWith<$Res> {
  __$$NoteResponseImplCopyWithImpl(
      _$NoteResponseImpl _value, $Res Function(_$NoteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isComplete = freezed,
    Object? date = freezed,
  }) {
    return _then(_$NoteResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteResponseImpl implements _NoteResponse {
  _$NoteResponseImpl(
      {this.id,
      this.author,
      this.title,
      this.description,
      @JsonKey(name: 'is_complete') this.isComplete,
      @JsonKey(name: 'due_date') this.date});

  factory _$NoteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final Author? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_complete')
  final bool? isComplete;
  @override
  @JsonKey(name: 'due_date')
  final String? date;

  @override
  String toString() {
    return 'NoteResponse(id: $id, author: $author, title: $title, description: $description, isComplete: $isComplete, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, author, title, description, isComplete, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteResponseImplCopyWith<_$NoteResponseImpl> get copyWith =>
      __$$NoteResponseImplCopyWithImpl<_$NoteResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteResponseImplToJson(
      this,
    );
  }
}

abstract class _NoteResponse implements NoteResponse {
  factory _NoteResponse(
      {final int? id,
      final Author? author,
      final String? title,
      final String? description,
      @JsonKey(name: 'is_complete') final bool? isComplete,
      @JsonKey(name: 'due_date') final String? date}) = _$NoteResponseImpl;

  factory _NoteResponse.fromJson(Map<String, dynamic> json) =
      _$NoteResponseImpl.fromJson;

  @override
  int? get id;
  @override
  Author? get author;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_complete')
  bool? get isComplete;
  @override
  @JsonKey(name: 'due_date')
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$NoteResponseImplCopyWith<_$NoteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
