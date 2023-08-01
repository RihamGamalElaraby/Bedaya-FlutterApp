import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab_screen.dart';
import 'package:bedaya/screens/Labs/choselabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:bedaya/component/component.dart';

import '../../../DateModels/PatientAdultModel.dart';
import '../../../network/my_database.dart';

// import 'package:bedaya/widgets/appbar.dart';
// import 'wi';

class bloodLabContinueScreen extends StatefulWidget {
  static const String screenRoute = 'bloodLabContinueScreen';

  const bloodLabContinueScreen({super.key});

  @override
  State<bloodLabContinueScreen> createState() => _bloodLabContinueScreenState();
}
bool yesCheckBlood = false;
bool noCheckBlood = false;
String checkBlood = "";

String bloodotherBHCG = '';
String bloodotherHBV = '';
String bloodotherHCV = '';
String bloodotherAlfafetoprotein = '';
String bloodotherPSA = '';
String bloodotherAntiD = '';
String bloodotherRheumatoidfactor = '';




bool bloodotherHBVpos = false ;
bool bloodotherHBVneg = false ;

bool bloodotherHCVpos = false ;
bool bloodotherHCVneg = false ;

bool bloodotherAlfafetoproteinpos = false ;
bool bloodotherAlfafetoproteinneg = false ;

bool bloodotherPSApos = false ;
bool bloodotherPSAneg = false ;

bool bloodotherBHCGpos = false ;
bool bloodotherBHCGneg = false ;

bool bloodotherAntiDpos = false ;
bool bloodotherAntiDneg = false ;

bool bloodotherRheumatoidfactorpos = false ;
bool bloodotherRheumatoidfactorneg = false ;

class _bloodLabContinueScreenState extends State<bloodLabContinueScreen> {

  TextEditingController bloodotherCRP =TextEditingController();
  TextEditingController bloodotherASOT =TextEditingController();

  TextEditingController bloodkidneyCreatinine =TextEditingController();

  TextEditingController bloodkidneyurea =TextEditingController();


  TextEditingController bloodkidneyUricacid =TextEditingController();


  TextEditingController bloodionsK =TextEditingController();


  TextEditingController bloodionsCa =TextEditingController();


  TextEditingController bloodionsNa =TextEditingController();


  TextEditingController bloodglucoseRandom =TextEditingController();


  TextEditingController bloodglucoseFasting =TextEditingController();


  TextEditingController bloodglucoseHbA1C =TextEditingController();


  TextEditingController bloodglucosePostPrandial =TextEditingController();


