import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../network/my_database.dart';
import '../../network/storage.dart';
import '../../widgets/my_button.dart';
import 'ChoseScreningScreen.dart';
import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../component/component.dart';
class ChildScreeningRickets extends StatefulWidget {
  static const String screenRoute = 'ChildScreeningRickets';

  const ChildScreeningRickets({Key? key}) : super(key: key);

  @override
  State<ChildScreeningRickets> createState() => _ChildScreeningRicketsState();
}
bool child = false;
bool adult = false;
String selectedPatient = "" ;
PatientAdultModel patientAd = PatientAdultModel();
PatientChildModel patientCh = PatientChildModel();
TextEditingController codeController = TextEditingController();
class _ChildScreeningRicketsState extends State<ChildScreeningRickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Screening Rickets',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                      child: Text(
                        'upload photo', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ) ,
                    InkWell( onTap: (){
                      uploadImageRicketG();
                    },  child: Container( padding: const EdgeInsets.all(10 ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.photo_album),
                              SizedBox(width: 20,),
                              Text('Frome Gallery', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),),
                            ],),
                        ],
                      ),),),
                    SizedBox(width: 200,),

                    InkWell(onTap: (){
                      uploadImageRicketc();
                    }, child: Container( padding: const EdgeInsets.all(10 ),
                      child:  Row(
                        children: [
                          Icon(Icons.photo_camera),
                          SizedBox(width: 20,),
                          Text('Frome Camera', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                        ],),),),
                  ],
                ) ,

              ],),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                mysignin(color: Colors.black, title: 'upload', onPressed:(){})
              ],
            )

          ],
        ),
      ),

    );
  }
}
