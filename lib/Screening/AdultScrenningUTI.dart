import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../network/my_database.dart';
import '../../widgets/my_button.dart';
import 'ChoseScreningScreen.dart';
import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../component/component.dart';

class AdultScrenningUTI extends StatefulWidget {
  static const String screenRoute = 'AdultScrenningUTI';

  const AdultScrenningUTI({Key? key}) : super(key: key);

  @override
  State<AdultScrenningUTI> createState() => _AdultScrenningUTIState();
}
bool child = false;
bool adult = false;
String selectedPatient = "" ;
PatientAdultModel patientAd = PatientAdultModel();
PatientChildModel patientCh = PatientChildModel();
TextEditingController codeController = TextEditingController();

class _AdultScrenningUTIState extends State<AdultScrenningUTI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Screening UTI',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading:          IconButton(onPressed: () {
          Navigator.pushNamed(context,ChoseScreningScreen.screenRoute) ;
        }, icon: Icon(Icons.close)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.print)),
          IconButton(onPressed: () {}, icon: Icon(Icons.file_download)),
          sizedBoxWidth(width: 60)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [  sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      width: 270,
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                          sizedBoxhight(hight: 5),
                          Flexible(
                              flex: 3,
                              child: defultText(
                                  data: 'Select patient do u need search for', c: Colors.black,x: 15)),
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
                            height: 10000,
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
                                  Divider(thickness: 3,
                                    height: 2,),
                                  //urine
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'Urine Lab',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(thickness: 3,
                                    height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Colour: ${patientAd.urinePhysicalExColour}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'Aspect: ${patientAd.urinePhysicalExAspect}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Blood: ${patientAd.urineChemicalExBlood}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Urobilingen: ${patientAd.urineChemicalExUrobilingen}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'Bilirubin: ${patientAd.urineChemicalExBilirubin}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Protien: ${patientAd.urineChemicalExProtien}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Nitrite: ${patientAd.urineChemicalExNitrite}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'PH: ${patientAd.urineChemicalExPH}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Glucose: ${patientAd.urineChemicalExGlucose}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Ketone: ${patientAd.urineChemicalExKetone}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'Leukocyte: ${patientAd.urineChemicalExLeukocyte}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Specificgravity: ${patientAd.urineChemicalExSpecificgravity}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Density: ${patientAd.urineChemicalExDensity}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'RBCs: ${patientAd.urineMicroscopicExRBCs}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Puscells: ${patientAd.urineMicroscopicExPuscells}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Epithelialcells: ${patientAd.urineMicroscopicExEpithelialcells}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'CalciumOxalate: ${patientAd.urineMicroscopicExCalciumOxalate}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Uricacid: ${patientAd.urineMicroscopicExUricacid}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Triplephosphate: ${patientAd.urineMicroscopicExTriplephosphate}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'Amorphous: ${patientAd.urineMicroscopicExAmorphous}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Albumine: ${patientAd.urineAlbumineAlbumine}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Creat: ${patientAd.urineAlbumineCreat}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data: 'AlbuminaCreateRatio: ${patientAd.urineAlbumineAlbuminaCreateRatio}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                      sizedBoxWidth(width: 50),

                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Adittional Comments: ${patientAd.urineAdittionalComments}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        child: defultText(
                                          data:   'Abnormal Findings: ${patientAd.urineAbnormalFindings}',
                                          c: Colors.black,
                                          x: 19,
                                        ),
                                      ),
                                    ],),
                                  ////////// emd urine



















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
          ],),
      ),

    );
  }
}
