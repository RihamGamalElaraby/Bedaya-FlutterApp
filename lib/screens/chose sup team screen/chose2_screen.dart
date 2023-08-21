import 'package:bedaya/followup/Followupchoseclnic.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_checkup.dart';
import 'package:bedaya/screens/adult%20checkup/adult_dash.dart';
import 'package:bedaya/screens/children%20checkup/Children_checkup.dart';
import 'package:bedaya/screens/Clinics/ClinicScreenChose.dart';
import 'package:bedaya/screens/Clinics/IMClinicScreen.dart';
import 'package:bedaya/screens/children%20checkup/child_dash.dart';
import 'package:bedaya/screens/pharmacy/PharmacyScreen.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/screens/Labs/choselabs_screen.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:bedaya/screens/welcome%20screen/welcomescreen.dart';

import '../../Screening/ChoseScreningScreen.dart';
import '../followUp_Screen.dart';

class Chose2_Screen extends StatefulWidget {
  static const String screenRoute = 'chose2_screen';

  const Chose2_Screen({super.key});

  @override
  State<Chose2_Screen> createState() => _Chose2_ScreenState();
}

class _Chose2_ScreenState extends State<Chose2_Screen> {
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
                Navigator.pushNamed(context, WelcomeScreen.screenRoute);
              },
              icon: Icon(Icons.close),
            )
          ],
        ),
        backgroundColor: Colors.white,
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
                        'Chose Your sub-team today',
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
                  title: 'Check-up Adult',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdultDash(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: mysignin(
                  color: Color.fromARGB(255, 1, 70, 2),
                  size: 25,
                  x: Colors.white,
                  title: 'Check-up Children',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChildDash(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: mysignin(
                  color: Color.fromARGB(255, 1, 70, 2),
                  size: 25,
                  x: Colors.white,
                  title: 'Labs',
                  onPressed: () {
                    Navigator.pushNamed(context, ChoseLabsScreen.screenRoute);
                  },
                ),
              ),
              Expanded(
                child: mysignin(
                  color: Color.fromARGB(255, 1, 70, 2),
                  size: 25,
                  x: Colors.white,
                  title: 'Pharmcy',
                  onPressed: () {
                    Navigator.pushNamed(context, PharmacyScreen.screenRoute);
                  },
                ),
              ),
              Expanded(
                child: mysignin(
                  color: Color.fromARGB(255, 1, 70, 2),
                  size: 25,
                  x: Colors.white,
                  title: 'Clinic',
                  onPressed: () {
                    Navigator.pushNamed(context,  ClinicScreenChose.screenRoute);
                  },
                ),
              ),
              Expanded(
                child: mysignin(
                  color: Color.fromARGB(255, 1, 70, 2),
                  size: 25,
                  x: Colors.white,
                  title: 'FollowUp',
                  onPressed: () {
                    Navigator.pushNamed(context, FollowupchosseClinic.screenRoute);
                  },
                ),
              ),
              Expanded(
                child: mysignin(
                  color: Color.fromARGB(255, 1, 70, 2),
                  size: 25,
                  x: Colors.white,
                  title: 'Screnning',
                  onPressed: () {
                    Navigator.pushNamed(context, ChoseScreningScreen.screenRoute);
                  },
                ),
              ),

            ]),
            ));
    }
}