import 'package:chatbox_app/features/chat_rooms/presentation/view/chat_rooms_view.dart';

import '../routes_paths.dart';
import 'package:go_router/go_router.dart';

class ChatRoomsRoute {
  static GoRoute chatRoomsRoute = GoRoute(
    path: RoutePaths.chatRooms,
    builder: (context, state) => const ChatRoomsView(),
  );

  static List<GoRoute> routes = [
    chatRoomsRoute,
  ];
}
