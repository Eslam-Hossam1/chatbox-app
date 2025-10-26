import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_input_state.dart';

class ChatInputCubit extends Cubit<ChatInputState> {
  ChatInputCubit() : super(ChatInputNotTyping());

  void startTyping() {
    if (state is! ChatInputTyping) {
      emit(ChatInputTyping());
    }
  }

  void stopTyping() {
    if (state is! ChatInputNotTyping) {
      emit(ChatInputNotTyping());
    }
  }
}
