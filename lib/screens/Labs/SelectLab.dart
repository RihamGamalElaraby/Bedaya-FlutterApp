  import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../widgets/my_button.dart';
import '../chose team screen/chose1_screen.dart';
import 'package:bedaya/screens/Labs/Blood lab/BloodLab_screen.dart';
import 'package:bedaya/screens/Labs/urine lab/UrineLab_screen.dart';
import 'package:bedaya/screens/Labs/stool lab/stool_lab.dart';
class SelectLab extends StatefulWidget {
  static const String screenRoute = 'SelectLab';

  const SelectLab({super.key});

  @override
  State<SelectLab> createState() => _SelectLabState();
}

class _SelectLabState extends State<SelectLab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 83, 16),
          title: Row(
            children: [
              Image.asset('images/logo png.png', height: 50),
              SizedBox(
                width: 10,
              ),
              Text(
                'Great Job',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                // _auth.signOut();
                Navigator.pushNamed(context, Chose1_Screen.screenRoute);
              },
              icon: Icon(Icons.close),
            )
          ],
        ),
      body:    Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 30,
            ),
            Container(
              width: 250,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
                child: Center(child: defultText(data: 'Select Your Lab', c: Colors.black , x: 24))),
            Container(
              child: Image.asset('images/logo png.png'),
              height: 200,
              width: 200,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
            ),
            Flexible(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                title: 'Urine',
                onPressed: () {
                  Navigator.pushNamed(
                      context, urineLabscreen.screenRoute);
                },
              ),
            ),
            sizedBoxWidth(width: 20),
            Flexible(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                title: 'Stool',
                onPressed: () {
                  Navigator.pushNamed(context, stoolLab.screenRoute);
                },
              ),
            ),
            sizedBoxWidth(width: 20),
            Flexible(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                title: 'Blood',
                onPressed: () {
                  Navigator.pushNamed(
                      context, bloodLabScreen.screenRoute);
                },
              ),
            )
          ],
        ),
      ),

    );
  }
}
