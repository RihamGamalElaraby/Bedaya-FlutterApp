import 'package:bedaya/followup/ENTFollowUpScreen.dart';
import 'package:bedaya/followup/GynecologyFollowUpscreen.dart';
import 'package:bedaya/followup/Imfollowupscreen.dart';
import 'package:bedaya/followup/OphthalmologyFollowup.dart';
import 'package:bedaya/followup/PediatricFollowupscreen.dart';
import 'package:bedaya/followup/SurgeryFollowupScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../DateModels/PatientAdultModel.dart';
import '../DateModels/patient_childmodel.dart';
import '../component/component.dart';
import '../network/my_database.dart';
import 'package:bedaya/screens/chose sup team screen/chose2_screen.dart';
// import '../screens/dashboard/dashboard.dart';
import '../network/storage.dart';
import '../widgets/my_button.dart';
class FollowupchosseClinic extends StatefulWidget {
  static const String screenRoute = 'FollowupchosseClinic';
  const FollowupchosseClinic({Key? key}) : super(key: key);

  @override
  State<FollowupchosseClinic> createState() => _FollowupchosseClinicState();
}
TextEditingController codeController = TextEditingController();
bool child = false;
bool adult = false;
String selectedPatient = "" ;
void uploadImage(){}
class _FollowupchosseClinicState extends State<FollowupchosseClinic> {
  @override
  Widget build(BuildContext context) {
    PatientAdultModel patientAd = PatientAdultModel();
    PatientChildModel patientCh = PatientChildModel();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Follow Up',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading:          IconButton(onPressed: () {
          Navigator.pushNamed(context, Chose2_Screen.screenRoute) ;
        }, icon: Icon(Icons.close)),
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
                                              icon:
                                              Icon(Icons.delete))),
                                    ),
                                    sizedBoxWidth(width: 20),
                                    Flexible(
                                      child: SizedBox(
                                          width: 50,
                                          height: 40,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons
                                                  .smart_display))),
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
                                              icon:
                                              Icon(Icons.delete))),
                                    ),
                                    sizedBoxWidth(width: 20),
                                    Flexible(
                                      child: SizedBox(
                                          width: 50,
                                          height: 40,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons
                                                  .smart_display))),
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
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                    child: Text(
                      ' صورة البطاقة وش', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ) ,
                  InkWell( onTap: (){
                    uploadImagepersonalIDupperg(patientAd,patientCh);
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
                    uploadImagepersonalIDupperc(patientAd,patientCh);
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
          sizedBoxhight(hight: 5),
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
                      'صورة البطاقة ضهر', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ) ,
                  Row(
                    children: [
                      InkWell( onTap: (){uploadImagepersonalIDLowerg();},  child: Container( padding: const EdgeInsets.all(10 ),
                        child: Row(
                          children: [
                            Icon(Icons.photo_album),
                            SizedBox(width: 20,),
                            Text('From Gallery', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          ],
                        ),),),
                    ],
                  ),
                  SizedBox(width: 200,),

                  InkWell(onTap: (){
                    uploadImagepersonalIDLowerc();
                  }, child: Container( padding: const EdgeInsets.all(10 ),
                    child:  Row(
                      children: [
                        Icon(Icons.photo_camera),
                        SizedBox(width: 20,),
                        Text('From Camera', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                      ],),),),
                ],
              ) ,

            ],),
          sizedBoxhight(hight: 5),
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
                      'صورة ورقة التحويل', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ) ,
                  Column(
                    children: [
                      InkWell( onTap: (){uploadImagepersonalIDTransg();},  child: Container( padding: const EdgeInsets.all(10 ),
                        child: Row(
                          children: [
                            Icon(Icons.photo_album),
                            SizedBox(width: 20,),
                            Text('From Gallery', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          ],),),),
                      SizedBox(width: 200,),
                      InkWell(onTap: (){
                        uploadImagepersonalIDTransc();
                      }, child: Container( padding: const EdgeInsets.all(10 ),
                        child:  Row(
                          children: [
                            Icon(Icons.photo_camera),
                            SizedBox(width: 20,),
                            Text('From Camera', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                          ],),),),
                    ],
                  ),
                ],
              ) ,

            ],),
          sizedBoxhight(hight: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            mysignin(color: Colors.grey, title: 'Upload', onPressed: (){
              patientAd.reportFollowUp="done";
              MyDataBase.updatePatientAdult(patientAd);
              patientCh.reportFollowUp="done";
              MyDataBase.updatePatientChild(patientCh);
            }),
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  height: 50,
                  width: 150,
                  child: mysignin(
                    color: Color.fromARGB(255, 1, 70, 2),
                    size: 20,
                    x: Colors.white,
                    title: 'IM',
                    onPressed: () {
                      Navigator.pushNamed(context, ImFollowupScreen.screenRoute);
                    },
                  ),
                ),
              ),
              sizedBoxWidth(width: 5),
              Flexible(
                child: Container(
                  height: 50,
                  width: 150,
                  child: mysignin(
                    color: Color.fromARGB(255, 1, 70, 2),
                    size: 20,
                    x: Colors.white,
                    title: 'Pediatrics',
                    onPressed: () {
                      Navigator.pushNamed(context, PediatricFollowupscreen.screenRoute);
                    },
                  ),
                ),
              ),
              sizedBoxWidth(width: 5),
              Flexible(
                child: Container(
                  height: 50,
                  width: 150,
                  child: mysignin(
                    color: Color.fromARGB(255, 1, 70, 2),
                    size: 20,
                    x: Colors.white,
                    title: 'Surgery',
                    onPressed: () {
                      Navigator.pushNamed(context, SurgeryFollowUpscreen.screenRoute);
                    },
                  ),
                ),
              ),
              sizedBoxWidth(width: 5),
            ],
          ),
          SizedBox(height: 6,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  height: 50,
                  width: 150,
                  child: mysignin(
                    color: Color.fromARGB(255, 1, 70, 2),
                    size: 20,
                    x: Colors.white,
                    title: 'Ophthalmology',
                    onPressed: () {
                      Navigator.pushNamed(context, OphthalmologyFollowupScreen.screenRoute);
                    },
                  ),
                ),
              ),
              sizedBoxWidth(width: 5),
              Flexible(
                child: Container(
                  height: 50,
                  width: 150,
                  child: mysignin(
                    color: Color.fromARGB(255, 1, 70, 2),
                    size: 20,
                    x: Colors.white,
                    title: 'Gynecology',
                    onPressed: () {
                      Navigator.pushNamed(context, GynecologyFollowUpscreen.screenRoute);
                    },
                  ),
                ),
              ),
              sizedBoxWidth(width: 5),
              Flexible(
                child: Container(
                  height: 50,
                  width: 150,
                  child: mysignin(
                    color: Color.fromARGB(255, 1, 70, 2),
                    size: 20,
                    x: Colors.white,
                    title: 'ENT',
                    onPressed: () {
                      Navigator.pushNamed(context, ENTFollowUpscreen.screenRoute);

                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),

        ],),
      ),
    );
  }
}
