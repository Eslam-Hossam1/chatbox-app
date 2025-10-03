import 'package:chatbox_app/core/errors/api_failure.dart';
import 'package:chatbox_app/features/otp/domain/entities/otp_reason.dart';
import 'package:chatbox_app/features/otp/domain/entities/otp_result.dart';
import 'package:dartz/dartz.dart';

abstract interface class OtpRepo{
  Future<Either<ApiFailure, OtpResult>> verifyOtp({
    required OtpReason otpReason,
    required String pinCode,
  });
  Future<Either<ApiFailure, void>> sendOtp({
    required OtpReason otpReason,
  });
}
