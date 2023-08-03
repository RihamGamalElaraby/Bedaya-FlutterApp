import 'package:bedaya/DateModels/patient_childmodel.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab_screen.dart';
import 'package:bedaya/screens/Labs/urine%20lab/UrineLab_screen.dart';
import 'package:bedaya/screens/chose%20team%20screen/chose1_screen.dart';
import 'package:bedaya/screens/Labs/stool%20lab/stool_lab.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../DateModels/PatientAdultModel.dart';
import '../../network/my_database.dart';
import '../../widgets/my_button.dart';

class ChoseLabsScreen extends StatefulWidget {
  static const String screenRoute = 'choselabs_screen';

  const ChoseLabsScreen({super.key});

  @override
  State<ChoseLabsScreen> createState() => _ChoseLabsScreenState();
}

class _ChoseLabsScreenState extends State<ChoseLabsScreen> {
  TextEditingController codeController = TextEditingController();
  bool blood = false;
  bool stool = false;
  bool urine = false;

  String labChosen = '';

  bool child = false;
  bool adult = false;
  String selectedPatient = "" ;

  List<String> selectedLab = [];

  final List<String> items = List.generate(50, (index) => "Item $index");

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
                Navigator.pushNamed(context, Chose1_Screen.screenRoute);
              },
              icon: Icon(Icons.close),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  sizedBoxhight(hight: 30),
                  Center(
                    child: Text(
                      'Chose your team',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: mysignin(
                          color: Color.fromARGB(255, 1, 70, 2),
                          title: 'Urine',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, urineLabscreen.screenRoute);
                          },
                        ),
                      ),
                      sizedBoxWidth(width: 20),
                      Flexible(
                        child: mysignin(
                          color: Color.fromARGB(255, 1, 70, 2),
                          title: 'Stool',
                          onPressed: () {
                            Navigator.pushNamed(context, stoolLab.screenRoute);
                          },
                        ),
                      ),
                      sizedBoxWidth(width: 20),
                      Flexible(
                        child: mysignin(
                          color: Color.fromARGB(255, 1, 70, 2),
                          title: 'Blood',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, bloodLabScreen.screenRoute);
                          },
                        ),
                      )
                    ],
                  ),
                  sizedBoxhight(hight: 8),
