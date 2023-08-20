import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/widgets/my_button.dart';

import '../../../DateModels/PatientAdultModel.dart';
import '../../../DateModels/patient_childmodel.dart';
import '../../../network/my_database.dart';
import '../../../widgets/text_Filed.dart';
import '../choselabs_screen.dart';

class stoolLab extends StatefulWidget {
  static const String screenRoute = 'stoolLab';

  const stoolLab({super.key});

  @override
  State<stoolLab> createState() => _stoolLabState();
}

class _stoolLabState extends State<stoolLab> {
  bool yesCheckstool = false;
  bool noCheckstool = false;
  String checkStool = "";
  bool Formed = false;
  bool semiformed = false;

  bool loose = false;
  String consisteny = '';

  bool Stoolbloodpos = false;

  bool Stoolbloodneg = false;

  String Stoollabblood = '';

  bool Stoolmucuspos = false;

  bool Stoolmucusneg = false;

  String Stoollabmucus = '';

  bool Stoolfasciolapos = false;

  bool Stoolfasciolaneg = false;

  String Stoollabfasciola = '';

  bool Stoolschpos = false;

  bool Stoolschneg = false;

  String Stoollabsch = '';

  bool Stoolhnanapos = false;

  bool Stoolhnananeg = false;

  String Stoollabhnana = '';

  bool Stooltineapos = false;

  bool Stooltineaneg = false;

  String Stoollabtinea = '';

  bool StoolAscarispos = false;

  bool StoolAscarisneg = false;

  String StoollabAscaris = '';

  bool StoolTtrichuriapos = false;

  bool StoolTtrichurianeg = false;

  String StoollabTtrichuria = '';
  bool Stoolblastosyctpos = false;
  bool Stoolblastosyctneg = false;

  String Stoollabblastosyct= '';

  bool StoolHookwormpos = false;

  bool StoolHookwormneg = false;

  String StoollabHookworm = '';

  bool Stoolhpyloripos = false;

  bool Stoolhpyloriposneg = false;

  String StoollabHpylori = '';

  bool Stoolfecalpos = false;

  bool Stoolfecalneg = false;

  String Stoollabfecal = '';

  bool StoolEntrobiouspos = false;

  bool StoolEntrobiousneg = false;

  String StoollabEntrobious = '';

  bool StoolEcolipos = false;

  bool StoolEcolineg = false;

  String StoollabEcoli = '';

  bool StoolEhistoliticapos = false;

  bool StoolEhistoliticaneg = false;

  String StoollabEhistolitica = '';

  bool StoolGiardiapos = false;

  bool StoolGiardianeg = false;

  String StoollabGiardia = '';

  bool StoolStrongyloideslarvaepos = false;

  bool StoolStrongyloideslarvaeneg = false;

  String StoollabStrongyloideslarvae = '';

  bool StoolGiardiatrophozozitepos = false;

  bool StoolGiardiatrophozoziteneg = false;

  String StoollabGiardiatrophozozite = '';

  bool StoolEhistoliticatrophozitepos = false;

  bool StoolEhistoliticatrophoziteneg = false;

  String StoollabEhistoliticatrophozite = '';

  TextEditingController StoolColor = TextEditingController();
  TextEditingController StoolWorm = TextEditingController();
  TextEditingController StoolOdour = TextEditingController();
  TextEditingController wbcscontroller = TextEditingController();
  TextEditingController Rbcscontroller = TextEditingController();
  TextEditingController codeController = TextEditingController();
  bool child = false;
  bool adult = false;
  String selectedPatient = "" ;

