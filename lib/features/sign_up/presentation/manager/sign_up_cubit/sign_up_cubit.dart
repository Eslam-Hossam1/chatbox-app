import 'package:chatbox_app/features/sign_up/domain/params/sign_up_params.dart';
import 'package:chatbox_app/features/sign_up/domain/usecases/sign_up_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpUsecase signUpUseCase;

  SignUpCubit({required this.signUpUseCase}) : super(const SignUpInitial());
  String displayName = '';
  String email = '';
  String password = '';
  String username = '';
  Future<void> signUp() async {
    emit(SignUpLoading());

    final result = await signUpUseCase.call(
      SignUpParams(
        displayName: displayName,
        username: username,
        email: email,
        password: password,
      ),
    );

    result.fold(
      (failure) {
        emit(SignUpFailure(failure.errMsg));
      },
      (success) => emit(SignUpSuccess()),
    );
  }
}
