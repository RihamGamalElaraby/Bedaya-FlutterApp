import 'package:bedaya/widgets/text_Filed.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';
import '../DateModels/PatientAdultModel.dart';
import '../DateModels/patient_childmodel.dart';
import '../component/component.dart';
import '../network/my_database.dart';
import '../network/storage.dart';
import '../widgets/my_button.dart';

import 'package:bedaya/followup/Followupchoseclnic.dart';

class ImFollowupScreen extends StatefulWidget {
  static const String screenRoute = 'ImFollowupScreen';

  const ImFollowupScreen({Key? key}) : super(key: key);

  @override
  State<ImFollowupScreen> createState() => _ImFollowupScreenState();
}

TextEditingController codeController = TextEditingController();
TextEditingController FollowerNameController = TextEditingController();


List<String> ImFollowupNeedCAHECKcASES = [
  'Endocrine',
  'Neurology',
  'Nephrology',
  'Respiratory',
  'GIT',
  'Immunology',
  'Hepatology',
];
List<String> SelectedImFollowupNeedCAHECKcASES = [];

List<String> ImFollowupNeeddrugs = [
  'DM',
  'HTN',
  'Liver diseases',
  'Thyroid',
];
List<String> SelectedImFollowupNeeddrugs = [];

List<String> ImFollowupNeedinvestigations = [
  'Technitium Scan',
  'Coronary Angiography',
  'Serum Electrolit',
  'Thyroid profile',
  'Duplex',
  'D-Dimer',
];
List<String> SelectedImFollowupNeedinvestigations = [];

Widget buildRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      defultTextField(text: 'Step', hight: 100, width: 250),
      sizedBoxWidth(width: 10),
      Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    ],
  );
}

void uploadImage() {}

bool child = false;
bool adult = false;
String selectedPatient = "";

class _ImFollowupScreenState extends State<ImFollowupScreen> {
  @override
  List<Widget> rows = [];

  @override
  void initState() {
    super.initState();
    rows.add(buildRow()); // Add an initial row
  }

  void addRow() {
    setState(() {
      rows.add(buildRow());
    });
  }

