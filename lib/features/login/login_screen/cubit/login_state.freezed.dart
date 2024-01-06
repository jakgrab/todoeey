// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  EmailInput get emailInput => throw _privateConstructorUsedError;
  PasswordInput get passwordInput => throw _privateConstructorUsedError;
  bool get areFormsValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get formzSubmissionStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {EmailInput emailInput,
      PasswordInput passwordInput,
      bool areFormsValid,
      FormzSubmissionStatus formzSubmissionStatus});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailInput = null,
    Object? passwordInput = null,
    Object? areFormsValid = null,
    Object? formzSubmissionStatus = null,
  }) {
    return _then(_value.copyWith(
      emailInput: null == emailInput
          ? _value.emailInput
          : emailInput // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwordInput: null == passwordInput
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      areFormsValid: null == areFormsValid
          ? _value.areFormsValid
          : areFormsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formzSubmissionStatus: null == formzSubmissionStatus
          ? _value.formzSubmissionStatus
          : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailInput emailInput,
      PasswordInput passwordInput,
      bool areFormsValid,
      FormzSubmissionStatus formzSubmissionStatus});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailInput = null,
    Object? passwordInput = null,
    Object? areFormsValid = null,
    Object? formzSubmissionStatus = null,
  }) {
    return _then(_$LoginStateImpl(
      emailInput: null == emailInput
          ? _value.emailInput
          : emailInput // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwordInput: null == passwordInput
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      areFormsValid: null == areFormsValid
          ? _value.areFormsValid
          : areFormsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formzSubmissionStatus: null == formzSubmissionStatus
          ? _value.formzSubmissionStatus
          : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.emailInput = const EmailInput.pure(),
      this.passwordInput = const PasswordInput.pure(),
      this.areFormsValid = false,
      this.formzSubmissionStatus = FormzSubmissionStatus.initial});

  @override
  @JsonKey()
  final EmailInput emailInput;
  @override
  @JsonKey()
  final PasswordInput passwordInput;
  @override
  @JsonKey()
  final bool areFormsValid;
  @override
  @JsonKey()
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  String toString() {
    return 'LoginState(emailInput: $emailInput, passwordInput: $passwordInput, areFormsValid: $areFormsValid, formzSubmissionStatus: $formzSubmissionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.emailInput, emailInput) ||
                other.emailInput == emailInput) &&
            (identical(other.passwordInput, passwordInput) ||
                other.passwordInput == passwordInput) &&
            (identical(other.areFormsValid, areFormsValid) ||
                other.areFormsValid == areFormsValid) &&
            (identical(other.formzSubmissionStatus, formzSubmissionStatus) ||
                other.formzSubmissionStatus == formzSubmissionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailInput, passwordInput,
      areFormsValid, formzSubmissionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final EmailInput emailInput,
      final PasswordInput passwordInput,
      final bool areFormsValid,
      final FormzSubmissionStatus formzSubmissionStatus}) = _$LoginStateImpl;

  @override
  EmailInput get emailInput;
  @override
  PasswordInput get passwordInput;
  @override
  bool get areFormsValid;
  @override
  FormzSubmissionStatus get formzSubmissionStatus;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
