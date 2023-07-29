import 'package:flutter/material.dart';

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
void clearTextField(TextEditingController a,TextEditingController b){
  a.clear();
  b.clear();
}
void clearList(List a,List b){
  a.clear();
  b.clear();
}
// Color.fromARGB(255, 1, 70, 2
// Color(0xFF014602)