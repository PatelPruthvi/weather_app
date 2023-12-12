import 'package:intl/intl.dart';
import 'package:weather_app/resources/images/image_assets.dart';

class Utilities {
  static Map<dynamic, String> imageMap = {
    "Partially cloudy": ImageAssets.nightRain,
    "Overcast": ImageAssets.sunSlowRain,
    "Clear": ImageAssets.wind,
    "null": ImageAssets.stars
  };

  //returns date in Day, Date and three letters of month format
  static String formateDate(DateTime date) {
    String formatedDate = DateFormat("EEEE d MMM").format(date);
    return formatedDate;
  }

//returns day in 1...31 i.e day fo the month
  static String formattedDayOfTheMonth(String date) {
    DateTime dateTime = DateTime.parse(date);
    String dom = DateFormat('d').format(dateTime);
    return dom;
  }

//returns day as in day of the week for example monday,tuesday,...
  static String formattedDayOfTheWeek(String date) {
    DateTime dateTime = DateTime.parse(date);
    String dow = DateFormat("EEEE").format(dateTime);
    return dow;
  }

  // returns time of day in hh:mm format followed by AM or PM
  static String formattedTime(String time) {
    DateFormat dateFormat = DateFormat("hh:mm a");
    DateTime dateTime = DateTime.parse(time);
    String timeIn12hourFormat = dateFormat.format(dateTime);
    return timeIn12hourFormat;
  }

  static String currentTime() {
    DateFormat dateFormat = DateFormat("hh:mm a");
    DateTime dateTime = DateTime.now();
    String timeIn12hourFormat = dateFormat.format(dateTime);
    return timeIn12hourFormat;
  }

  static String formattedTimeIn24hr(String time) {
    DateFormat dateFormat = DateFormat("hh:mm");
    DateTime dateTime = DateTime.parse(time);
    String timeIn24hourFormat = dateFormat.format(dateTime);
    return timeIn24hourFormat;
  }

  // checks whether parsed arguement time is same as the current time or not
  static bool checkTime(String time) {
    DateFormat dateFormat = DateFormat("hh a");
    DateTime dateTime = DateTime.parse(time);
    DateTime now = DateTime.now();
    return dateFormat.format(dateTime) == dateFormat.format(now);
  }
}
