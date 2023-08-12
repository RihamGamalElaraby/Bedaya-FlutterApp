import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

Widget sizedBoxWidth({required double width}) => SizedBox(
      width: width,
    );

Widget sizedBoxhight({required double hight}) => SizedBox(
      height: hight,
    );

Widget defultText({
  required String data,
  double x = 15,
  Color c = Colors.green,
}) =>
    Text(
      '$data',
      style: TextStyle(
        fontSize: x,
        fontWeight: FontWeight.bold,
        color: c,
      ),
    );

void clearTextField(TextEditingController a, TextEditingController b) {
  a.clear();
  b.clear();
}

void clearList(List a, List b) {
  a.clear();
  b.clear();
}

class MyDatetimeUtilies {
  static String formateDate(DateTime dateTime) {
    DateFormat formater = DateFormat("dd/MMM/yyyy");
    return formater.format(dateTime);
  }
}