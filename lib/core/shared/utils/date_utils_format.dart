import 'package:easy_localization/easy_localization.dart';

class DateUtilsFormat {
  static DateTime? dateFormatWithTryParse(String? date) {
    if (date == null) return null;
    if (date.isEmpty) return null;
    DateTime format = DateTime.parse(date);
    return format;
  }

  static String convertDateTime(DateTime dateTime) {
    final day = dateTime.day.toString().padLeft(2, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    final year = dateTime.year;
    return '$day.$month.$year';
  }

  static String getTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    final second = dateTime.second.toString().padLeft(2, '0');
    return '$hour:$minute:$second';
  }

  static String convertDateTimeWithTime(DateTime dateTime) {
    final year = dateTime.year;
    final month = dateTime.month.toString().padLeft(2, '0');
    final day = dateTime.day.toString().padLeft(2, '0');
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    final second = dateTime.second.toString().padLeft(2, '0');

    return '$year-$month-$day $hour:$minute:$second';
  }

  static String formatDate(String dateString) {
    if (dateString.isEmpty) {
      return "";
    }
    // Parse the input date string into a DateTime object
    DateTime dateTime = DateTime.parse(dateString);

    // Create a DateFormat object with the desired pattern and locale
    DateFormat formatter = DateFormat('HH:mm', 'ru');

    // Format the date into a string
    String formattedDate = formatter.format(dateTime);

    return formattedDate;
  }
}
