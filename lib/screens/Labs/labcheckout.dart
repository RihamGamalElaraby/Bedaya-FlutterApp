import 'package:bedaya/component/component.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../network/my_database.dart';
import '../../widgets/my_button.dart';
import '../chose team screen/chose1_screen.dart';
class LabCheckout extends StatefulWidget {
  static const String screenRoute = 'LabCheckout';

  const LabCheckout({super.key});

  @override
  State<LabCheckout> createState() => _LabCheckoutState();
}

class _LabCheckoutState extends State<LabCheckout> {
  bool yesCheckstool = false;
  bool noCheckstool = false;
  String checkStool = "";

  bool yesCheckurine = false;
  bool noCheckurine = false;
  String checkUrine = "";


  bool yesCheckBlood = false;
  bool noCheckBlood = false;
  String checkBlood = "";

  TextEditingController codeController = TextEditingController();
  // bool blood = false;
  // bool stool = false;
  // bool urine = false;
  // String labChosen = '';

  bool child = false;
  bool adult = false;
  String selectedPatient = "" ;
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
                'CheckOut Lab ',
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
      body: SingleChildScrollView(child: Column(
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
                          width: MediaQuery.of(context).size.width*0.5,
                          height:  MediaQuery.of(context).size.height*0.15,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
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
                                      sizedBoxWidth(width: 150),
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
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: defultText(
                                        data: patientAd.urineCheckIn!
                                            ? "Urine’s Check in : This patient is still checked in"
                                            : "Urine’s Check in : This patient checked out or not already chicked in ",
                                        c: Colors.black,
                                        x: 19,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: defultText(
                                        data: patientAd.stoolCheckIn!
                                            ? "stool Check In : This patient is still checked in"
                                            : "stool Check In : This patient checked out or not already chicked in ",
                                        c: Colors.black,
                                        x: 19,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: defultText(
                                        data: patientAd.bloodCheckIn!
                                            ? "Blood’s Check in : This patient is still checked in"
                                            : "Blood’s Check in : This patient checked out or not already chicked in ",
                                        c: Colors.black,
                                        x: 19,
                                      ),
                                    ),
                                  ],
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
                          width: MediaQuery.of(context).size.width*0.5,
                          height:  MediaQuery.of(context).size.height*0.15,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
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
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: defultText(
                                        data: patientCh.urineCheckIn!
                                            ? "Urine’s Check in : This patient is still checked in"
                                            : "Urine’s Check in : This patient checked out or not already chicked in ",
                                        c: Colors.black,
                                        x: 19,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: defultText(
                                        data: patientCh.stoolCheckIn!
                                            ? "stool Check In : This patient is still checked in"
                                            : "stool Check In : This patient checked out or not already chicked in ",
                                        c: Colors.black,
                                        x: 19,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: defultText(
                                        data: patientCh.bloodCheckIn!
                                            ? "Blood’s Check in : This patient is still checked in"
                                            : "Blood’s Check in : This patient checked out or not already chicked in ",
                                        c: Colors.black,
                                        x: 19,
                                      ),
                                    ),
                                  ],
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
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Flexible(child:
             Container(
               decoration: BoxDecoration(
                   color: Colors.red, borderRadius: BorderRadius.circular(10)),
               width: 400,
               height: 150,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Flexible(
                       flex: 1,
                       child: defultText(
                           data: 'Checked out Stool:', x: 17, c: Colors.white)),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Flexible(
                           flex: 1,
                           child: defultText(data: 'Yes', x: 17, c: Colors.white)),
                       sizedBoxWidth(width: 50),
                       Flexible(
                           flex: 1,
                           child: Checkbox(
                               value: yesCheckstool,
                               onChanged: (val) {
                                 setState(() {
                                   yesCheckstool = val!;
                                   noCheckstool = false;
                                 });
                                 if (val!) {
                                   checkStool = "yes";
                                 }
                               })),
                       sizedBoxWidth(width: 60),
                       Flexible(
                           flex: 1,
                           child: defultText(data: 'No', x: 17, c: Colors.white)),
                       Flexible(
                           flex: 1,
                           child: CheckboxListTile(
                               value: noCheckstool,
                               onChanged: (val) {
                                 setState(() {
                                   noCheckstool = val!;
                                   yesCheckstool = false;
                                 });
                                 if (val!) {
                                   checkStool = "no";
                                 }
                               })
                       ),
                     ],
                   ),
                   sizedBoxWidth(width: 10),
                 ],
               ),
             ),
             ),
             sizedBoxWidth(width: 10),
             Flexible(child:
             Container(
               decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(10)
               ),
               width: 400,
               height: 150,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Flexible(
                       flex: 1,
                       child: defultText(
                           data: 'Checked out Urine :', x: 17, c: Colors.white)),
                   sizedBoxWidth(width: 10),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Flexible(
                           child: defultText(data: 'Yes', x: 17, c: Colors.white)),
                       sizedBoxWidth(width: 50),
                       Flexible(
                           child: Checkbox(
                               value: yesCheckurine,
                               onChanged: (val) {
                                 setState(() {
                                   yesCheckurine = val!;
                                   noCheckurine = false;
                                 });
                                 if (val!) {
                                   checkUrine = "yes";
                                 }
                               })),
                       sizedBoxWidth(width: 60),
                       Flexible(
                           child: defultText(data: 'No', x: 17, c: Colors.white)),
                       Flexible(
                           child: CheckboxListTile(
                               value: noCheckurine,
                               onChanged: (val) {
                                 setState(() {
                                   noCheckurine = val!;
                                   yesCheckurine = false;
                                 });
                                 if (val!) {
                                   checkUrine = "no";
                                 }
                               })),
                     ],
                   ),
                 ],
               ),
             ),),
             sizedBoxWidth(width: 10),
              Flexible(child:
              Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                width: 400,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                        flex: 1,
                        child: defultText(
                            data: 'Checked out Blood :', x: 17, c: Colors.white)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                            flex: 1,
                            child: defultText(data: 'Yes', x: 17, c: Colors.white)),
                        sizedBoxWidth(width: 30),
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
                        sizedBoxWidth(width: 20),
                        Flexible(
                            flex: 1,
                            child: defultText(data: 'No', x: 17, c: Colors.white)),
                        sizedBoxWidth(width: 5),
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
                      ],
                    ),
                  ],
                ),
              ),
              )
           ],
         ),
          SizedBox(
            width: double.infinity,
            height: 10,
          ),
          Row( crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mysignin(
                color: Colors.grey,
                title: "Done",
                onPressed: () {
                  if(checkUrine=="yes"){
                    selectedPatient=="ad"? patientAd.urineCheckIn = false: patientCh.urineCheckIn=false;
                  }
                  if (checkStool == "yes") {
                    selectedPatient=="ad"? patientAd.stoolCheckIn = false :
                    patientCh.stoolCheckIn=false;
                  }
                  if(checkBlood=="yes"){
                    selectedPatient=="ad"? patientAd.bloodCheckIn = false :
                    patientCh.bloodCheckIn = false;
                  }
                  selectedPatient=="ad"? MyDataBase.updatePatientAdult(patientAd) : MyDataBase.updatePatientChild(patientCh);

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Confirm CheckOut"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              patientAd.urineCheckIn!
                                  ? "This patient is still checked in Urine"
                                  : "This patient is Checked out Urine",
                            ),
                            SizedBox(height: 10),
                            Text(
                              patientAd.bloodCheckIn!
                                  ? "This patient is still checked in Blood"
                                  : "This patient is Checked out Blood",
                            ),
                            SizedBox(height: 10),
                            Text(
                              patientAd.stoolCheckIn!
                                  ? "This patient is Still checked in Stool"
                                  : "This patient is Checked out Stool",
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // if(checkUrine=="yes"){
                              //   patientAd.urineCheckIn = false;
                              //   patientCh.urineCheckIn=false;
                              // }
                              // if (checkStool == "yes") {
                              //   patientAd.stoolCheckIn = false;
                              //   patientCh.stoolCheckIn=false;
                              // }
                              // if(checkBlood=="yes"){
                              //   patientAd.bloodCheckIn = false;
                              //   patientCh.bloodCheckIn = false;
                              // }
                              // MyDataBase.updatePatientChild(patientCh);
                              // MyDataBase.updatePatientAdult(patientAd);
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: Text("Done"),
                          ),
                        ],
                      );
                    },
                  );
                 // Navigator.of(context).pop();
                },
              )
            ],)
        ],
      ),),

    );
  }
}
