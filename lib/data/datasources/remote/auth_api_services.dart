import 'package:dio/dio.dart';
import 'package:flutter_component_playground/core/network/network_exception.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/forgot_password_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/login_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/registration_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/verify_otp_api_response.dart';
import 'package:flutter_component_playground/domain/entities/params/registration_params.dart';
import 'package:flutter_component_playground/domain/entities/params/login_params.dart';
import 'package:flutter_component_playground/domain/entities/params/reset_password_params.dart';
import 'package:flutter_component_playground/domain/entities/params/send_otp_params.dart';
import 'package:flutter_component_playground/domain/entities/params/verify_otp_params.dart';

class AuthApiServices {
  final Dio dio;

  AuthApiServices({required this.dio});

  Future<Result<LoginApiResponse>> userLogin(LoginParams params) async {
    try {
      final response = await dio.post("v1/auth/login", data: params.toJson());

      return SuccessResult(LoginApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }

  Future<Result<RegistrationApiResponse>> userRegistration(
    RegistrationParams params,
  ) async {
    try {
      final response = await dio.post("v1/users", data: params.toJson());

      return SuccessResult(RegistrationApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }

  Future<Result<ForgotPasswordApiResponse>> sendOtp(
    SendOtpParams params,
  ) async {
    try {
      final response = await dio.post("v1/send_otp", data: params.toJson());

      return SuccessResult(ForgotPasswordApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }

  Future<Result<ForgotPasswordApiResponse>> resetPassword(
    ResetPasswordParams params,
  ) async {
    try {
      final response =
          await dio.post("v1/reset_password", data: params.toJson());

      return SuccessResult(ForgotPasswordApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }

  Future<Result<VerifyOtpApiResponse>> verifyOtp(
    VerifyOtpParams params,
  ) async {
    try {
      final response = await dio.post("v1/verify_otp", data: params.toJson());

      return SuccessResult(VerifyOtpApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }
}
