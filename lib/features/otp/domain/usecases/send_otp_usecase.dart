import 'package:chatbox_app/core/errors/api_failure.dart';
import 'package:chatbox_app/core/usecases/usecase.dart';
import 'package:chatbox_app/features/otp/domain/entities/otp_reason.dart';
import 'package:chatbox_app/features/otp/domain/repos/otp_repo.dart';
import 'package:dartz/dartz.dart';

class SendOtpUsecase implements Usecase<ApiFailure, void, SendOtpParams> {
  final OtpRepo _otpRepo;

  SendOtpUsecase({required OtpRepo otpRepo}) : _otpRepo = otpRepo;
  @override
  Future<Either<ApiFailure, void>> call(SendOtpParams params) async {
    return await _otpRepo.sendOtp(
      otpReason: params.otpReason,
    );
  }
}

class SendOtpParams {
  final OtpReason otpReason;

  SendOtpParams({required this.otpReason});
}
