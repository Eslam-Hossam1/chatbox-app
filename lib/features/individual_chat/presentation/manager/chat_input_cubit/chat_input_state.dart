part of 'chat_input_cubit.dart';

sealed class ChatInputState {
  const ChatInputState();
}

final class ChatInputNotTyping extends ChatInputState {
  const ChatInputNotTyping();
}

final class ChatInputTyping extends ChatInputState {
  const ChatInputTyping();
}
