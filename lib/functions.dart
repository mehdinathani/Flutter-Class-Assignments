import 'package:intl/intl.dart';

String getAgeing(String iDate) {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  DateTime dateTime = dateFormat.parse(iDate);
  DateTime today = DateTime.now();

  Duration duration = today.difference(dateTime);
  int days = duration.inDays;
  // int hours = duration.inHours;
  // int minutes = duration.inMinutes;
  // int seconds = duration.inSeconds;

  String ageing;
  ageing = "${days * (-1)} days";

//   if (days > 0) {
//     ageing = "${days} days";
//   } else if (hours > 0) {
//     ageing = "${hours} hours";
//   } else if (minutes > 0) {
//     ageing = "${minutes} minutes";
//   } else {
//     ageing = "${seconds} seconds";
//   }
// }
  return ageing;
}
