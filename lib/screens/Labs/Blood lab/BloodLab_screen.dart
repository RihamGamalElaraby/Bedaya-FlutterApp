import 'package:bedaya/component/component.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab2_Screen.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/widgets/my_button.dart';

import '../../../DateModels/PatientAdultModel.dart';
import '../../../network/my_database.dart';
import 'BloodlabScreen2.dart';

class bloodLabScreen extends StatefulWidget {
  static const String screenRoute = 'bloodLabScreen';

  @override
  State<bloodLabScreen> createState() => _bloodLabScreenState();
}

class _bloodLabScreenState extends State<bloodLabScreen> {

  TextEditingController bloodCbcWbs = TextEditingController();
  TextEditingController bloodCbcLymph = TextEditingController();
  TextEditingController bloodCbcMid = TextEditingController();
  TextEditingController bloodCbcGran = TextEditingController();
  TextEditingController bloodCbcLymphH = TextEditingController();
  TextEditingController bloodCbcGranL = TextEditingController();
  TextEditingController bloodCbcMidPercent = TextEditingController();
  TextEditingController bloodCbcRbc = TextEditingController();
  TextEditingController bloodCbcHgbl = TextEditingController();
  TextEditingController bloodCbcHctl = TextEditingController();
  TextEditingController bloodCbcMcvl = TextEditingController();
  TextEditingController bloodCbcMchl = TextEditingController();
  TextEditingController bloodCbcMchc = TextEditingController();
  TextEditingController bloodCbcRdwcv = TextEditingController();
  TextEditingController bloodCbcRdwsdl = TextEditingController();
  TextEditingController bloodCbcPlth = TextEditingController();
  TextEditingController bloodCbcMpv = TextEditingController();
  TextEditingController bloodCbcPdw = TextEditingController();
  TextEditingController bloodCbcPct = TextEditingController();
  TextEditingController bloodCbcPlccl = TextEditingController();
  TextEditingController bloodCbcPlcrl = TextEditingController();
  TextEditingController bloodEsr = TextEditingController();
  TextEditingController bloodLipidLdl = TextEditingController();
  TextEditingController bloodLipidTg = TextEditingController();
  TextEditingController bloodLipidHdl = TextEditingController();
  TextEditingController bloodLipidCholesterol = TextEditingController();

  TextEditingController codeController = TextEditingController();
  late PatientAdultModel patient;

