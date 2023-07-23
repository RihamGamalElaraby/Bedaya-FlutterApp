import 'package:flutter/material.dart';
import 'package:bedaya/login%20and%20register/signin_screen.dart';
import 'package:bedaya/login%20and%20register/registration_screen.dart';

import 'package:bedaya/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcomescreen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      'ويبقي الاثر',
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
                color: Color.fromARGB(255, 8, 68, 9),
                x: Colors.white,
                title: 'sign in',
                onPressed: () {
                  Navigator.pushNamed(context, SignInScreen.screenRoute);
                },
              ),
              mysignin(
                color: Color.fromARGB(255, 255, 255, 255),
                x: Colors.black,
                title: 'register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.screenRoute);
                },
              )
            ]),
          )),
    );
  }
}