/////////////////////////////////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          width: 300,
                          height: 150,
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
                                      data: 'Select patient do u need to search for', c: Colors.white,x: 16)),
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
                                      patientAd.urineCheckIn = true;
                                      patientCh.urineCheckIn=true;
                                    } else if (selectedLab[i] == "stool") {
                                      patientAd.stoolCheckIn = true;
                                      patientCh.stoolCheckIn = true;
                                    } else if (selectedLab[i] == "blood") {
                                      patientAd.bloodCheckIn = true;
                                      patientCh.bloodCheckIn = true;
                                    }
                                  }
                                  MyDataBase.updatePatientAdult(patientAd);
                                  MyDataBase.updatePatientChild(patientCh);
                                  setState(() {
                                    blood = false;
                                    urine = false;
                                    stool = false;
                                  });

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
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          width: 300,
                          height: 300,
                          child: Column(
                            children: [
                              defultText(data: 'Urine list', c: Colors.white),
                              Divider(
                                color: Colors.white,
                                thickness: 1.5,
                              ),
                              Expanded(
                                child: Scrollable(
                                  axisDirection: AxisDirection.down,
                                  viewportBuilder: (BuildContext context,
                                      ViewportOffset offset) {
                                    return Column(
                                      children: [
                                        SizedBox(height: offset.pixels),
                                        StreamBuilder(
                                          stream: MyDataBase.getListUrine(true),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasError) {
                                              return Center(
                                                  child: Text(
                                                "something went wrong",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium,
                                              ));
                                            }
                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            } // sania tb
                                            List<PatientAdultModel>
                                                patientList = snapshot
                                                        .data?.docs
                                                        .map((e) => e.data())
                                                        .toList() ??
                                                    [];
                                            return patientList.isNotEmpty
                                                ? Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          patientList.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Container(
                                                          height: 50,
                                                          child: Center(
                                                              child: Text(patientList[
                                                                          index]
                                                                      .codeAdultPatient ??
                                                                  "")),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : Container(
                                                    margin: EdgeInsets.only(
                                                        top: 220),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "no patient yet ...",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .accentColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      sizedBoxWidth(width: 20),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          width: 300,
                          height: 300,
                          child: Column(
                            children: [
                              defultText(data: 'Blood list', c: Colors.white),
                              Divider(
                                color: Colors.white,
                                thickness: 1.5,
                              ),
                              Expanded(
                                child: Scrollable(
                                  axisDirection: AxisDirection.down,
                                  viewportBuilder: (BuildContext context,
                                      ViewportOffset offset) {
                                    return Column(
                                      children: [
                                        SizedBox(height: offset.pixels),
                                        StreamBuilder(
                                          stream: MyDataBase.getListBlood(true),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasError) {
                                              return Center(
                                                  child: Text(
                                                "something went wrong",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium,
                                              ));
                                            }
                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            } // sania tb
                                            List<PatientAdultModel>
                                                patientList = snapshot
                                                        .data?.docs
                                                        .map((e) => e.data())
                                                        .toList() ??
                                                    [];
                                            return patientList.isNotEmpty
                                                ? Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          patientList.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Container(
                                                          height: 50,
                                                          child: Center(
                                                              child: Text(patientList[
                                                                          index]
                                                                      .codeAdultPatient ??
                                                                  "")),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : Container(
                                                    margin: EdgeInsets.only(
                                                        top: 220),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "no patient yet ...",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .accentColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      sizedBoxWidth(width: 20),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          width: 300,
                          height: 300,
                          child: Column(
                            children: [
                              defultText(data: 'Stool list', c: Colors.white),
                              Divider(
                                color: Colors.white,
                                thickness: 1.5,
                              ),
                              Expanded(
                                child: Scrollable(
                                  axisDirection: AxisDirection.down,
                                  viewportBuilder: (BuildContext context,
                                      ViewportOffset offset) {
                                    return Column(
                                      children: [
                                        SizedBox(height: offset.pixels),
                                        StreamBuilder(
                                          stream: MyDataBase.getListStool(true),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasError) {
                                              return Center(
                                                  child: Text(
                                                "something went wrong",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium,
                                              ));
                                            }
                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            } // sania tb
                                            List<PatientAdultModel>
                                                patientList = snapshot
                                                        .data?.docs
                                                        .map((e) => e.data())
                                                        .toList() ??
                                                    [];
                                            return patientList.isNotEmpty
                                                ? Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          patientList.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Container(
                                                          height: 50,
                                                          child: Center(
                                                              child: Text(patientList[
                                                                          index]
                                                                      .codeAdultPatient ??
                                                                  "")),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : Container(
                                                    margin: EdgeInsets.only(
                                                        top: 220),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "no patient yet ...",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 15,
                  ),
                  ///////////////////////////////////////////////////////
                  Divider(height: 2,thickness: 2,color: Colors.lightGreenAccent,),
                  SizedBox(
                    width: double.infinity,
                    height: 15,
                  ),
                  Text("Child Patient List"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          width: 300,
                          height: 300,
                          child: Column(
                            children: [
                              defultText(data: 'Urine list', c: Colors.white),
                              Divider(
                                color: Colors.white,
                                thickness: 1.5,
                              ),
                              Expanded(
                                child: Scrollable(
                                  axisDirection: AxisDirection.down,
                                  viewportBuilder: (BuildContext context,
                                      ViewportOffset offset) {
                                    return Column(
                                      children: [
                                        SizedBox(height: offset.pixels),
                                        StreamBuilder(
                                          stream: MyDataBase.getChildListUrine(true),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasError) {
                                              return Center(
                                                  child: Text(
                                                "something went wrong",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium,
                                              ));
                                            }
                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            } // sania tb
                                            List<PatientChildModel>
                                                patientList = snapshot
                                                        .data?.docs
                                                        .map((e) => e.data())
                                                        .toList() ??
                                                    [];
                                            return patientList.isNotEmpty
                                                ? Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          patientList.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Container(
                                                          height: 50,
                                                          child: Center(
                                                              child: Text(patientList[
                                                                          index]
                                                                      .codeChildPatient ??
                                                                  "")),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : Container(
                                                    margin: EdgeInsets.only(
                                                        top: 220),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "no patient yet ...",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .accentColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      sizedBoxWidth(width: 20),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          width: 300,
                          height: 300,
                          child: Column(
                            children: [
                              defultText(data: 'Blood list', c: Colors.white),
                              Divider(
                                color: Colors.white,
                                thickness: 1.5,
                              ),
                              Expanded(
                                child: Scrollable(
                                  axisDirection: AxisDirection.down,
                                  viewportBuilder: (BuildContext context,
                                      ViewportOffset offset) {
                                    return Column(
                                      children: [
                                        SizedBox(height: offset.pixels),
                                        StreamBuilder(
                                          stream: MyDataBase.getChildListBlood(true),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasError) {
                                              return Center(
                                                  child: Text(
                                                "something went wrong",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium,
                                              ));
                                            }
                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            } // sania tb
                                            List<PatientChildModel>
                                                patientList = snapshot
                                                        .data?.docs
                                                        .map((e) => e.data())
                                                        .toList() ??
                                                    [];
                                            return patientList.isNotEmpty
                                                ? Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          patientList.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Container(
                                                          height: 50,
                                                          child: Center(
                                                              child: Text(patientList[
                                                                          index]
                                                                      .codeChildPatient ??
                                                                  "")),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : Container(
                                                    margin: EdgeInsets.only(
                                                        top: 220),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "no patient yet ...",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .accentColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                  );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      sizedBoxWidth(width: 20),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          width: 300,
                          height: 300,
                          child: Column(
                            children: [
                              defultText(data: 'Stool list', c: Colors.white),
                              Divider(
                                color: Colors.white,
                                thickness: 1.5,
                              ),
                              Expanded(
                                child: Scrollable(
                                  axisDirection: AxisDirection.down,
                                  viewportBuilder: (BuildContext context,
                                      ViewportOffset offset) {
                                    return Column(
                                      children: [
                                        SizedBox(height: offset.pixels),
                                        StreamBuilder(
                                          stream: MyDataBase.getChildListStool(true),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasError) {
                                              return Center(
                                                  child: Text(
                                                "something went wrong",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium,
                                              ));
                                            }
                                            if (snapshot.connectionState ==
                                                ConnectionState.waiting) {
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            } // sania tb
                                            List<PatientChildModel>
                                                patientList = snapshot
                                                        .data?.docs
                                                        .map((e) => e.data())
                                                        .toList() ??
                                                    [];
                                            return patientList.isNotEmpty
                                                ? Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          patientList.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Container(
                                                          height: 50,
                                                          child: Center(
                                                              child: Text(patientList[
                                                                          index]
                                                                      .codeChildPatient ??
                                                                  "")),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : Container(
                                                    margin: EdgeInsets.only(
                                                        top: 220),
                                                    child: Text(
                                                      textAlign:
                                                          TextAlign.center,
                                                      "no patient yet ...",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