  // final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(context: context,
          data: 'Blood Lab',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
            sizedBoxhight(hight: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: codeController,
                  decoration: InputDecoration(
                    // t3aly ne3ml gmbha text button awel ma yedos 3leh ye search
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            sizedBoxWidth(width: 20),
            Flexible(
                child: mysignin(
                  color: Colors.green,
                  title: 'search',
                  onPressed: () {
                    setState(() {});
                  },
                ))
          ],
        ),
        sizedBoxhight(hight: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                flex: 1,
                child: StreamBuilder<QuerySnapshot<PatientAdultModel>>(
                  stream: MyDataBase.getPatient(codeController.text),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData ||
                        snapshot.data!.docs.isEmpty) {
                      return Text('No patient data found!');
                    } else {
                      // Access the first patient from the query snapshot
                      //   List<PatientAdultModel> patientList =
                      //       snapshot.data?.docs.map((e) => e.data()).toList() ?? [];
                      patient = snapshot.data!.docs[0].data();

                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 1000,
                        height: 120,
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: defultText(
                                      data:
                                      "Patient’s Name: ${patient
                                          .nameAdultPatient}",
                                      c: Colors.black,
                                      x: 19,
                                    ),
                                  ),
                                  sizedBoxWidth(width: 300),
                                  Flexible(
                                    flex: 1,
                                    child: defultText(
                                      data:
                                      'Code: ${patient.codeAdultPatient}',
                                      c: Colors.black,
                                      x: 19,
                                    ),
                                  ),
                                  sizedBoxWidth(width: 50),
                                  Flexible(
                                    flex: 1,
                                    child: defultText(
                                      data:
                                      'Sex: ${patient.sexAdultPatient}',
                                      c: Colors.black,
                                      x: 19,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: defultText(
                                      data: patient.bloodCheckIn!
                                          ? "Blood’s Check in : This patient is still checked in"
                                          : "Blood’s Check in : This patient checked out or not already chicked in ",
                                      c: Colors.black,
                                      x: 19,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  },
                )),
          ],
        ),
        sizedBoxhight(hight: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 70,
                width: 400,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 193, 191, 191),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: defultText(data: 'CBC', c: Colors.black, x: 18),
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
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 14, 64, 15),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child:
                  defultText(data: 'WBC', c: Colors.white, x: 18),
                ),
              ),
            ),
            sizedBoxWidth(width: 20),
            Flexible(
              flex: 1,
              child: Container(
                height: 70,
                width: 350,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 193, 191, 191),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                    child: defultTextField(
                        controller: bloodCbcWbs,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
              ),
            ),
            sizedBoxWidth(width: 20),
            Flexible(
              flex: 1,
              child: Container(
                height: 70,
                width: 350,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 14, 64, 15),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child:
                  defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 14, 64, 15),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child:
                  defultText(data: 'Lymph#', c: Colors.white, x: 18),
                ),
              ),
            ),
            sizedBoxWidth(width: 20),
            Flexible(
              flex: 1,
              child: Container(
                height: 70,
                width: 350,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 193, 191, 191),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                    child: defultTextField(controller: bloodCbcLymph,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
              ),
            ),
            sizedBoxWidth(width: 20),
            Flexible(
              flex: 1,
              child: Container(
                height: 70,
                width: 350,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 14, 64, 15),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child:
                  defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 14, 64, 15),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child:
                  defultText(data: 'Mid#', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcMid,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                  defultText(data: 'Gran#', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcGran,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                  defultText(data: 'Lymph% H', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcLymphH,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '%', c: Colors.white, x: 18),
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
                  defultText(data: 'Mid %', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcMidPercent,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '%', c: Colors.white, x: 18),
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
                  defultText(data: 'Gran% L', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcGranL,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '%', c: Colors.white, x: 18),
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
                  defultText(data: 'RBC', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcRbc,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '10^6/ul', c: Colors.white, x: 18),
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
                  defultText(data: 'HGB L', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcHgbl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: 'g/dl', c: Colors.white, x: 18),
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
                  defultText(data: 'HCT L', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcHctl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '%', c: Colors.white, x: 18),
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
                  defultText(data: 'MCV L', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcMcvl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: 'fL', c: Colors.white, x: 18),
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
                  defultText(data: 'MCH L', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcMchl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: 'pg', c: Colors.white, x: 18),
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
                  defultText(data: 'MCHC', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcMchc,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: 'g/dl', c: Colors.white, x: 18),
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
                  defultText(data: 'RDW.CV ', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcRdwcv,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '%', c: Colors.white, x: 18),
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
                  defultText(data: 'RDW.SD L', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcRdwsdl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: 'fL', c: Colors.white, x: 18),
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
                  defultText(data: 'PLT H', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcPlth,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '10^3/ul', c: Colors.white, x: 18),
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
                  defultText(data: 'MPV', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcMpv,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: 'fL', c: Colors.white, x: 18),
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
                  defultText(data: 'PDW', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcPdw,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '-', c: Colors.white, x: 18),
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
                  defultText(data: 'PCT', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcPct,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '%', c: Colors.white, x: 18),
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
                  defultText(data: 'P-LCC L', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcPlccl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '10^9/l', c: Colors.white, x: 18),
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
                  defultText(data: 'P-LCR L', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodCbcPlcrl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '-', c: Colors.white, x: 18),
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
                  child: defultText(data: 'ESR', c: Colors.black, x: 18),
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
                width: 400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 193, 191, 191),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child:
                  defultText(data: 'Results', c: Colors.black, x: 18),
                ),
              ),
            ),
            sizedBoxWidth(width: 100),
            Flexible(
              flex: 1,
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 193, 191, 191),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child: defultText(
                      data: 'References', c: Colors.black, x: 18),
                ),
              ),
            ),
          ],
        ),
        sizedBoxhight(hight: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 70,
                width: 400,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 193, 191, 191),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                    child: defultTextField(controller: bloodEsr,
                        max: 4,
                        text: 'result',
                        hight: 70,
                        width: 300)),
              ),
            ),
            sizedBoxWidth(width: 100),
            Flexible(
              flex: 1,
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 14, 64, 15),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child: defultText(
                      data: 'M:<13 / F:<20 mm/hr', c: Colors.white, x: 18),
                ),
              ),
            ),
          ],
        ),
        sizedBoxhight(hight: 30),
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
                      data: 'Lipid Profile', c: Colors.black, x: 18),
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
                  child:
                  defultText(data: 'Cholesterol', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodLipidCholesterol,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '<200 mg/dl', c: Colors.white, x: 18),
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
                  defultText(data: 'TG', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodLipidTg,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '35-160 mg/dl', c: Colors.white, x: 18),
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
                  defultText(data: 'HDL', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodLipidHdl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '>60 mg/dl', c: Colors.white, x: 18),
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
                  defultText(data: 'LDL', c: Colors.white, x: 18),
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
                    child: defultTextField(controller: bloodLipidLdl,
                        max: 4,
                        text: 'result',
                        hight: 50,
                        width: 250)),
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
                  defultText(data: '<100 mg/dl', c: Colors.white, x: 18),
                ),
              ),
            ),
          ],
        ),


        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Center(
        child: mysignin(
        color: Colors.green,
            x: Colors.black,
            title: 'Save&Continue',
            size: 25,
            onPressed: () {
            patient.bloodCbcWbs=bloodCbcWbs.text ;
            patient.bloodCbcLymph= bloodCbcLymph.text;
            patient.bloodCbcMid=bloodCbcMid.text;
            patient.bloodCbcGran=bloodCbcGran.text;
            patient.bloodCbcLymphH=bloodCbcLymphH.text;
            patient.bloodCbcGranL=bloodCbcGranL.text;
            patient.bloodCbcMidPercent=bloodCbcMidPercent.text;
            patient.bloodCbcRbc=bloodCbcRbc.text;
            patient.bloodCbcHgbl=bloodCbcHgbl.text;
            patient.bloodCbcHctl=bloodCbcHctl.text;
            patient.bloodCbcMcvl=bloodCbcMcvl.text;
            patient.bloodCbcMchl=bloodCbcMchl.text;
            patient.bloodCbcMchc=bloodCbcMchc.text;
            patient.bloodCbcRdwcv=bloodCbcRdwcv.text;
            patient.bloodCbcRdwsdl=bloodCbcRdwsdl.text;
            patient.bloodCbcPlth=bloodCbcPlth.text;
            patient.bloodCbcMpv=bloodCbcMpv.text;
            patient.bloodCbcPdw=bloodCbcPdw.text;
            patient.bloodCbcPct=bloodCbcPct.text;
            patient.bloodCbcPlccl=bloodCbcPlccl.text;
            patient.bloodCbcPlcrl=bloodCbcPlcrl.text;
            patient.bloodEsr=bloodEsr.text;
            patient.bloodLipidLdl=bloodLipidLdl.text;
            patient.bloodLipidTg=bloodLipidTg.text;
            patient.bloodLipidHdl=bloodLipidHdl.text;
            patient.bloodLipidCholesterol=bloodLipidCholesterol.text;
            MyDataBase.updatePatientAdult(patient);
            Navigator.pushNamed(
            context, Bloodlaponecontiunue.screenRoute,arguments: patient);
        },
      ),
    )],
    )
    ],
    ),
    ),
    );
  }
}
