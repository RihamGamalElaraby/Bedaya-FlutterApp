import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab_screen.dart';
import 'package:bedaya/screens/Labs/choselabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:bedaya/component/component.dart';

// import 'package:bedaya/widgets/appbar.dart';
// import 'wi';

class bloodLabContinueScreen extends StatefulWidget {
  static const String screenRoute = 'bloodLabContinueScreen';

  const bloodLabContinueScreen({super.key});

  @override
  State<bloodLabContinueScreen> createState() => _bloodLabContinueScreenState();
}

class _bloodLabContinueScreenState extends State<bloodLabContinueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Blood Lab',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sizedBoxhight(hight: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Kidney Function tests',
                          c: Colors.black,
                          x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Test name', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Results', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Reference', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Creatinine', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: '0.5-1.4 mg/dl', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'Urea', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: '15 - 45 mg/dl', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Uric acid', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: '<40 U/L', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: defultText(data: 'Ions', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Test name', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Results', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Reference', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'K+', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: '3.4 - 5.5 mEq/', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'Ca++', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defultText(
                            data: 'Up to 12 year:8.8-12mg/dl',
                            c: Colors.white,
                            x: 15),
                        defultText(
                            data: 'Adults:8.8-10.5mg/dl',
                            c: Colors.white,
                            x: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: ' Na+', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: '135 - 155 mEq/l', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child:
                          defultText(data: 'Glucose', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Test name', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Results', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Reference', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'Random', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: '60-110 mg/d', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Fasting', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Less than 100 mg/dl', c: Colors.white, x: 15),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Post Prandial', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Less than 140 mg/dl', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'HbA1C', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: '-', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: defultText(data: 'Others', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Test name', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Results', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Reference', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'HBV', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: '-', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'HBV', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: '-', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Alfa fetoprotein', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: '-', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'PSA', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: '-', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'B HCG', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: '-', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'Anti D', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: '-', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Rheumatoid factor', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: '-', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'ASOT', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Less than 200', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'CRP', c: Colors.white, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 50, width: 250)),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Less than 6', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mysignin(
                  color: Colors.green,
                  x: Colors.black,
                  title: 'Save&Done',
                  size: 25,
                  onPressed: () => {
                    Navigator.pushNamed(context, ChoseLabsScreen.screenRoute)
                  },
                ),
                sizedBoxWidth(width: 20),
                mysignin(
                  color: Colors.green,
                  x: Colors.black,
                  title: 'Save&BacktoEdit',
                  size: 25,
                  onPressed: () => {
                    Navigator.pushNamed(context, bloodLabScreen.screenRoute)
                  },
                ),
                sizedBoxWidth(width: 20),
                mysignin(
                  color: Colors.green,
                  x: Colors.black,
                  title: 'Save&addNewOne',
                  size: 25,
                  onPressed: () => {
                    Navigator.pushNamed(
                        context, bloodLabContinueScreen.screenRoute)
                  },
                ),
              ],
            ),
            sizedBoxhight(hight: 40),
          ],
        ),
      ),
    );
  }
}
