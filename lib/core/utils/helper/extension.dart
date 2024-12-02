part of 'helper.dart';

extension NumberFormatter on int {
  String get moneyFormat {
    var moneyFormatter = NumberFormat("###,###,000");
    if (toInt() == 0) {
      return "0";
    }
    return moneyFormatter.format(toInt());
  }

  String get toTwoDigits {
    if (toString().length > 1) {
      return "$this";
    }
    return "0$this";
  }
}

extension DateFormatter on DateTime {
  String get toRegularDateFormat => DateFormat('dd MMMM yyyy', 'id-ID').format(this);
  String get toRegularDateAndTimeFormat => DateFormat('dd MMMM yyyy, HH:mm', 'id-ID').format(this);
  String get toRegularDayDateTimeFormat => DateFormat('EEEE, dd MMMM yyyy HH:mm', 'id-ID').format(this);
  String get getTime => DateFormat('HH:mm:s', 'id-ID').format(this);
  String get toHourMinute => DateFormat('HH:mm', 'id-ID').format(this);
  String get toIsoString {
    int hourTimeZoneOffset = timeZoneOffset.inHours;
    return "${DateFormat("yyyy-MM-ddTHH:mm:ss").format(this)}${hourTimeZoneOffset.isNegative ? "-" : "+"}${hourTimeZoneOffset.toTwoDigits}00";
  }
}

extension Margin on num {
  Widget get margin => Gap(toDouble());
}

extension HexColor on String {
  Color get toColor {
    String color = replaceAll("#", "");

    if (color.length == 6) {
      color = "FF$color";
    }

    return Color(int.parse(color, radix: 16));
  }
}

extension ConvertStringToNumExtension on String {
  double get toDouble => double.parse(this);
  int get toInt => int.parse(this);
}

extension ScreenSize on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}

bool get isDarkMode => PlatformDispatcher.instance.platformBrightness == Brightness.dark;
