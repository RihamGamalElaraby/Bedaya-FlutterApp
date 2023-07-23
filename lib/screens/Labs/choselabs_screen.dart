import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab_screen.dart';
import 'package:bedaya/screens/Labs/urine%20lab/UrineLab_screen.dart';
import 'package:bedaya/screens/chose%20team%20screen/chose1_screen.dart';
import 'package:bedaya/screens/Labs/stool%20lab/stool_lab.dart';
import 'package:flutter/material.dart';
import '../../widgets/my_button.dart';

class ChoseLabsScreen extends StatefulWidget {
  static const String screenRoute = 'choselabs_screen';
  const ChoseLabsScreen({super.key});

  @override
  State<ChoseLabsScreen> createState() => _ChoseLabsScreenState();
}

class _ChoseLabsScreenState extends State<ChoseLabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 83, 16),
          title: Row(
            children: [
              Image.asset('images/logo png.png', height: 75),
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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                ),
                Container(
                  child: Image.asset('images/logo png.png'),
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                ),
                Center(
                  child: Text(
                    'Chose your team',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
            ),
            mysignin(
              color: Color.fromARGB(255, 1, 70, 2),
              title: 'Urine',
              onPressed: () {
                Navigator.pushNamed(context, urineLabscreen.screenRoute);
              },
            ),
            mysignin(
              color: Color.fromARGB(255, 1, 70, 2),
              title: 'Stool',
              onPressed: () {
                Navigator.pushNamed(context, stoolLab.screenRoute);
              },
            ),
            mysignin(
              color: Color.fromARGB(255, 1, 70, 2),
              title: 'Blood',
              onPressed: () {
                Navigator.pushNamed(context, bloodLabScreen.screenRoute);
              },
            )
          ]),
        ));
  }
}
