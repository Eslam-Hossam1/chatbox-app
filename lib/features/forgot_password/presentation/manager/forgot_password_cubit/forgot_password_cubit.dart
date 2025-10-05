import '../../../domain/params/forgot_password_params.dart';
import '../../../domain/usecases/forgot_password_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordUsecase forgotPasswordUseCase;

  ForgotPasswordCubit({required this.forgotPasswordUseCase})
      : super(const ForgotPasswordInitial());

  String email = '';

  Future<void> forgotPassword() async {
    emit(ForgotPasswordLoading());

    final result = await forgotPasswordUseCase.call(
      ForgotPasswordParams(
        email: email,
      ),
    );

    result.fold(
      (failure) {
        emit(ForgotPasswordFailure(errMessage: failure.errMsg));
      },
      (success) => emit(ForgotPasswordSuccess()),
    );
  }
}
