import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CHelperFuntions {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else {
      return null;
    }
  }

  static DateTime combineDateTime(DateTime date) {
    final combinedDateTime = DateTime(
      date.year,
      date.month,
      date.day,
      date.hour,
      date.minute,
      date.second,
    );
    return combinedDateTime;
  }

  static DateTime filterDate(DateTime date) {
    // final now = DateTime(date.year, date.month, date.day, date.hour,
    //     date.minute, date.second, date.millisecond, date.microsecond);
    final combinedDateTime = DateTime(
      date.year,
      date.month,
      date.day,
      23,
      59,
      59,
    );
    return combinedDateTime;
  }

  
  static String removeNonIntegers(String input) {
    return input.replaceAll(RegExp(r'[^0-9]'), '');
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static String convertNumberToWords(int number) {
    if (number == 0) return 'Zero Rupees Only';

    final units = [
      '',
      'One',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Eleven',
      'Twelve',
      'Thirteen',
      'Fourteen',
      'Fifteen',
      'Sixteen',
      'Seventeen',
      'Eighteen',
      'Nineteen',
    ];

    final tens = [
      '',
      '',
      'Twenty',
      'Thirty',
      'Forty',
      'Fifty',
      'Sixty',
      'Seventy',
      'Eighty',
      'Ninety',
    ];

    String convertBelowThousand(int num) {
      String result = '';
      if (num >= 100) {
        result += '${units[num ~/ 100]} Hundred ';
        num %= 100;
      }
      if (num > 0) {
        if (num < 20) {
          result += '${units[num]} ';
        } else {
          result += '${tens[num ~/ 10]} ';
          if (num % 10 > 0) {
            result += '${units[num % 10]} ';
          }
        }
      }
      return result.trim();
    }

    final parts = [10000000, 100000, 1000, 1];
    final partNames = ['Crore', 'Lakh', 'Thousand', ''];

    String result = '';
    for (int i = 0; i < parts.length; i++) {
      int partValue = number ~/ parts[i];
      if (partValue > 0) {
        result += '${convertBelowThousand(partValue)} ${partNames[i]} ';
        number %= parts[i];
      }
    }

    return '${result.trim()} Rupees Only';
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static String getFormattedDate(
    DateTime date, {
    String format = 'dd MMM yyyy',
  }) {
    return DateFormat(format).format(date);
  }

  static removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static double convertTextToDoubleSafely(String text) {
    try {
      double? number = double.tryParse(text);
      if (number != null) {
        return number;
      } else {
        return 0.00;
      }
    } catch (e) {
      return 0.00;
    }
  }

  static convertTextToIntSafely(String text) {
    try {
      int? number = int.tryParse(text);
      if (number != null) {
        return number;
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }

  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
        i,
        i + rowSize > widgets.length ? widgets.length : i + rowSize,
      );
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }

  static bool isBankCashActiveIsInTransaction(String amount) {
    double amountConverted = CHelperFuntions.convertTextToDoubleSafely(amount);
    if (amountConverted <= 0) {
      return false;
    }
    return true;
  }

  static DateTime convertDateFromJson(dynamic value) {
    if (value == null) return DateTime.now();
    if (isIso8601(value)) {
      return DateTime.parse(value);
    } else {
      return DateTime.fromMillisecondsSinceEpoch(int.tryParse(value) ?? 0);
    }
  }

  static bool isIso8601(String value) {
    final iso8601Regex = RegExp(
      r"^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(\.\d+)?Z$",
    );
    return iso8601Regex.hasMatch(value);
  }

  static int? converBoolToInt(dynamic value) {
    if (value == null) return 0;
    if (value == true) return 1;
    if (value == false) return 0;
    if (value == 1) return 1;
    if (value == 0) return 0;

    return 0;
  }

  static double? parseToDouble(dynamic value) {
    if (value == null) return null;

    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value);

    return null;
  }

  static int? parseToInt(dynamic value) {
    if (value == null) return null;
    if (value is bool) return value ? 1 : 0;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) return int.tryParse(value);

    return null;
  }
}