  Widget build(BuildContext context) {
    PatientAdultModel patientAd = PatientAdultModel();
    PatientChildModel patientCh = PatientChildModel();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Follow Up IM',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, FollowupchosseClinic.screenRoute);
            },
            icon: Icon(Icons.close)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.print)),
          IconButton(onPressed: () {}, icon: Icon(Icons.file_download)),
          sizedBoxWidth(width: 60)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          sizedBoxhight(hight: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    width: 270,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        Flexible(
                            flex: 3,
                            child: defultText(
                                data: 'Select patient do u need search for',
                                c: Colors.black,
                                x: 15)),
                        sizedBoxhight(hight: 10),
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
                                            selectedPatient = "ch";
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
                                          child = false;
                                          if (val) {
                                            selectedPatient = "ad";
                                          }
                                        });
                                      })),
                            ],
                          ),
                        ),
                      ],
                    )),
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
                  child: selectedPatient == "ad"
                      ? StreamBuilder<QuerySnapshot<PatientAdultModel>>(
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: SizedBox(
                                                width: 50,
                                                height: 40,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.edit))),
                                          ),
                                          sizedBoxWidth(width: 20),
                                          Flexible(
                                            child: SizedBox(
                                                width: 50,
                                                height: 40,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.delete))),
                                          ),
                                          sizedBoxWidth(width: 20),
                                          Flexible(
                                            child: SizedBox(
                                                width: 50,
                                                height: 40,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.smart_display))),
                                          ),
                                          sizedBoxWidth(width: 20),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                        )
                      : StreamBuilder<QuerySnapshot<PatientChildModel>>(
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
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: SizedBox(
                                                width: 50,
                                                height: 40,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.edit))),
                                          ),
                                          sizedBoxWidth(width: 20),
                                          Flexible(
                                            child: SizedBox(
                                                width: 50,
                                                height: 40,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.delete))),
                                          ),
                                          sizedBoxWidth(width: 20),
                                          Flexible(
                                            child: SizedBox(
                                                width: 50,
                                                height: 40,
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.smart_display))),
                                          ),
                                          sizedBoxWidth(width: 20),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                        )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 250,
                  height: 70,
                  child: defultTextField(
                      controller: FollowerNameController,
                      text: 'Follower Name')),
            ],
          ),

          ///
          sizedBoxhight(hight: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Text(
                      'صورة الشييت 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          uploadImageImSheet1G(patientAd,patientCh);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(Icons.photo_album),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'From Gallery',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      InkWell(
                        onTap: () {
                          uploadImageImSheet1C(patientAd,patientCh);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(Icons.photo_camera),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'From Camera',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          sizedBoxhight(hight: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Text(
                      'صورة الشييت 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          uploadImageImSheet2G(patientAd,patientCh);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(Icons.photo_album),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'From Gallery',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      InkWell(
                        onTap: () {
                          uploadImageImSheet2C(patientAd,patientCh);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(Icons.photo_camera),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'From Camera',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ///////////////
          sizedBoxhight(hight: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mysignin(
                  color: Colors.green,
                  size: 24,
                  title: 'program',
                  onPressed: () {
                    Showbottomsheedt();
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              defultText(data: 'Add Steps', c: Colors.black, x: 24),
            ],
          ),
          sizedBoxhight(hight: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var row in rows) row,
              IconButton(
                icon: Icon(Icons.add),
                onPressed: addRow,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: mysignin(
                      color: Colors.grey, title: 'Upload', onPressed: () {
                        patientCh.IMfollowUPNEEDinvestigations = SelectedImFollowupNeedinvestigations ;
                        patientCh.IMfollowUPNEEDdrugs = SelectedImFollowupNeeddrugs ;
                        patientCh.IMfollowUPNEEDcheckup = SelectedImFollowupNeedCAHECKcASES;
                        patientCh.FollowerName = FollowerNameController.text;
                        MyDataBase.updatePatientChild(patientCh);
                        patientAd.IMfollowUPNEEDinvestigations = SelectedImFollowupNeedinvestigations ;
                        patientAd.IMfollowUPNEEDdrugs = SelectedImFollowupNeeddrugs ;
                        patientAd.IMfollowUPNEEDcheckup = SelectedImFollowupNeedCAHECKcASES;
                        patientAd.FollowerName = FollowerNameController.text;
                        MyDataBase.updatePatientAdult(patientAd);

                        SelectedImFollowupNeedCAHECKcASES.clear();
                        SelectedImFollowupNeeddrugs.clear();
                        SelectedImFollowupNeedinvestigations.clear();
                        FollowerNameController.clear();


                  })),
            ],
          ),
        ]),
      ),
    );
  }

  Showbottomsheedt() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(20),
            height: 600,
            width: 400,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Chose',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  sizedBoxhight(hight: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sizedBoxWidth(width: 20),
                      Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black26),
                            padding: EdgeInsets.all(10),
                            width: 1000,
                            height: 450,
                            child: Column(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Container(
                                        width: 1000,
                                        height: 50,
                                        child: Center(
                                          child: defultText(
                                              data: 'حالات محتاجة كشف:',
                                              c: Colors.white),
                                        ))),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: Container(
                                        height: 50,
                                        width: 300,
                                        child: Center(
                                          child: DropDownMultiSelect(
                                            options: ImFollowupNeedCAHECKcASES,
                                            selectedValues:
                                                SelectedImFollowupNeedCAHECKcASES,
                                            onChanged: (value) {
                                              setState(() {
                                                SelectedImFollowupNeedCAHECKcASES =
                                                    value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                sizedBoxhight(hight: 10),
                                Flexible(
                                    flex: 1,
                                    child: Container(
                                        width: 1000,
                                        height: 50,
                                        child: Center(
                                          child: defultText(
                                              data: 'حالات محتاجة أدوية',
                                              c: Colors.white),
                                        ))),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: Container(
                                        height: 50,
                                        width: 300,
                                        child: Center(
                                          child: DropDownMultiSelect(
                                            options: ImFollowupNeeddrugs,
                                            selectedValues:
                                                SelectedImFollowupNeeddrugs,
                                            onChanged: (value) {
                                              setState(() {
                                                SelectedImFollowupNeeddrugs =
                                                    value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                sizedBoxhight(hight: 10),
                                Flexible(
                                    flex: 1,
                                    child: Container(
                                        width: 1000,
                                        height: 50,
                                        child: Center(
                                          child: defultText(
                                              data: 'investigations',
                                              c: Colors.white),
                                        ))),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: Container(
                                        height: 50,
                                        width: 300,
                                        child: Center(
                                          child: DropDownMultiSelect(
                                            options:
                                                ImFollowupNeedinvestigations,
                                            selectedValues:
                                                SelectedImFollowupNeedinvestigations,
                                            onChanged: (value) {
                                              setState(() {
                                                SelectedImFollowupNeedinvestigations =
                                                    value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
