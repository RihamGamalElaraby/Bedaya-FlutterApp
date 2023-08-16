import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../component/component.dart';
import '../../network/my_database.dart';
import '../../widgets/my_button.dart';
import '../chose team screen/chose1_screen.dart';
class LabCheckin extends StatefulWidget {
  static const String screenRoute = 'LabCheckin';


  const LabCheckin({super.key});

  @override
  State<LabCheckin> createState() => _LabCheckinState();
}

class _LabCheckinState extends State<LabCheckin> {
  TextEditingController codeController = TextEditingController();
  bool blood = false;
  bool stool = false;
  bool urine = false;
  String labChosen = '';

  bool child = false;
  bool adult = false;
  String selectedPatient = "" ;

  List<String> selectedLab = [];
  @override
  Widget build(BuildContext context) {
    PatientAdultModel patientAd = PatientAdultModel();
    PatientChildModel patientCh = PatientChildModel();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 83, 16),
        title: Row(
          children: [
            Image.asset('images/logo png.png', height: 50),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.45,
            ),
            Expanded(
              child: Text(
                'Checkin Lab ',
                style: TextStyle(color: Colors.black),
              ),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            sizedBoxhight(hight: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    width: 270,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        sizedBoxhight(hight: 10),
                        Flexible(
                            flex: 3,
                            child: defultText(
                                data: 'Select patient do u need search for', c: Colors.black,x: 15)),
                        sizedBoxhight(hight: 35),
                        Flexible(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: defultText(
                                      data: 'Child', c: Colors.white)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: child,
                                      onChanged: (val) {
                                        setState(() {
                                          child = val!;
                                          adult = false;
                                          if (val) {
                                            selectedPatient="ch";
                                          }
                                        });
                                      })),
                              Flexible(
                                  flex: 1,
                                  child: defultText(
                                      data: 'Adult', c: Colors.white)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: adult,
                                      onChanged: (val) {
                                        setState(() {
                                          adult = val!;
                                          child= false;
                                          if (val) {
                                            selectedPatient="ad";
                                          }
                                        });
                                      })),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              )
            ],
          ),
          sizedBoxhight(hight: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: defultText(data: 'Search')),
              sizedBoxWidth(width: 20),
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
                  child: Container(
                    width: 100,
                    height: 50,
                    child: mysignin(
                      color: Colors.green,
                      title: 'search',
                      size: 18,
                      onPressed: () {
                        setState(() {});
                        print(codeController.text);
                      },
                    ),
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
                  child:

                  selectedPatient=="ad"? StreamBuilder<QuerySnapshot<PatientAdultModel>>(
                    stream:
                    MyDataBase.getPatientAdult(codeController.text),
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
                        patientAd = snapshot.data!.docs[0].data();
                        print("data ${patientAd.screening}");
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 1000,
                          height: 80,
                          child: Center(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 4,
                                  child: defultText(
                                    data:
                                    "Patient’s Name: ${patientAd.nameAdultPatient}",
                                    c: Colors.black,
                                    x: 19,
                                  ),
                                ),
                                sizedBoxWidth(width: 300),
                                Flexible(
                                  flex: 1,
                                  child: defultText(
                                    data:
                                    'Code: ${patientAd.codeAdultPatient}',
                                    c: Colors.black,
                                    x: 19,
                                  ),
                                ),
                                sizedBoxWidth(width: 50),
                                Flexible(
                                  flex: 1,
                                  child: defultText(
                                    data:
                                    'Sex: ${patientAd.sexAdultPatient}',
                                    c: Colors.black,
                                    x: 19,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  )
                      :  StreamBuilder<QuerySnapshot<PatientChildModel>>(
                    stream:
                    MyDataBase.getPatientChild(codeController.text),
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
                        patientCh = snapshot.data!.docs[0].data();
                        print("data ${patientAd.screening}");
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 1000,
                          height: 80,
                          child: Center(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 4,
                                  child: defultText(
                                    data:
                                    "Patient’s Name: ${patientCh.nameChildPatient}",
                                    c: Colors.black,
                                    x: 19,
                                  ),
                                ),
                                sizedBoxWidth(width: 300),
                                Flexible(
                                  flex: 1,
                                  child: defultText(
                                    data:
                                    'Code: ${patientCh.codeChildPatient}',
                                    c: Colors.black,
                                    x: 19,
                                  ),
                                ),
                                sizedBoxWidth(width: 50),
                                Flexible(
                                  flex: 1,
                                  child: defultText(
                                    data:
                                    'Sex: ${patientCh.sexChildPatient}',
                                    c: Colors.black,
                                    x: 19,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                  )
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)),
            width: 400,
            height: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      sizedBoxhight(hight: 30),
                      defultText(
                          data: 'Check in Patient', c: Colors.white),
                      sizedBoxhight(hight: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                              flex: 1,
                              child: defultText(
                                  data: 'Blood', c: Colors.white)),
                          Flexible(
                              flex: 1,
                              child: Checkbox(
                                  value: blood,
                                  onChanged: (val) {
                                    setState(() {
                                      blood = val!;
                                      if (val) {
                                        selectedLab.add("blood");
                                      } else {
                                        selectedLab.remove("blood");
                                      }
                                    });
                                  })),
                          Flexible(
                              flex: 1,
                              child: defultText(
                                  data: 'Urine', c: Colors.white)),
                          Flexible(
                              flex: 1,
                              child: Checkbox(
                                  value: urine,
                                  onChanged: (val) {
                                    setState(() {
                                      urine = val!;
                                      if (val) {
                                        selectedLab.add("urine");
                                      } else {
                                        selectedLab.remove("urine");
                                      }
                                    });
                                  })),
                          Flexible(
                              flex: 1,
                              child: defultText(
                                  data: 'Stool', c: Colors.white)),
                          Flexible(
                              flex: 1,
                              child: Checkbox(
                                  value: stool,
                                  onChanged: (val) {
                                    setState(() {
                                      stool = val!;
                                      if (val) {
                                        selectedLab.add("stool");
                                      } else {
                                        selectedLab.remove("stool");
                                      }
                                    });
                                  })),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      mysignin(
                        color: Colors.grey,
                        title: "Done",
                        onPressed: () {
                          for (int i = 0; i < selectedLab.length; i++) {
                            if (selectedLab[i] == "urine") {
                              selectedPatient=="ad"? patientAd.urineCheckIn = true : patientCh.urineCheckIn=true;
                            } else if (selectedLab[i] == "stool") {
                              selectedPatient=="ad"? patientAd.stoolCheckIn = true : patientCh.stoolCheckIn = true;
                            } else if (selectedLab[i] == "blood") {
                              selectedPatient=="ad"? patientAd.bloodCheckIn = true : patientCh.bloodCheckIn = true;
                            }
                          }
                          selectedPatient=="ad"? MyDataBase.updatePatientAdult(patientAd) : MyDataBase.updatePatientChild(patientCh);
                          setState(() {
                            blood = false;
                            urine = false;
                            stool = false;
                          });
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Confirm Checkin"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      patientAd.urineCheckIn!
                                          ? "This patient is checked in Urine"
                                          : "This patient not checked in Urine",
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      patientAd.bloodCheckIn!
                                          ? "This patient is checked in Blood"
                                          : "This patient not checked in Blood",
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      patientAd.stoolCheckIn!
                                          ? "This patient is checked in Stool"
                                          : "This patient not checked in Stool",
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Close the dialog
                                    },
                                    child: Text("Done"),
                                  ),
                                ],
                              );
                            },
                          );
                          print(selectedLab);
                          selectedLab.clear();
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

        ],),
      ),
    );
  }
}