  @override
  Widget build(BuildContext context) {
    PatientAdultModel? patient = ModalRoute.of(context)?.settings.arguments as PatientAdultModel?;

    return Scaffold(
        appBar: PreferredSize(
          child: appBardefult(
            context: context,
            data: 'Blood Lab',
            icon: Icon(Icons.menu),
          ),
          preferredSize: Size(100, 50),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
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
                          child: defultText(
                              data: 'Kidney Function tests',
                              c: Colors.black,
                              x: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxhight(hight: 40),
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
                          child: defultText(
                              data: 'Creatinine', c: Colors.white, x: 18),
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
                                controller: bloodkidneyCreatinine,
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
                          child: defultText(
                              data: '0.5-1.4 mg/dl', c: Colors.white, x: 18),
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
                          child: defultText(data: 'Urea', c: Colors.white, x: 18),
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
                                controller: bloodkidneyurea,
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
                          child: defultText(
                              data: '15 - 45 mg/dl', c: Colors.white, x: 18),
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
                          defultText(data: 'Uric acid', c: Colors.white, x: 18),
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
                                controller: bloodkidneyUricacid,
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
                          defultText(data: '<40 U/L', c: Colors.white, x: 18),
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
                          child: defultText(data: 'Ions', c: Colors.black, x: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxhight(hight: 40),
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
                          child: defultText(data: 'K+', c: Colors.white, x: 18),
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
                                controller: bloodionsK,
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
                          child: defultText(
                              data: '3.4 - 5.5 mEq/', c: Colors.white, x: 18),
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
                          child: defultText(data: 'Ca++', c: Colors.white, x: 18),
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
                                controller: bloodionsCa,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            defultText(
                                data: 'Up to 12 year:8.8-12mg/dl',
                                c: Colors.white,
                                x: 15),
                            defultText(
                                data: 'Adults:8.8-10.5mg/dl',
                                c: Colors.white,
                                x: 15),
                          ],
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
                          child: defultText(data: ' Na+', c: Colors.white, x: 18),
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
                                controller:  bloodionsNa,
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
                          child: defultText(
                              data: '135 - 155 mEq/l', c: Colors.white, x: 18),
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
                          child:
                          defultText(data: 'Glucose', c: Colors.black, x: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxhight(hight: 40),
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
                          child: defultText(data: 'Random', c: Colors.white, x: 18),
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
                                controller: bloodglucoseRandom,
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
                          child: defultText(
                              data: '60-110 mg/d', c: Colors.white, x: 18),
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
                          defultText(data: 'Fasting', c: Colors.white, x: 18),
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
                                controller: bloodglucoseFasting,
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
                          child: defultText(
                              data: 'Less than 100 mg/dl', c: Colors.white, x: 15),
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
                          child: defultText(
                              data: 'Post Prandial', c: Colors.white, x: 18),
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
                                controller: bloodglucosePostPrandial,
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
                          child: defultText(
                              data: 'Less than 140 mg/dl', c: Colors.white, x: 18),
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
                          child: defultText(data: 'HbA1C', c: Colors.white, x: 18),
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
                                controller: bloodglucoseHbA1C,
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
                          child: defultText(data: '-', c: Colors.white, x: 18),
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
                          child: defultText(data: 'Others', c: Colors.black, x: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxhight(hight: 40),
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
                          child: defultText(data: 'HBV', c: Colors.white, x: 18),
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
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 30),
                              Flexible(flex: 1, child: defultText(data: '+VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherHBVpos , onChanged: (val) {
                                    setState(() {
                                      bloodotherHBVpos =val! ;
                                      bloodotherHBVneg = false ;
                                    });
                                    if (val!) {
                                      bloodotherHBV= "+VE";
                                    } else {
                                      bloodotherHBV = "-VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                              Flexible(flex: 1, child: defultText(data: '-VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherHBVneg , onChanged: (val) {
                                    setState(() {
                                      bloodotherHBVneg =val! ;
                                      bloodotherHBVpos = false ;
                                    });
                                    if (val!) {
                                      bloodotherHBV= "-VE";
                                    } else {
                                      bloodotherHBV = "+VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                            ],
                          ),),
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
                          child: defultText(data: '-', c: Colors.white, x: 18),
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
                          child: defultText(data: 'HCV', c: Colors.white, x: 18),
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
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 30),
                              Flexible(flex: 1, child: defultText(data: '+VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherHCVpos , onChanged: (val) {
                                    setState(() {
                                      bloodotherHCVpos =val! ;
                                      bloodotherHCVneg = false ;
                                    });
                                    if (val!) {
                                      bloodotherHCV= "+VE";
                                    } else {
                                      bloodotherHCV = "-VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                              Flexible(flex: 1, child: defultText(data: '-VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherHCVneg , onChanged: (val) {
                                    setState(() {
                                      bloodotherHCVneg =val! ;
                                      bloodotherHCVpos = false ;
                                    });
                                    if (val!) {
                                      bloodotherHCV= "-VE";
                                    } else {
                                      bloodotherHCV = "+VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                            ],
                          ),),
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
                          child: defultText(data: '-', c: Colors.white, x: 18),
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
                          child: defultText(
                              data: 'Alfa fetoprotein', c: Colors.white, x: 18),
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
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 30),
                              Flexible(flex: 1, child: defultText(data: '+VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherAlfafetoproteinpos , onChanged: (val) {
                                    setState(() {
                                      bloodotherAlfafetoproteinpos =val! ;
                                      bloodotherAlfafetoproteinneg = false ;
                                    });
                                    if (val!) {
                                      bloodotherAlfafetoprotein= "+VE";
                                    } else {
                                      bloodotherAlfafetoprotein = "-VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                              Flexible(flex: 1, child: defultText(data: '-VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherAlfafetoproteinneg , onChanged: (val) {
                                    setState(() {
                                      bloodotherAlfafetoproteinneg =val! ;
                                      bloodotherAlfafetoproteinpos = false ;
                                    });
                                    if (val!) {
                                      bloodotherAlfafetoprotein= "-VE";
                                    } else {
                                      bloodotherAlfafetoprotein = "+VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                            ],
                          ),),
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
                          child: defultText(data: '-', c: Colors.white, x: 18),
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
                          child: defultText(data: 'PSA', c: Colors.white, x: 18),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 30),
                              Flexible(flex: 1, child: defultText(data: '+VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherPSApos , onChanged: (val) {
                                    setState(() {
                                      bloodotherPSApos =val! ;
                                      bloodotherPSAneg = false ;
                                    });
                                    if (val!) {
                                      bloodotherPSA= "+VE";
                                    } else {
                                      bloodotherPSA = "-VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                              Flexible(flex: 1, child: defultText(data: '-VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherPSAneg , onChanged: (val) {
                                    setState(() {
                                      bloodotherPSAneg =val! ;
                                      bloodotherPSApos = false ;
                                    });
                                    if (val!) {
                                      bloodotherPSA= "-VE";
                                    } else {
                                      bloodotherPSA = "+VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                            ],
                          ),),
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
                          child: defultText(data: '-', c: Colors.white, x: 18),
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
                          child: defultText(data: 'B HCG', c: Colors.white, x: 18),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 30),
                              Flexible(flex: 1, child: defultText(data: '+VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherBHCGpos , onChanged: (val) {
                                    setState(() {
                                      bloodotherBHCGpos =val! ;
                                      bloodotherBHCGneg = false ;
                                    });
                                    if (val!) {
                                      bloodotherBHCG= "+VE";
                                    } else {
                                      bloodotherBHCG = "-VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                              Flexible(flex: 1, child: defultText(data: '-VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherBHCGneg , onChanged: (val) {
                                    setState(() {
                                      bloodotherBHCGneg =val! ;
                                      bloodotherBHCGpos = false ;
                                    });
                                    if (val!) {
                                      bloodotherBHCG= "-VE";
                                    } else {
                                      bloodotherBHCG = "+VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                            ],
                          ),),
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
                          child: defultText(data: '-', c: Colors.white, x: 18),
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
                          child: defultText(data: 'Anti D', c: Colors.white, x: 18),
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
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 30),
                              Flexible(flex: 1, child: defultText(data: '+VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherAntiDpos , onChanged: (val) {
                                    setState(() {
                                      bloodotherAntiDpos =val! ;
                                      bloodotherAntiDneg = false ;
                                    });
                                    if (val!) {
                                      bloodotherAntiD= "+VE";
                                    } else {
                                      bloodotherAntiD = "-VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                              Flexible(flex: 1, child: defultText(data: '-VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherAntiDneg , onChanged: (val) {
                                    setState(() {
                                      bloodotherAntiDneg =val! ;
                                      bloodotherAntiDpos = false ;
                                    });
                                    if (val!) {
                                      bloodotherAntiD= "-VE";
                                    } else {
                                      bloodotherAntiD = "+VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                            ],
                          ),),
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
                          child: defultText(data: '-', c: Colors.white, x: 18),
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
                          child: defultText(
                              data: 'Rheumatoid factor', c: Colors.white, x: 18),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 30),
                              Flexible(flex: 1, child: defultText(data: '+VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherRheumatoidfactorpos , onChanged: (val) {
                                    setState(() {
                                      bloodotherRheumatoidfactorpos =val! ;
                                      bloodotherRheumatoidfactorneg = false ;
                                    });
                                    if (val!) {
                                      bloodotherRheumatoidfactor= "+VE";
                                    } else {
                                      bloodotherRheumatoidfactor = "-VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                              Flexible(flex: 1, child: defultText(data: '-VE')),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(value: bloodotherRheumatoidfactorneg , onChanged: (val) {
                                    setState(() {
                                      bloodotherRheumatoidfactorneg =val! ;
                                      bloodotherRheumatoidfactorpos = false ;
                                    });
                                    if (val!) {
                                      bloodotherRheumatoidfactor= "-VE";
                                    } else {
                                      bloodotherRheumatoidfactor = "+VE";
                                    }
                                  },)),
                              sizedBoxWidth(width: 20),
                            ],
                          ),),
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
                          child: defultText(data: '-', c: Colors.white, x: 18),
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
                          child: defultText(data: 'ASOT', c: Colors.white, x: 18),
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
                                controller: bloodotherASOT,
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
                          child: defultText(
                              data: 'Less than 200', c: Colors.white, x: 18),
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
                          child: defultText(data: 'CRP', c: Colors.white, x: 18),
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
                                controller: bloodotherCRP,
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
                          child: defultText(
                              data: 'Less than 6', c: Colors.white, x: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxhight(hight: 40),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(10)),
                  width: 400,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                          flex: 1,
                          child: defultText(
                              data: 'Checked out :', x: 17, c: Colors.white)),
                      sizedBoxWidth(width: 10),
                      Flexible(
                          flex: 1,
                          child: defultText(data: 'Yes', x: 17, c: Colors.white)),
                      sizedBoxWidth(width: 5),
                      Flexible(
                          flex: 1,
                          child: Checkbox(
                              value: yesCheckBlood,
                              onChanged: (val) {
                                setState(() {
                                  yesCheckBlood = val!;
                                  noCheckBlood = false;
                                });
                                if (val!) {
                                  checkBlood = "yes";
                                }
                              })),
                      sizedBoxWidth(width: 10),
                      Flexible(
                          flex: 1,
                          child: defultText(data: 'No', x: 17, c: Colors.white)),
                      Flexible(
                          flex: 1,
                          child: CheckboxListTile(
                              value: noCheckBlood,
                              onChanged: (val) {
                                setState(() {
                                  noCheckBlood = val!;
                                  yesCheckBlood = false;
                                });
                                if (val!) {
                                  checkBlood = "no";
                                }
                              })),
                      sizedBoxWidth(width: 10),
                    ],
                  ),
                ),
                sizedBoxhight(hight: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&Done',
                      size: 25,
                      onPressed: () {
                        if(checkBlood=="yes"){
                          patient?.bloodCheckIn = false;
                        }

                        patient?.bloodkidneyUricacid =bloodkidneyUricacid.text ;
                        patient?.bloodkidneyurea =bloodkidneyurea.text ;
                        patient?.bloodkidneyCreatinine =bloodkidneyCreatinine.text ;
                        patient?.bloodionsNa = bloodionsNa.text;
                        patient?.bloodionsK = bloodionsK.text;
                        patient?.bloodionsCa =bloodionsCa.text ;
                        patient?.bloodglucoseRandom =bloodglucoseRandom.text ;
                        patient?.bloodglucosePostPrandial =bloodglucosePostPrandial.text ;
                        patient?.bloodglucoseFasting =bloodglucoseFasting.text ;
                        patient?.bloodglucoseHbA1C =bloodglucoseHbA1C.text ;
                        patient?.bloodotherRheumatoidfactor =bloodotherRheumatoidfactor ;
                        patient?.bloodotherPSA = bloodotherPSA;
                        patient?.bloodotherCRP = bloodotherCRP.text;
                        patient?.bloodotherASOT =bloodotherASOT.text ;
                        patient?.bloodotherAlfafetoprotein =bloodotherAlfafetoprotein ;
                        patient?.bloodotherAntiD =bloodotherAntiD ;
                        patient?.bloodotherBHCG =bloodotherBHCG ;
                        patient?.bloodotherHBV =bloodotherHBV ;
                        patient?.bloodotherHCV =bloodotherHCV ;
                        MyDataBase.updatePatientAdult(patient!);
                        Navigator.pushNamed(context, ChoseLabsScreen.screenRoute);
                      },
                    ),
                    sizedBoxWidth(width: 20),
                    mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&BacktoEdit',
                      size: 25,
                      onPressed: () => {
                        Navigator.pushNamed(context, bloodLabScreen.screenRoute)
                      },
                    ),
                    sizedBoxWidth(width: 20),
                    mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&addNewOne',
                      size: 25,
                      onPressed: () => {
                        Navigator.pushNamed(
                            context, bloodLabContinueScreen.screenRoute)
                      },
                    ),
                  ],
                ),
                sizedBoxhight(hight: 40),
              ],
            ),
            ),
        );
    }
}