import 'package:bedaya/screens/Clinics/DentalClinicScreen.dart';
import 'package:bedaya/screens/Clinics/DremaClinic.Dart.dart';
import 'package:bedaya/screens/Clinics/IMClinicScreen.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/screens/Clinics/ENTclinicScreen.dart';
import '../../widgets/appbar.dart';
import '../../widgets/my_button.dart';
import 'CardiologyClinicSreen.dart';
import 'GynClinicScreen.dart';
import 'OphthaClinicScreen.dart';
import 'OrthoClinicScreen.dart';
import 'PediatricsClinicScreen.dart';
import 'SurgeryClinicScreen.dart';

class ClinicScreenChose extends StatefulWidget {
  static const String screenRoute = 'ClinicScreenChose';

  const ClinicScreenChose({Key? key}) : super(key: key);

  @override
  State<ClinicScreenChose> createState() => _ClinicScreenChoseState();
}

class _ClinicScreenChoseState extends State<ClinicScreenChose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: appBardefult(
            data: 'Add Clinic',
            icon: Icon(Icons.menu),
          ),
          preferredSize: Size(100, 50),
        ),
      body: SingleChildScrollView(child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/logo png.png', height: 150 , width: 100,),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Chose Clinic',
                    style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 18,),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'IM',
                      onPressed: () {
                       Navigator.pushNamed(context, ClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'Cardio',
                      onPressed: () {
                        Navigator.pushNamed(context, CardioScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'Surgery',
                      onPressed: () {
                       Navigator.pushNamed(context,  SurgeryClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'Ophthalmology',
                      onPressed: () {
                      Navigator.pushNamed(context, OphthaClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'Obs. &Gyn',
                      onPressed: () {
                      Navigator.pushNamed(context, GynClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'ENT',
                      onPressed: () {
                     Navigator.pushNamed(context, EntClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'Pediatrics',
                      onPressed: () {
                        Navigator.pushNamed(context, PediatricsClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'Derma',
                      onPressed: () {
                    Navigator.pushNamed(context,  DermaClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'Ortho',
                      onPressed: () {
                      Navigator.pushNamed(context, OrthoClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 400,
                    child: mysignin(
                      color: Color.fromARGB(255, 1, 70, 2),
                      size: 25,
                      x: Colors.white,
                      title: 'Dental',
                      onPressed: () {
                        Navigator.pushNamed(context, DentalClinicScreen.screenRoute);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),

            ],
          ),
        ),),
    );
  }
}
