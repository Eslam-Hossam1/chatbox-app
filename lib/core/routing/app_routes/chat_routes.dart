import '../../../features/chat_rooms/presentation/view/chat_rooms_view.dart';
import '../../../features/individual_chat/presentation/view/individual_chat_view.dart';

import '../routes_paths.dart';
import 'package:go_router/go_router.dart';

class ChatRoutes {
  static GoRoute chatRoomsRoute = GoRoute(
    path: RoutePaths.chatRooms,
    builder: (context, state) => const ChatRoomsView(),
  );
  static GoRoute individualChatRoute = GoRoute(
    path: RoutePaths.individualChat,
    builder: (context, state) => const IndividualChatView(),
  );

  static List<GoRoute> routes = [
    chatRoomsRoute,
    individualChatRoute,
  ];
}
