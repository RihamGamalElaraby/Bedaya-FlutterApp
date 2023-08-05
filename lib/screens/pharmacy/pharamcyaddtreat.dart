import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../component/component.dart';
import '../../network/my_database.dart';
import '../../widgets/appbar.dart';
import '../../widgets/my_button.dart';
import '../../widgets/text_Filed.dart';

class Addtreatment extends StatefulWidget {
  static const String screenRoute = 'Addtreatment';

  const Addtreatment({Key? key}) : super(key: key);

  @override
  State<Addtreatment> createState() => _AddtreatmentState();
}
TextEditingController codeController = TextEditingController();
bool child = false;
bool adult = false;
String selectedPatient = "" ;

class _AddtreatmentState extends State<Addtreatment> {
  @override
  Widget build(BuildContext context) {
    PatientAdultModel patientAd = PatientAdultModel();
    PatientChildModel patientCh = PatientChildModel();
     return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          context: context,
          data: 'Pharmacy',
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
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mysignin(color: Colors.green, title: 'Add Drug',size: 16, onPressed: (){}),
                sizedBoxWidth(width: 30),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)),
            width: 300,
            height: 300,
            child: Column(
              children: [
                defultText(data: 'List of Checked Drug',c: Colors.white),
                Divider(color: Colors.white,thickness: 1.5,),
                Expanded(
                  child: Scrollable(
                    axisDirection: AxisDirection.down,
                    viewportBuilder: (BuildContext context, ViewportOffset offset) {
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
                                      style: Theme.of(context).textTheme.headlineMedium,
                                    ));
                              }
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }// sania tb
                              List<PatientAdultModel> patientList= snapshot.data?.docs.map((e) => e.data()).toList() ?? [];
                              return patientList.isNotEmpty
                                  ? Expanded(
                                child:ListView.builder(
                                  itemCount: patientList.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      height: 50,
                                      child: Center(child: Text(patientList[index].codeAdultPatient??"")),
                                    );
                                  },
                                ),
                              )
                                  : Container(
                                margin: EdgeInsets.only(top: 220),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "no patient yet ...",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(color: Colors.green,fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                          ),
                        ],
                      );} ,), ) , ], ), ),
        ),

              ],
            ),
            sizedBoxhight(hight: 20),
            Divider(
              height: 2,
            ),
            sizedBoxhight(hight: 20),
           Row(mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [defultText(data: 'UNcheked Drugs',x: 20)
           ,sizedBoxWidth(width:120),
           Flexible(child:  Container(
             child: defultTextField(
               max: 14,
                 width: 160,text: 'add druge',hight: 250),
             decoration: BoxDecoration(
                 color: Colors.green,
                 borderRadius: BorderRadius.circular(10)),
             width: 300,
             height: 300,
           ))],),
            sizedBoxhight(hight: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mysignin(color: Colors.green, title: 'Done', onPressed: (){}),
              sizedBoxhight(hight: 30),

            ],)
          ],),
      ),

    );
  }
}
