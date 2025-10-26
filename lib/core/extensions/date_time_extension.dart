import 'package:intl/intl.dart';

extension DateTimeChatBubbleFormat on DateTime {
  String formatAsBubbleTime() {
    // Example output: 12:45 PM
    return DateFormat('h:mm a').format(this);
  }
}
