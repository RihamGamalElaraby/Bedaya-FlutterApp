import 'package:bedaya/component/component.dart';
import 'package:bedaya/screens/adult%20checkup/adult_dash.dart';
import 'package:bedaya/screens/children%20checkup/child_dash.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../network/my_database.dart';
import '../../widgets/my_button.dart';
import '../chat screens/chat_screen.dart';

class DashboaedfirstScreen extends StatefulWidget {
  static const String screenRoute = 'dashboardfirst';

  const DashboaedfirstScreen({super.key});

  @override
  State<DashboaedfirstScreen> createState() => _DashboaedfirstScreenState();
}
bool child = false;
bool adult = false;
String selectedPatient = "";
TextEditingController codeController = TextEditingController();
PatientAdultModel patientAd = PatientAdultModel();
PatientChildModel patientCh = PatientChildModel();

class _DashboaedfirstScreenState extends State<DashboaedfirstScreen> {
  @override
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
                        'Choose your Patient to search for',
                        style: TextStyle(
                          fontSize: 25,
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
                  title: 'Adult Patient',
                  onPressed: () {
                    Navigator.pushNamed(context, AdultDash.screenRoute);
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                mysignin(
                  color: Color.fromARGB(255, 1, 70, 2),
                  x: Colors.white,
                  title: 'Child Patient',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, ChildDash.screenRoute);
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
              ]),
            ),
          )),
    );
    }
}