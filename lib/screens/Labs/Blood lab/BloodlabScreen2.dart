
import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab2_Screen.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodlabScreen2.dart';

import '../../../component/component.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/text_Filed.dart';

class Bloodlaponecontiunue extends StatefulWidget {
  static const String screenRoute = 'Bloodlaponecontiunue';

  const Bloodlaponecontiunue({Key? key}) : super(key: key);

  @override
  State<Bloodlaponecontiunue> createState() => _BloodlaponecontiunueState();
}

class _BloodlaponecontiunueState extends State<Bloodlaponecontiunue> {
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
      body: Form(child: SingleChildScrollView(

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
                          data: 'Liver Function tests', c: Colors.black, x: 18),
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
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'ALT(GPT)', c: Colors.white, x: 18),
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
            sizedBoxhight(hight: 30),
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
                      defultText(data: 'AST(GOT)', c: Colors.white, x: 18),
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
                      defultText(data: '< 45 U/L', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                          data: ' Alkaline phosphatase',
                          c: Colors.white,
                          x: 18),
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
                          data: '44-147 U/L', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      defultText(data: 'Albumin', c: Colors.white, x: 18),
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
                          data: '3.5 - 5.3 g/dl', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                          data: 'Total bilirubin', c: Colors.white, x: 18),
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
                          data: 'Total bilirubin', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                          data: ' Direct bilirubin', c: Colors.white, x: 18),
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
                          data: '< 0.2 mg/dl', c: Colors.white, x: 18),
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
                      child: defultText(data: 'PT', c: Colors.black, x: 20),
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
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'INR', c: Colors.white, x: 18),
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
                      child: defultText(data: '1', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Time', c: Colors.white, x: 18),
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
                          data: '11-16 second', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: '%', c: Colors.white, x: 25),
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
                      child: defultText(data: '>75%', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 50),
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
                      child: defultText(data: 'PTT', c: Colors.black, x: 18),
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
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Results', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 100),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 400,
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
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 400,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: defultTextField(
                            max: 4, text: 'result', hight: 70, width: 300)),
                  ),
                ),
                sizedBoxWidth(width: 100),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 64, 15),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: '28 - 40 second', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: mysignin(
                    color: Colors.green,
                    x: Colors.black,
                    title: 'Save&Continue',
                    size: 25,
                    onPressed: () => {
                      Navigator.pushNamed(
                          context, bloodLabContinueScreen.screenRoute)
                    },
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
