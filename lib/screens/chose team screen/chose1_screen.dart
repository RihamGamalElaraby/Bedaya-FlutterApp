import 'package:bedaya/screens/welcome%20screen/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/screens/chat%20screens/chat_screen.dart';
import 'package:bedaya/screens/chose%20sup%20team%20screen/chose2_screen.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../dashboard/dashboard.dart';

class Chose1_Screen extends StatefulWidget {
  static const String screenRoute = 'chose1_screen';

  const Chose1_Screen({super.key});

  @override
  State<Chose1_Screen> createState() => _Chose1_ScreenState();
}

class _Chose1_ScreenState extends State<Chose1_Screen> {
  @override
  final _auth = FirebaseAuth.instance;
  late User sigenedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        sigenedInUser = user;
        print(sigenedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  _auth.signOut();
                  Navigator.pushNamed(context, WelcomeScreen.screenRoute);
                },
                icon: Icon(Icons.close),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
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
                        'Choose your team',
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
                  x: Colors.white,
                  title: 'Data Base',
                  onPressed: () {
                    Navigator.pushNamed(context, Chose2_Screen.screenRoute);
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                mysignin(
                  color: Color.fromARGB(255, 1, 70, 2),
                  x: Colors.white,
                  title: 'DashBoard',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, DashboaedfirstScreen.screenRoute);
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                mysignin(
                  color: Color.fromARGB(255, 255, 255, 255),
                  x: Colors.black,
                  title: 'Other Teams',
                  onPressed: () {
                    Navigator.pushNamed(context, CahtScreen.screenRoute);
                  },
                )
              ]),
            ),
          )),
    );
  }
}
