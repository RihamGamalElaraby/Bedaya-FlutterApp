
import 'package:bedaya/component/component.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab2_Screen.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/widgets/my_button.dart';

import 'BloodlabScreen2.dart';

class bloodLabScreen extends StatefulWidget {
  static const String screenRoute = 'bloodLabScreen';

  const bloodLabScreen({super.key});

  @override
  State<bloodLabScreen> createState() => _bloodLabScreenState();
}

class _bloodLabScreenState extends State<bloodLabScreen> {
  // final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Blood Lab',
          icon: Icon(Icons.menu),
          function: () => {},
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    width: 1000,
                    height: 80,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 4,
                            child: defultText(
                                data: "Patient’s Name:",
                                c: Colors.black,
                                x: 17),
                          ),
                          sizedBoxWidth(width: 300),
                          Flexible(
                              flex: 1,
                              child: defultText(
                                  data: 'Code:', c: Colors.black, x: 17)),
                          sizedBoxWidth(width: 50),
                          Flexible(
                              flex: 1,
                              child: defultText(
                                  data: 'Sex:', c: Colors.black, x: 17)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
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
                      child: defultText(data: 'CBC', c: Colors.black, x: 18),
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
                      child:
                      defultText(data: 'WBC', c: Colors.white, x: 18),
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
                      defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                      defultText(data: 'Lymph#', c: Colors.white, x: 18),
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
                      defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                      defultText(data: 'Mid#', c: Colors.white, x: 18),
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
                      defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                      defultText(data: 'Gran#', c: Colors.white, x: 18),
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
                      defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                      defultText(data: 'Lymph% H', c: Colors.white, x: 18),
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
                      defultText(data: '%', c: Colors.white, x: 18),
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
                      defultText(data: 'Mid %', c: Colors.white, x: 18),
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
                      defultText(data: '%', c: Colors.white, x: 18),
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
                      defultText(data: 'Gran% L', c: Colors.white, x: 18),
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
                      defultText(data: '%', c: Colors.white, x: 18),
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
                      defultText(data: 'RBC', c: Colors.white, x: 18),
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
                      defultText(data: '10^6/ul', c: Colors.white, x: 18),
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
                      defultText(data: 'HGB L', c: Colors.white, x: 18),
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
                      defultText(data: 'g/dl', c: Colors.white, x: 18),
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
                      defultText(data: 'HCT L', c: Colors.white, x: 18),
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
                      defultText(data: '%', c: Colors.white, x: 18),
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
                      defultText(data: 'MCV L', c: Colors.white, x: 18),
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
                      defultText(data: 'fL', c: Colors.white, x: 18),
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
                      defultText(data: 'MCH L', c: Colors.white, x: 18),
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
                      defultText(data: 'pg', c: Colors.white, x: 18),
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
                      defultText(data: 'MCHC', c: Colors.white, x: 18),
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
                      defultText(data: 'g/dl', c: Colors.white, x: 18),
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
                      defultText(data: 'RDW.CV ', c: Colors.white, x: 18),
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
                      defultText(data: '%', c: Colors.white, x: 18),
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
                      defultText(data: 'RDW.SD L', c: Colors.white, x: 18),
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
                      defultText(data: 'fL', c: Colors.white, x: 18),
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
                      defultText(data: 'PLT H', c: Colors.white, x: 18),
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
                      defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                      defultText(data: 'MPV', c: Colors.white, x: 18),
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
                      defultText(data: 'fL', c: Colors.white, x: 18),
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
                      defultText(data: 'PDW', c: Colors.white, x: 18),
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
                      defultText(data: '-', c: Colors.white, x: 18),
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
                      defultText(data: 'PCT', c: Colors.white, x: 18),
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
                      defultText(data: '%', c: Colors.white, x: 18),
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
                      defultText(data: 'P-LCC L', c: Colors.white, x: 18),
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
                      defultText(data: '10^9/l', c: Colors.white, x: 18),
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
                      defultText(data: 'P-LCR L', c: Colors.white, x: 18),
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
                      defultText(data: '-', c: Colors.white, x: 18),
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
                      child: defultText(data: 'ESR', c: Colors.black, x: 18),
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
                      child: defultText(
                          data: 'References', c: Colors.black, x: 18),
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
                          data: 'M:<13 / F:<20 mm/hr', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Lipid Profile', c: Colors.black, x: 18),
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
                      child:
                      defultText(data: 'Cholesterol', c: Colors.white, x: 18),
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
                      defultText(data: '<200 mg/dl', c: Colors.white, x: 18),
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
                      defultText(data: 'TG', c: Colors.white, x: 18),
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
                      defultText(data: '35-160 mg/dl', c: Colors.white, x: 18),
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
                      defultText(data: 'HDL', c: Colors.white, x: 18),
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
                      defultText(data: '>60 mg/dl', c: Colors.white, x: 18),
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
                      defultText(data: 'LDL', c: Colors.white, x: 18),
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
                      defultText(data: '<100 mg/dl', c: Colors.white, x: 18),
                    ),
                  ),
                ),
              ],
            ),











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
                          context, Bloodlaponecontiunue.screenRoute)
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
