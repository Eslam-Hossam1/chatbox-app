import 'package:chatbox_app/core/errors/api_failure.dart';
import 'package:chatbox_app/core/usecases/usecase.dart';
import 'package:chatbox_app/features/otp/domain/entities/otp_reason.dart';
import 'package:chatbox_app/features/otp/domain/entities/otp_result.dart';
import 'package:chatbox_app/features/otp/domain/repos/otp_repo.dart';
import 'package:dartz/dartz.dart';

class VerifyOtpUsecase
    implements Usecase<ApiFailure, OtpResult, VerifyOtpParams> {
  final OtpRepo _otpRepo;

  VerifyOtpUsecase({required OtpRepo otpRepo}) : _otpRepo = otpRepo;
  @override
  Future<Either<ApiFailure, OtpResult>> call(VerifyOtpParams params) async {
   return await _otpRepo.verifyOtp(
      otpReason: params.otpReason,
      pinCode: params.pinCode,
    );
  }
}

class VerifyOtpParams {
  final String pinCode;
  final OtpReason otpReason;

  VerifyOtpParams({required this.pinCode, required this.otpReason});
}
