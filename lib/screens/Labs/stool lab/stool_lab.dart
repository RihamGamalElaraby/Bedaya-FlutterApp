import 'dart:html';

import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/widgets/my_button.dart';

import '../../../widgets/text_Filed.dart';

class stoolLab extends StatefulWidget {
  static const String screenRoute = 'stoolLab';

  const stoolLab({super.key});

  @override
  State<stoolLab> createState() => _stoolLabState();
}

class _stoolLabState extends State<stoolLab> {
   bool Formed = true;
   bool semiformed = false ;
   bool loose = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Stool Lab',
          icon: Icon(Icons.menu),
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
                      child: defultText(
                          data: 'Stool Analysis', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizedBoxWidth(width: 40),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defultText(
                            data: 'Physical data :', c: Colors.black, x: 18),
                        Icon(
                          Icons.arrow_downward_rounded,
                          color: Color.fromARGB(255, 2, 61, 4),
                          size: 40.0,
                        ),
                      ],
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
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Consistency:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       sizedBoxWidth(width: 30),
                       Flexible(flex: 1, child: defultText(data: 'Formed')),
                       Flexible(
                           flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                       sizedBoxWidth(width: 20),
                       Flexible(flex: 1, child: defultText(data: 'Semi formed')),
                       Flexible(
                           flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                       sizedBoxWidth(width: 20),
                       Flexible(flex: 1, child: defultText(data: 'Loose')),
                       Flexible(
                           flex: 1, child: Checkbox(value: loose, onChanged: (val) {})),
                     ],
                      // defultText(data: 'Reference', c: Colors.black, x: 18),
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
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Blood:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),

                      ],
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
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Mucus:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Color:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultTextField(
                        text: 'Result', width: 250
                      ),
                    )
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
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Worm:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            text: 'Result', width: 250
                        ),
                      )
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
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Odour:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            text: 'Result', width: 250
                        ),
                      )
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizedBoxWidth(width: 40),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defultText(
                            data: 'Microscopic data:', c: Colors.black, x: 18),
                        Icon(
                          Icons.arrow_downward_rounded,
                          color: Color.fromARGB(255, 2, 61, 4),
                          size: 40.0,
                        ),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Fasciola:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Sch. Mansoni:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'H.nana:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Tinea:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Ascaris:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'T.trichuria:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Hook worm:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Entrobious:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'E.coli:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'E.histolitica:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Giardia:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Strongyloides larvae:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Giardia trophozozite:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'E.histolitica trophozite:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: Formed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1, child: Checkbox(value: semiformed, onChanged: (val) {})),
                        sizedBoxWidth(width: 20),
                      ],
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
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Wbcs:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            text: 'Result', width: 250
                        ),
                      )
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
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Rbcs:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            text: 'Result', width: 250
                        ),
                      )
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
                  child: mysignin(
                    color: Colors.green,
                    x: Colors.black,
                    title: 'Save&Done',
                    size: 25,
                    onPressed: () =>
                        {Navigator.pushNamed(context, stoolLab.screenRoute)},
                  ),
                ),
                sizedBoxWidth(width: 20),
                // mysignin(
                //   color: Colors.green,
                //   x: Colors.black,
                //   title: 'Save&BacktoEdit',
                //   size: 25,
                //   onPressed: () =>
                //       {Navigator.pushNamed(context, stoolLab.screenRoute)},
                // ),
                // // sizedBoxWidth(width: 20),
                // mysignin(
                //   color: Colors.green,
                //   x: Colors.black,
                //   title: 'Save&addNewOne',
                //   size: 25,
                //   onPressed: () =>
                //       {Navigator.pushNamed(context, stoolLab.screenRoute)},
                // ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
