// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_from_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteFromApi _$NoteFromApiFromJson(Map<String, dynamic> json) {
  return _NoteFromApi.fromJson(json);
}

/// @nodoc
mixin _$NoteFromApi {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_complete')
  bool? get isComplete => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String? get dateToIsoString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteFromApiCopyWith<NoteFromApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFromApiCopyWith<$Res> {
  factory $NoteFromApiCopyWith(
          NoteFromApi value, $Res Function(NoteFromApi) then) =
      _$NoteFromApiCopyWithImpl<$Res, NoteFromApi>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      @JsonKey(name: 'is_complete') bool? isComplete,
      @JsonKey(name: 'due_date') String? dateToIsoString});
}

/// @nodoc
class _$NoteFromApiCopyWithImpl<$Res, $Val extends NoteFromApi>
    implements $NoteFromApiCopyWith<$Res> {
  _$NoteFromApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? isComplete = freezed,
    Object? dateToIsoString = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$NoteFromApiImplCopyWith<$Res>
    implements $NoteFromApiCopyWith<$Res> {
  factory _$$NoteFromApiImplCopyWith(
          _$NoteFromApiImpl value, $Res Function(_$NoteFromApiImpl) then) =
      __$$NoteFromApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      @JsonKey(name: 'is_complete') bool? isComplete,
      @JsonKey(name: 'due_date') String? dateToIsoString});
}

/// @nodoc
class __$$NoteFromApiImplCopyWithImpl<$Res>
    extends _$NoteFromApiCopyWithImpl<$Res, _$NoteFromApiImpl>
    implements _$$NoteFromApiImplCopyWith<$Res> {
  __$$NoteFromApiImplCopyWithImpl(
      _$NoteFromApiImpl _value, $Res Function(_$NoteFromApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? isComplete = freezed,
    Object? dateToIsoString = freezed,
  }) {
    return _then(_$NoteFromApiImpl(
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
class _$NoteFromApiImpl implements _NoteFromApi {
  _$NoteFromApiImpl(
      {this.title,
      this.description,
      @JsonKey(name: 'is_complete') this.isComplete,
      @JsonKey(name: 'due_date') this.dateToIsoString});

  factory _$NoteFromApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteFromApiImplFromJson(json);

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
    return 'NoteFromApi(title: $title, description: $description, isComplete: $isComplete, dateToIsoString: $dateToIsoString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteFromApiImpl &&
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
  int get hashCode =>
      Object.hash(runtimeType, title, description, isComplete, dateToIsoString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteFromApiImplCopyWith<_$NoteFromApiImpl> get copyWith =>
      __$$NoteFromApiImplCopyWithImpl<_$NoteFromApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteFromApiImplToJson(
      this,
    );
  }
}

abstract class _NoteFromApi implements NoteFromApi {
  factory _NoteFromApi(
          {final String? title,
          final String? description,
          @JsonKey(name: 'is_complete') final bool? isComplete,
          @JsonKey(name: 'due_date') final String? dateToIsoString}) =
      _$NoteFromApiImpl;

  factory _NoteFromApi.fromJson(Map<String, dynamic> json) =
      _$NoteFromApiImpl.fromJson;

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
  _$$NoteFromApiImplCopyWith<_$NoteFromApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
