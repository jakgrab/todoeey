// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  EmailInput get emailInput => throw _privateConstructorUsedError;
  PasswordInput get passwordInput => throw _privateConstructorUsedError;
  PasswordInput get repeatedPasswordInput => throw _privateConstructorUsedError;
  bool get areFormsValid => throw _privateConstructorUsedError;
  bool get arePasswordsTheSame => throw _privateConstructorUsedError;
  FormzSubmissionStatus get formzSubmissionStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {EmailInput emailInput,
      PasswordInput passwordInput,
      PasswordInput repeatedPasswordInput,
      bool areFormsValid,
      bool arePasswordsTheSame,
      FormzSubmissionStatus formzSubmissionStatus});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailInput = null,
    Object? passwordInput = null,
    Object? repeatedPasswordInput = null,
    Object? areFormsValid = null,
    Object? arePasswordsTheSame = null,
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
      repeatedPasswordInput: null == repeatedPasswordInput
          ? _value.repeatedPasswordInput
          : repeatedPasswordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      areFormsValid: null == areFormsValid
          ? _value.areFormsValid
          : areFormsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      arePasswordsTheSame: null == arePasswordsTheSame
          ? _value.arePasswordsTheSame
          : arePasswordsTheSame // ignore: cast_nullable_to_non_nullable
              as bool,
      formzSubmissionStatus: null == formzSubmissionStatus
          ? _value.formzSubmissionStatus
          : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailInput emailInput,
      PasswordInput passwordInput,
      PasswordInput repeatedPasswordInput,
      bool areFormsValid,
      bool arePasswordsTheSame,
      FormzSubmissionStatus formzSubmissionStatus});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailInput = null,
    Object? passwordInput = null,
    Object? repeatedPasswordInput = null,
    Object? areFormsValid = null,
    Object? arePasswordsTheSame = null,
    Object? formzSubmissionStatus = null,
  }) {
    return _then(_$SignUpStateImpl(
      emailInput: null == emailInput
          ? _value.emailInput
          : emailInput // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwordInput: null == passwordInput
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      repeatedPasswordInput: null == repeatedPasswordInput
          ? _value.repeatedPasswordInput
          : repeatedPasswordInput // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      areFormsValid: null == areFormsValid
          ? _value.areFormsValid
          : areFormsValid // ignore: cast_nullable_to_non_nullable
              as bool,
      arePasswordsTheSame: null == arePasswordsTheSame
          ? _value.arePasswordsTheSame
          : arePasswordsTheSame // ignore: cast_nullable_to_non_nullable
              as bool,
      formzSubmissionStatus: null == formzSubmissionStatus
          ? _value.formzSubmissionStatus
          : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl(
      {this.emailInput = const EmailInput.pure(),
      this.passwordInput = const PasswordInput.pure(),
      this.repeatedPasswordInput = const PasswordInput.pure(),
      this.areFormsValid = false,
      this.arePasswordsTheSame = true,
      this.formzSubmissionStatus = FormzSubmissionStatus.initial});

  @override
  @JsonKey()
  final EmailInput emailInput;
  @override
  @JsonKey()
  final PasswordInput passwordInput;
  @override
  @JsonKey()
  final PasswordInput repeatedPasswordInput;
  @override
  @JsonKey()
  final bool areFormsValid;
  @override
  @JsonKey()
  final bool arePasswordsTheSame;
  @override
  @JsonKey()
  final FormzSubmissionStatus formzSubmissionStatus;

  @override
  String toString() {
    return 'SignUpState(emailInput: $emailInput, passwordInput: $passwordInput, repeatedPasswordInput: $repeatedPasswordInput, areFormsValid: $areFormsValid, arePasswordsTheSame: $arePasswordsTheSame, formzSubmissionStatus: $formzSubmissionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.emailInput, emailInput) ||
                other.emailInput == emailInput) &&
            (identical(other.passwordInput, passwordInput) ||
                other.passwordInput == passwordInput) &&
            (identical(other.repeatedPasswordInput, repeatedPasswordInput) ||
                other.repeatedPasswordInput == repeatedPasswordInput) &&
            (identical(other.areFormsValid, areFormsValid) ||
                other.areFormsValid == areFormsValid) &&
            (identical(other.arePasswordsTheSame, arePasswordsTheSame) ||
                other.arePasswordsTheSame == arePasswordsTheSame) &&
            (identical(other.formzSubmissionStatus, formzSubmissionStatus) ||
                other.formzSubmissionStatus == formzSubmissionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailInput,
      passwordInput,
      repeatedPasswordInput,
      areFormsValid,
      arePasswordsTheSame,
      formzSubmissionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {final EmailInput emailInput,
      final PasswordInput passwordInput,
      final PasswordInput repeatedPasswordInput,
      final bool areFormsValid,
      final bool arePasswordsTheSame,
      final FormzSubmissionStatus formzSubmissionStatus}) = _$SignUpStateImpl;

  @override
  EmailInput get emailInput;
  @override
  PasswordInput get passwordInput;
  @override
  PasswordInput get repeatedPasswordInput;
  @override
  bool get areFormsValid;
  @override
  bool get arePasswordsTheSame;
  @override
  FormzSubmissionStatus get formzSubmissionStatus;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