  @override
  Widget build(BuildContext context) {
    PatientAdultModel patientAd = PatientAdultModel();
    PatientChildModel patientCh = PatientChildModel();

    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(context: context,
          data: 'Stool Lab',
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
                                  data: 'Select patientAd do u need search for', c: Colors.black,x: 15)),
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
                          return Text('No patientAd data found!');
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
                          return Text('No patientAd data found!');
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
            sizedBoxhight(hight: 20),
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
                          data: 'Stool Analysis', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizedBoxWidth(width: 40),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defultText(
                            data: 'Physical data :', c: Colors.black, x: 18),
                        Icon(
                          Icons.arrow_downward_rounded,
                          color: Color.fromARGB(255, 2, 61, 4),
                          size: 40.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(
                          data: 'Consistency:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: 'Formed')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Formed,
                              onChanged: (val) {
                                setState(() {
                                  Formed = val!;
                                  semiformed = false;
                                  loose = false;
                                });
                                if (val!) {
                                  consisteny = "Formed";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(
                            flex: 1, child: defultText(data: 'Semi formed')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: semiformed,
                              onChanged: (val) {
                                setState(() {
                                  Formed = false;
                                  semiformed = val!;
                                  loose = false;
                                });
                                if (val!) {
                                  consisteny = "Semi formed";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: 'Loose')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: loose,
                              onChanged: (val) {
                                setState(() {
                                  Formed = false;
                                  semiformed = false;
                                  loose = val!;
                                });
                                if (val!) {
                                  consisteny = "Loose";
                                }
                              },
                            )),
                      ],
                      // defultText(data: 'Reference', c: Colors.black, x: 18),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Blood:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolbloodpos,
                              onChanged: (val) {
                                setState(() {
                                  Stoolbloodpos = val!;
                                  Stoolbloodneg = false;
                                });
                                if (val!) {
                                  Stoollabblood = "+VE";
                                } else {
                                  Stoollabblood = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolbloodneg,
                              onChanged: (val) {
                                setState(() {
                                  Stoolbloodneg = val!;
                                  Stoolbloodpos = false;
                                });
                                if (val!) {
                                  Stoollabblood = "-VE";
                                } else {
                                  Stoollabblood = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Mucus:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolmucuspos,
                              onChanged: (val) {
                                setState(() {
                                  Stoolmucuspos = val!;
                                  Stoolmucusneg = false;
                                });
                                if (val!) {
                                  Stoollabmucus = "+VE";
                                } else {
                                  Stoollabmucus = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolmucusneg,
                              onChanged: (val) {
                                setState(() {
                                  Stoolmucuspos = false;
                                  Stoolmucusneg = val!;
                                });
                                if (val!) {
                                  Stoollabmucus = "-VE";
                                } else {
                                  Stoollabmucus = "+VE";
                                }
                              },
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Color:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            controller: StoolColor, text: 'Result', width: 250),
                      )),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Worm:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            controller: StoolWorm, text: 'Result', width: 250),
                      )),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Odour:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            controller: StoolOdour, text: 'Result', width: 250),
                      )),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizedBoxWidth(width: 40),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defultText(
                            data: 'Microscopic data:', c: Colors.black, x: 18),
                        Icon(
                          Icons.arrow_downward_rounded,
                          color: Color.fromARGB(255, 2, 61, 4),
                          size: 40.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Fasciola:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolfasciolapos,
                              onChanged: (val) {
                                setState(() {
                                  Stoolfasciolapos = val!;
                                  Stoolfasciolaneg = false;
                                });
                                if (val!) {
                                  Stoollabfasciola = "+VE";
                                } else {
                                  Stoollabfasciola = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolfasciolaneg,
                              onChanged: (val) {
                                setState(() {
                                  Stoolfasciolaneg = val!;
                                  Stoolfasciolapos = false;
                                });
                                if (val!) {
                                  Stoollabfasciola = "-VE";
                                } else {
                                  Stoollabfasciola = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Sch. Mansoni:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolschpos,
                              onChanged: (val) {
                                setState(() {
                                  Stoolschpos = val!;
                                  Stoolschneg = false;
                                });
                                if (val!) {
                                  Stoollabsch = "+VE";
                                } else {
                                  Stoollabsch = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolschneg,
                              onChanged: (val) {
                                setState(() {
                                  Stoolschneg = val!;
                                  Stoolschpos = false;
                                });
                                if (val!) {
                                  Stoollabsch = "-VE";
                                } else {
                                  Stoollabsch = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'H.nana:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolhnanapos,
                              onChanged: (val) {
                                setState(() {
                                  Stoolhnanapos = val!;
                                  Stoolhnananeg = false;
                                });
                                if (val!) {
                                  Stoollabhnana = "+VE";
                                } else {
                                  Stoollabhnana = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolhnananeg,
                              onChanged: (val) {
                                setState(() {
                                  Stoolhnananeg = val!;
                                  Stoolhnanapos = false;
                                });
                                if (val!) {
                                  Stoollabhnana = "-VE";
                                } else {
                                  Stoollabhnana = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(data: 'Tinea:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stooltineapos,
                              onChanged: (val) {
                                setState(() {
                                  Stooltineapos = val!;
                                  Stooltineaneg = false;
                                });
                                if (val!) {
                                  Stoollabtinea = "+VE";
                                } else {
                                  Stoollabtinea = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stooltineaneg,
                              onChanged: (val) {
                                setState(() {
                                  Stooltineaneg = val!;
                                  Stooltineapos = false;
                                });
                                if (val!) {
                                  Stoollabtinea = "-VE";
                                } else {
                                  Stoollabtinea = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Ascaris:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolAscarispos,
                              onChanged: (val) {
                                setState(() {
                                  StoolAscarispos = val!;
                                  StoolAscarispos = false;
                                });
                                if (val!) {
                                  StoollabAscaris = "+VE";
                                } else {
                                  StoollabAscaris = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolAscarisneg,
                              onChanged: (val) {
                                setState(() {
                                  StoolAscarisneg = val!;
                                  StoolAscarispos = false;
                                });
                                if (val!) {
                                  StoollabAscaris = "-VE";
                                } else {
                                  StoollabAscaris = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'T.trichuria:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolTtrichuriapos,
                              onChanged: (val) {
                                setState(() {
                                  StoolTtrichuriapos = val!;
                                  StoolTtrichurianeg = false;
                                });
                                if (val!) {
                                  StoollabTtrichuria = "+VE";
                                } else {
                                  StoollabTtrichuria = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolTtrichurianeg,
                              onChanged: (val) {
                                setState(() {
                                  StoolTtrichurianeg = val!;
                                  StoolTtrichuriapos = false;
                                });
                                if (val!) {
                                  StoollabTtrichuria = "-VE";
                                } else {
                                  StoollabTtrichuria = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                      defultText(data: 'Blastocyst hominis', c:Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolblastosyctpos,
                              onChanged: (val) {
                                setState(() {
                                  Stoolblastosyctpos = val!;
                                  Stoolblastosyctneg = false;
                                });
                                if (val!) {
                                  Stoollabblastosyct = "+VE";
                                } else {
                                  Stoollabblastosyct = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolblastosyctneg,
                              onChanged: (val) {
                                setState(() {
                                  Stoolblastosyctneg = val!;
                                  Stoolblastosyctpos = false;
                                });
                                if (val!) {
                                  Stoollabblastosyct = "-VE";
                                } else {
                                  Stoollabblastosyct = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),

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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Hook worm:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolHookwormpos,
                              onChanged: (val) {
                                setState(() {
                                  StoolHookwormpos = val!;
                                  StoolHookwormneg = false;
                                });
                                if (val!) {
                                  StoollabHookworm = "+VE";
                                } else {
                                  StoollabHookworm = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolHookwormneg,
                              onChanged: (val) {
                                setState(() {
                                  StoolHookwormneg = val!;
                                  StoolHookwormpos = false;
                                });
                                if (val!) {
                                  StoollabHookworm = "-VE";
                                } else {
                                  StoollabHookworm = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Entrobious:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolEntrobiouspos,
                              onChanged: (val) {
                                setState(() {
                                  StoolEntrobiouspos = val!;
                                  StoolEntrobiousneg = false;
                                });
                                if (val!) {
                                  StoollabEntrobious = "+VE";
                                } else {
                                  StoollabEntrobious = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolEntrobiousneg,
                              onChanged: (val) {
                                setState(() {
                                  StoolEntrobiousneg = val!;
                                  StoolEntrobiouspos = false;
                                });
                                if (val!) {
                                  StoollabEntrobious = "-VE";
                                } else {
                                  StoollabEntrobious = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'E.coli:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolEcolipos,
                              onChanged: (val) {
                                setState(() {
                                  StoolEcolipos = val!;
                                  StoolEcolineg = false;
                                });
                                if (val!) {
                                  StoollabEcoli = "+VE";
                                } else {
                                  StoollabEcoli = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolEcolineg,
                              onChanged: (val) {
                                setState(() {
                                  StoolEcolineg = val!;
                                  StoolEcolipos = false;
                                });
                                if (val!) {
                                  StoollabEcoli = "-VE";
                                } else {
                                  StoollabEcoli = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'E.histolitica:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolEhistoliticapos,
                              onChanged: (val) {
                                setState(() {
                                  StoolEhistoliticapos = val!;
                                  StoolEhistoliticaneg = false;
                                });
                                if (val!) {
                                  StoollabEhistolitica = "+VE";
                                } else {
                                  StoollabEhistolitica = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolEhistoliticaneg,
                              onChanged: (val) {
                                setState(() {
                                  StoolEhistoliticaneg = val!;
                                  StoolEhistoliticapos = false;
                                });
                                if (val!) {
                                  StoollabEhistolitica = "-VE";
                                } else {
                                  StoollabEhistolitica = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'Giardia:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolGiardiapos,
                              onChanged: (val) {
                                setState(() {
                                  StoolGiardiapos = val!;
                                  StoolGiardianeg = false;
                                });
                                if (val!) {
                                  StoollabGiardia = "+VE";
                                } else {
                                  StoollabGiardia = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolGiardianeg,
                              onChanged: (val) {
                                setState(() {
                                  StoolGiardianeg = val!;
                                  StoolGiardiapos = false;
                                });
                                if (val!) {
                                  StoollabGiardia = "-VE";
                                } else {
                                  StoollabGiardia = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Strongyloides larvae:',
                          c: Colors.black,
                          x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolStrongyloideslarvaepos,
                              onChanged: (val) {
                                setState(() {
                                  StoolStrongyloideslarvaepos = val!;
                                  StoolStrongyloideslarvaeneg = false;
                                });
                                if (val!) {
                                  StoollabStrongyloideslarvae = "+VE";
                                } else {
                                  StoollabStrongyloideslarvae = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolStrongyloideslarvaeneg,
                              onChanged: (val) {
                                setState(() {
                                  StoolStrongyloideslarvaeneg = val!;
                                  StoolStrongyloideslarvaepos = false;
                                });
                                if (val!) {
                                  StoollabStrongyloideslarvae = "-VE";
                                } else {
                                  StoollabStrongyloideslarvae = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Giardia trophozozite:',
                          c: Colors.black,
                          x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolGiardiatrophozozitepos,
                              onChanged: (val) {
                                setState(() {
                                  StoolGiardiatrophozozitepos = val!;
                                  StoolGiardiatrophozoziteneg = false;
                                });
                                if (val!) {
                                  StoollabGiardiatrophozozite = "+VE";
                                } else {
                                  StoollabGiardiatrophozozite = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolGiardiatrophozoziteneg,
                              onChanged: (val) {
                                setState(() {
                                  StoolGiardiatrophozoziteneg = val!;
                                  StoolGiardiatrophozozitepos = false;
                                });
                                if (val!) {
                                  StoollabGiardiatrophozozite = "+VE";
                                } else {
                                  StoollabGiardiatrophozozite = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'E.histolitica trophozite:',
                          c: Colors.black,
                          x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolEhistoliticatrophozitepos,
                              onChanged: (val) {
                                setState(() {
                                  StoolEhistoliticatrophozitepos = val!;
                                  StoolEhistoliticatrophoziteneg = false;
                                });
                                if (val!) {
                                  StoollabEhistoliticatrophozite = "+VE";
                                } else {
                                  StoollabEhistoliticatrophozite = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: StoolEhistoliticatrophoziteneg,
                              onChanged: (val) {
                                setState(() {
                                  StoolEhistoliticatrophoziteneg = val!;
                                  StoolEhistoliticatrophozitepos = false;
                                });
                                if (val!) {
                                  StoollabEhistoliticatrophozite = "-VE";
                                } else {
                                  StoollabEhistoliticatrophozite = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Wbcs:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            controller: wbcscontroller,
                            text: 'Result',
                            width: 250),
                      )),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                      child: defultText(data: 'Rbcs:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                      height: 70,
                      width: 600,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                            controller: Rbcscontroller,
                            text: 'Result',
                            width: 250),
                      )),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child:
                          defultText(data: 'H-pylori:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolhpyloripos,
                              onChanged: (val) {
                                setState(() {
                                  Stoolhpyloripos = val!;
                                  Stoolhpyloriposneg = false;
                                });
                                if (val!) {
                                  StoollabHpylori = "+VE";
                                } else {
                                  StoollabHpylori = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolhpyloriposneg,
                              onChanged: (val) {
                                setState(() {
                                  Stoolhpyloriposneg = val!;
                                  Stoolhpyloripos = false;
                                });
                                if (val!) {
                                  StoollabHpylori = "-VE";
                                } else {
                                  StoollabGiardia = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: defultText(
                          data: 'Fecal occult blood:', c: Colors.black, x: 18),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 30),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 70,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sizedBoxWidth(width: 30),
                        Flexible(flex: 1, child: defultText(data: '+VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolfecalpos,
                              onChanged: (val) {
                                setState(() {
                                  Stoolfecalpos = val!;
                                  Stoolfecalneg = false;
                                });
                                if (val!) {
                                  Stoollabfecal = "+VE";
                                } else {
                                  Stoollabfecal = "-VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                        Flexible(flex: 1, child: defultText(data: '-VE')),
                        Flexible(
                            flex: 1,
                            child: Checkbox(
                              value: Stoolfecalneg,
                              onChanged: (val) {
                                setState(() {
                                  Stoolfecalneg = val!;
                                  Stoolfecalpos = false;
                                });
                                if (val!) {
                                  Stoollabfecal = "-VE";
                                } else {
                                  Stoollabfecal = "+VE";
                                }
                              },
                            )),
                        sizedBoxWidth(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 30),
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
                  sizedBoxWidth(width: 10),
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
                          })),
                  sizedBoxWidth(width: 10),
                ],
              ),
            ),
            sizedBoxhight(hight: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&Done',
                      size: 25,
                      onPressed: () {
                        print(checkStool);
                        if (checkStool == "yes") {
                          patientAd.stoolCheckIn = false;
                          patientCh.stoolCheckIn=false;
                          }
                        patientAd.Stoollabblastosyct = Stoollabblastosyct;
                          patientAd.consisteny = consisteny;
                          patientAd.Stoollabblood = Stoollabblood;
                          patientAd.Stoollabmucus = Stoollabmucus;
                          patientAd.Stoollabfasciola = Stoollabfasciola;
                          patientAd.Stoollabsch = Stoollabsch;
                          patientAd.Stoollabhnana = Stoollabhnana;
                          patientAd.Stoollabtinea = Stoollabtinea;
                          patientAd.StoollabAscaris = StoollabAscaris;
                          patientAd.StoollabTtrichuria = StoollabTtrichuria;
                          patientAd.StoollabHookworm = StoollabHookworm;
                          patientAd.StoollabHpylori = StoollabHpylori;
                          patientAd.Stoollabfecal = Stoollabfecal;
                          patientAd.StoollabEntrobious = StoollabEntrobious;
                          patientAd.StoollabEcoli = StoollabEcoli;
                          patientAd.StoollabEhistolitica = StoollabEhistolitica;
                          patientAd.StoollabGiardia = StoollabGiardia;
                          patientAd.StoollabStrongyloideslarvae =
                              StoollabStrongyloideslarvae;
                          patientAd.StoollabGiardiatrophozozite =
                              StoollabGiardiatrophozozite;
                          patientAd.StoollabEhistoliticatrophozite =
                              StoollabEhistoliticatrophozite;
                          patientAd.StoolColor = StoolColor.text;
                          patientAd.StoolWorm = StoolWorm.text;
                          patientAd.StoolOdour = StoolOdour.text;
                          patientAd.StoolColor = wbcscontroller.text;
                        patientAd.reportStool="done";
                          MyDataBase.updatePatientAdult(patientAd);
                          // child

                        patientCh.consisteny = consisteny;
                        patientCh.Stoollabblood = Stoollabblood;
                        patientCh.Stoollabmucus = Stoollabmucus;
                        patientCh.Stoollabfasciola = Stoollabfasciola;
                        patientCh.Stoollabsch = Stoollabsch;
                        patientCh.Stoollabhnana = Stoollabhnana;
                        patientCh.Stoollabtinea = Stoollabtinea;
                        patientCh.StoollabAscaris = StoollabAscaris;
                        patientCh.StoollabTtrichuria = StoollabTtrichuria;
                        patientCh.StoollabHookworm = StoollabHookworm;
                        patientCh.StoollabHpylori = StoollabHpylori;
                        patientCh.Stoollabfecal = Stoollabfecal;
                        patientCh.StoollabEntrobious = StoollabEntrobious;
                        patientCh.StoollabEcoli = StoollabEcoli;
                        patientCh.StoollabEhistolitica = StoollabEhistolitica;
                        patientCh.StoollabGiardia = StoollabGiardia;
                        patientCh.Stoollabblastosyct = Stoollabblastosyct;
                        patientCh.StoollabStrongyloideslarvae =
                            StoollabStrongyloideslarvae;
                        patientCh.StoollabGiardiatrophozozite =
                            StoollabGiardiatrophozozite;
                        patientCh.StoollabEhistoliticatrophozite =
                            StoollabEhistoliticatrophozite;
                        patientCh.StoolColor = StoolColor.text;
                        patientCh.StoolWorm = StoolWorm.text;
                        patientCh.StoolOdour = StoolOdour.text;
                        patientCh.StoolColor = wbcscontroller.text;
                        patientCh.reportStool="done";
                        MyDataBase.updatePatientChild(patientCh);
                          codeController.clear();
                        Navigator.pushNamed(context, ChoseLabsScreen.screenRoute);

                          //Navigator.pushNamed(context, stoolLab.screenRoute);
                      }),
                ),
                sizedBoxWidth(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
