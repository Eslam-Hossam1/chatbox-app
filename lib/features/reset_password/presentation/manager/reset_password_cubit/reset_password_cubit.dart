import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/params/reset_password_params.dart';
import '../../../domain/usecases/reset_password_usecase.dart';
import 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordUsecase resetPasswordUseCase;

  ResetPasswordCubit({required this.resetPasswordUseCase})
      : super(const ResetPasswordInitial());

  String email = '';
  String newPassword = '';

  Future<void> resetPassword() async {
    emit(const ResetPasswordLoading());

    final result = await resetPasswordUseCase.call(
      ResetPasswordParams(
        email: email,
        newPassword: newPassword,
      ),
    );

    result.fold(
      (failure) {
        emit(ResetPasswordFailure(errMessage: failure.errMsg));
      },
      (success) => emit(const ResetPasswordSuccess()),
    );
  }
}
