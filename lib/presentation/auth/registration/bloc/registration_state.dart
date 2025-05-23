import 'package:flutter/foundation.dart';
import 'package:flutter_component_playground/common/formvalidator/name_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/phone_number_validator.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

@freezed
abstract class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(NameValidator.pure()) NameValidator name,
    @Default(PasswordValidator.pure()) PasswordValidator password,
    @Default(PasswordValidator.pure()) PasswordValidator confirmPassword,
    @Default(PhoneNumberValidator.pure()) PhoneNumberValidator phoneNumber,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus formValidationStatus,
    @Default(false) bool isErrorVisible,
    @Default(false) bool isPrivacyPolicyAccepted,
    @Default('') String registrationErrorMessage,
  }) = _RegistrationState;
}
