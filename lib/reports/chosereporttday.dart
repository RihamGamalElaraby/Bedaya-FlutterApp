import 'package:bedaya/reports/reportday2.dart';
import 'package:bedaya/reports/reportday3.dart';
import 'package:bedaya/reports/reportday4.dart';
import 'package:bedaya/reports/reportday5.dart';
import 'package:bedaya/reports/reporttotal.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/screens/chose team screen/chose1_screen.dart';
import '../component/component.dart';
import '../widgets/my_button.dart';
import 'package:bedaya/screens/chose sup team screen/chose2_screen.dart';

import 'reportday1.dart';
class chosedayreport extends StatefulWidget {
  static const String screenRoute = "chosedayreport";

  const chosedayreport({super.key});

  @override
  State<chosedayreport> createState() => _chosedayreportState();
}

class _chosedayreportState extends State<chosedayreport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Reports',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        // leading:IconButton(onPressed: ()
        //                    // { Navigator.pushNamed(context, chose2_screen.screenRoute );},
        //     icon: Icon(Icons.close)),
        leading:   IconButton(onPressed: () {
          Navigator.pushNamed(context, Chose1_Screen.screenRoute);
        }, icon: Icon(Icons.close)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.print)),
          IconButton(onPressed: () {}, icon: Icon(Icons.file_download)),
          sizedBoxWidth(width: 60)
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Container(
                    child: Image.asset('images/logo png.png'),
                    height: 200,
                    width: 200,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Chose day',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 30,
            ),
            Expanded(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                size: 25,
                x: Colors.white,
                title: 'Day 1',
                onPressed: () {
                Navigator.pushNamed(context, reportday1.screenRoute);
                },
              ),
            ),
            Expanded(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                size: 25,
                x: Colors.white,
                title: 'Day 2',
                onPressed: () {
                 Navigator.pushNamed(context, reportday2.screenRoute);
                },
              ),
            ),
            Expanded(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                size: 25,
                x: Colors.white,
                title: 'Day 3',
                onPressed: () {
                  Navigator.pushNamed(context, reportday3.screenRoute);
                },
              ),
            ),
            Expanded(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                size: 25,
                x: Colors.white,
                title: 'Day 4',
                onPressed: () {
                  Navigator.pushNamed(context, reportday4.screenRoute);
                },
              ),
            ),
            Expanded(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                size: 25,
                x: Colors.white,
                title: 'Day 5',
                onPressed: () {
                  Navigator.pushNamed(context,  reportday5.screenRoute);
                },
              ),
            ),
            Expanded(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                size: 25,
                x: Colors.white,
                title: 'Total',
                onPressed: () {
                  Navigator.pushNamed(context, reporttotal.screenRoute);
                },
              ),
            ),

          ]),
        ));


  }
}
