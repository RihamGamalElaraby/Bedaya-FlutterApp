import 'package:bedaya/screens/children%20checkup/Children_checkup.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:bedaya/widgets/my_button.dart';

class childrenContinue extends StatefulWidget {
  static const String screenRoute = 'childrenContinue';
  const childrenContinue({super.key});

  @override
  State<childrenContinue> createState() => _childrenContinueState();
}

class _childrenContinueState extends State<childrenContinue> {
  bool Day1 = false;
  bool Day2 = false;
  bool Day3 = false;
  bool Day4 = false;
  bool Day5 = false;
  bool Male = false;
  bool Female = false;
  bool married = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Children Checkup',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'Family History:')),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'DM:')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1, child: defultTextField(text: 'DM', width: 100)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'HTN')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1, child: defultTextField(text: 'HTN', width: 100)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Similar Condition')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 2,
                    child:
                        defultTextField(text: 'Similar Condition', width: 100)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Genetic Disease')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child:
                        defultTextField(text: 'Genetic Disease', width: 100)),
                sizedBoxWidth(width: 10),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'Past History:')),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Medical')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 2,
                    child: defultTextField(text: 'Medical', width: 200)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Allergy')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 2,
                    child: defultTextField(text: 'Allergy', width: 200)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'ICU')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 2, child: defultTextField(text: 'ICU', width: 200)),
                sizedBoxWidth(width: 10),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Surgical')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 2,
                    child: defultTextField(text: 'Surgical', width: 200)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Blood Transfusion')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 2,
                    child:
                        defultTextField(text: 'Blood Transfusion', width: 200)),
                sizedBoxWidth(width: 10),
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
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Immunization History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Up To Date', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Delayed', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 4,
                                  child: defultText(
                                      data: 'Didn’t Receive Any Vaccinations',
                                      x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
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
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Dietetic History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Breast Feeding', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Artificial Feeding', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Combined', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Weaned', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
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
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Developmental History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 2000,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child:
                                      defultText(data: 'Gross Motor', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Gross Motor', width: 170)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child:
                                      defultText(data: 'Fine Motor ', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Fine Motor', width: 170)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Language', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Language', width: 170)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Social', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Social', width: 170)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Sphincters', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Sphincters', width: 170)),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Antenatal History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 2000,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'STORCH', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'STORCH', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Disease', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Disease', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child:
                                      defultText(data: 'Irradiation', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Irradiation', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Teratogenic Drugs', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Teratogenic Drugs', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Hospitalization', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Hospitalization', width: 200)),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Natal History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 3,
                                  child: defultText(
                                      data: 'Premature Rupture Of Membranes',
                                      x: 14)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Prolonged Delivery', x: 14)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Place:', x: 15)),
                              sizedBoxWidth(width: 3),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Home', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Hospital', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
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
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Neonatal History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 2000,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'NICU', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'NICU', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Cyanosis', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Cyanosis', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Jaundice', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Jaundice', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Pallor', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Pallor', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child:
                                      defultText(data: 'Convulsions', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(
                                      text: 'Convulsions', width: 200)),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'General Examination',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Vital Data', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1500,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'HR:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'HR',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'RR:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'RR',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'BP:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'BP',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  // width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // sizedBoxhight(hight: 10),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Spo2:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'Spo2',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Temp:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'Temp',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'CRT:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'CRT',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'RBS:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'RBS',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  // width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // sizedBoxhight(hight: 10),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Hb:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'Hb',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Complexions', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 1500,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 80,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Pallor:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 2,
                                          child: defultTextField(
                                              text: 'Pallor:',
                                              hight: 60,
                                              width: 250))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Jaundice:')),
                                      Flexible(
                                        flex: 2,
                                        child: defultTextField(
                                            text: 'Jaundice',
                                            hight: 60,
                                            width: 250),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Cyanosis:')),
                                      sizedBoxWidth(width: 10),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Central')),
                                      Flexible(
                                          flex: 1,
                                          child: Checkbox(
                                              value: Day1,
                                              onChanged: (val) {})),
                                      Flexible(
                                          flex: 1,
                                          child:
                                              defultText(data: 'Peripheral')),
                                      Flexible(
                                        flex: 1,
                                        child: Checkbox(
                                            value: Day1, onChanged: (val) {}),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Anthropometry', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1500,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Weight:')),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 3,
                                          child: defultTextField(
                                              text: 'Weight',
                                              hight: 60,
                                              width: 300)),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'kg')),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Height:')),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 3,
                                          child: defultTextField(
                                              text: 'Height',
                                              hight: 60,
                                              width: 300)),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'cm')),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'OFC:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 4,
                                          child: defultTextField(
                                              text: 'OFC',
                                              hight: 60,
                                              width: 300)),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'cm')),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              // Flexible(
                              //   child: Container(
                              //     // width: 350,
                              //     height: 50,
                              //     decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(10),
                              //       color: Colors.white,
                              //     ),
                              //     child: Row(
                              //       mainAxisAlignment: MainAxisAlignment.center,
                              //       crossAxisAlignment:
                              //           CrossAxisAlignment.center,
                              //       children: [
                              //         // sizedBoxhight(hight: 10),
                              //         sizedBoxWidth(width: 10),
                              //         Flexible(
                              //             flex: 1,
                              //             child: defultText(data: 'Spo2:')),
                              //         sizedBoxWidth(width: 10),
                              //         Flexible(
                              //             flex: 1,
                              //             child: defultTextField(
                              //                 text: 'Spo2',
                              //                 hight: 60,
                              //                 width: 300))
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(
                                              data: 'Weight for Age:')),
                                      sizedBoxhight(hight: 2),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'Weight for Age',
                                              hight: 60,
                                              width: 100))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(
                                              data: 'Height for Age:')),
                                      sizedBoxhight(hight: 2),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'Height for Age',
                                              hight: 60,
                                              width: 100))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(
                                              data: 'Weight for Height:')),
                                      sizedBoxhight(hight: 2),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                              text: 'Weight for Height',
                                              hight: 60,
                                              width: 100))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  // width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // sizedBoxhight(hight: 10),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 2,
                                          child: defultText(data: 'Deformity')),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Yes')),
                                      Flexible(
                                          flex: 1,
                                          child: Checkbox(
                                              value: Day1,
                                              onChanged: (val) {})),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'NO')),
                                      Flexible(
                                          flex: 1,
                                          child: Checkbox(
                                              value: Day1,
                                              onChanged: (val) {})),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'Local Examination',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 140,
                    width: 20,
                    // padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    height: 140,
                    width: 1700,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 14, 64, 15),
                    ),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 1400,
                        // padding: EdgeInsets.symmetric(vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: defultTextField(
                          text: 'Local Examination',
                          hight: 100,
                          max: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 140,
                    width: 20,
                    // padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Cardiac Examination', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1700,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 14, 64, 15),
                    ),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 1200,
                        // padding: EdgeInsets.symmetric(vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: defultTextField(
                          text: 'Cardiac Examination',
                          hight: 100,
                          max: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Chest Examination', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1700,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 14, 64, 15),
                    ),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 1200,
                        // padding: EdgeInsets.symmetric(vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: defultTextField(
                          text: 'Chest Examination',
                          hight: 100,
                          max: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Abdominal Examination',
                          x: 18,
                          c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1700,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 14, 64, 15),
                    ),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 1200,
                        // padding: EdgeInsets.symmetric(vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: defultTextField(
                          text: 'Abdominal Examination',
                          hight: 100,
                          max: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ), //end
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'Referral To Other Clinics',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Flexible(
                //     flex: 1,
                //     child: defultText(
                //       data: 'IM',
                //     )),
                // Flexible(
                //     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 1,
                    child: defultText(
                      data: 'ENT',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 2,
                    child: defultText(
                      data: 'Ophthalmology',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 2,
                    child: defultText(
                      data: 'Dermatology',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 1,
                    child: defultText(
                      data: 'Cardio',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 1,
                    child: defultText(
                      data: 'Dental',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                sizedBoxWidth(width: 7),
                Flexible(
                  flex: 1,
                  child: defultText(
                    data: 'Other',
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(flex: 2, child: defultTextField(text: 'other')),
                // Flexible(
                //     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                // sizedBoxWidth(width: 7),
                // Flexible(
                //     flex: 1,
                //     child: defultText(
                //       data: 'Ortho',
                //     )),
                // Flexible(
                //     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                // sizedBoxWidth(width: 7),
                // Flexible(
                //     flex: 1,
                //     child: defultText(
                //       data: 'Dental',
                //     )),
                // Flexible(
                //     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              ],
            ),
            sizedBoxhight(hight: 30),
            // sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'Follow up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'YES', x: 12)),
                Flexible(
                    flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                sizedBoxWidth(width: 5),
                Flexible(flex: 1, child: defultText(data: 'NO', x: 12)),
                Flexible(
                    flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mysignin(
                  color: Colors.green,
                  x: Colors.white,
                  title: 'Save&Done',
                  size: 25,
                  onPressed: () => {
                    Navigator.pushNamed(context, childrenCheckup.screenRoute)
                  },
                ),
                sizedBoxWidth(width: 20),
                mysignin(
                  color: Colors.green,
                  x: Colors.white,
                  title: 'Save&BacktoEdit',
                  size: 25,
                  onPressed: () => {
                    Navigator.pushNamed(context, childrenCheckup.screenRoute)
                  },
                ),
                sizedBoxWidth(width: 20),
                mysignin(
                  color: Colors.green,
                  x: Colors.white,
                  title: 'Save&GotoFollowup',
                  size: 25,
                  onPressed: () => {
                    // Navigator.pushNamed(
                    //     context, continueCheckupAdult.screenRoute)
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
