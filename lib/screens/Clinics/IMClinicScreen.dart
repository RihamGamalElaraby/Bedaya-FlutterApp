import 'package:bedaya/screens/Clinics/ClinicScreenChose.dart';
import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../widgets/appbar.dart';
import '../../widgets/my_button.dart';
class ClinicScreen extends StatefulWidget {
  static const String screenRoute = 'IMClinicScreen';

  const ClinicScreen({Key? key}) : super(key: key);

  @override
  State<ClinicScreen> createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {
  List<String> Clinic = ['IM','Cardio','Surgery','Ophthalmology','Obs. &Gyn','ENT','Derma','Ortho','Dental'];
   String SelectedClinicone = 'IM';
  String SelectedClinictwo = 'Cardio';
  String SelectedClinicthree = 'Surgery';
  //////////////////////////////////////////
  List<String> CommondiagnosesforIM =
  ['Anemia','Diabetes Mellitus','GERD','UTI','IBS','Gout','Parasitic infections','Bronchial Asthm','Diarrhea',
  'Renal Stone','Headache','Gastritis (H pylori)','Hypertension','CKD',];
  String SelectedCommondiagnosesforIM = 'Anemia';

  TextEditingController ImdiagnoseController = TextEditingController();

  /////////////////////////////////////////////
  // List<String> CommondiagnosesforENT =
  // ['Tonsilitis','Sinusitis','Pharyngitis','Otitis Media','Otitis Externa','Ear wax','Epistaxis','Allergic rhinitis',
  //   'Diarrhea',];
  // String SelectedCommondiagnosesforENT = 'Tonsilitis';
  //////////////////////////////////////////////////
  // List<String> CommondiagnosesforOrtho =
  // ['Osteoarthritis','Muscle Spasm','Slipped Disc','Sciatica','Joint Pain (low back/knee)','Gout',];
  // String SelectedCommondiagnosesforOrtho = 'Osteoarthritis';
  ///////////////////////////////////////////////
  // List<String> CommondiagnosesforCardio =
  // ['Hypertension','Chronic Coronary Syndrome','Sinus Tachycardia','Valvular Heart Disease (MR/AR)',
  //   'Heart Failur',];
  // String SelectedCommondiagnosesforCardio = 'Hypertension';
  /////////////////////////////////////////////////////
  // List<String> CommondiagnosesforOphthalmology =
  // ['Dry Eye','Errors of refraction','Allergic conjunctivitis','Bacterial Conjunctivitis',
  //   'Pterygium','Pterygium','Chalazion','Trichiasis',];
  // String SelectedCommondiagnosesforOphthalmology = 'Dry Eye';
  //////////////////////////////////////////////////////
  // List<String> CommondiagnosesforGyn =
  // ['Vulvu-vaginitis','Fibroid (Leiomyomas)','Polycystic Ovary Syndrome (PCOS)','Endometriosis',
  //   'Pelvic Organ Prolapse POP','Pelvic Inflammatory Disease (PID)','STDS Chlamydia',
  //   'Endometrial Hyperplasia','Endometrial Carcinoma'];
  // String SelectedCommondiagnosesforGyn = 'Vulvu-vaginitis';
  //////////////////////////////////////////////////
  // List<String> CommondiagnosesforSurgery =
  // ['Lipoma','Abscess','Appendicitis','Cholecystitis',
  //   'Hernia','Thyroid goiter',];
  // String SelectedCommondiagnosesforSurgery = 'Lipoma';
  //////////////////////////////////////////////////////////////////
  // List<String> CommondiagnosesforPediatrics =
  // ['GASTROENTERITIS','PARASITES','TONSILITIS','UTI',
  //   'PNEUMONIA','RHEUMTIC FEVER','DIABETES','CONGENITAL HEART DISEASE','CONGENITAL HEART DISEASE'
  // ,'BRONCHIAL ASTHMA '];
  // String SelectedCommondiagnosesforPediatrics = 'PARASITES';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'IM Clinic',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: Form(
        child: SingleChildScrollView(
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
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                        ),),
                    ),
                  )
                ],),
              sizedBoxhight(hight: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      width: 1000,
                      height: 80,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 4,
                              child: defultText(
                                  data: "Patient’s Name:",
                                  c: Colors.black,
                                  x: 17),
                            ),
                            sizedBoxWidth(width: 300),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Code:', c: Colors.black, x: 17)),
                            sizedBoxWidth(width: 50),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Sex:', c: Colors.black, x: 17)),
                          ],
                        ),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(10),
                  height: 150,
                  width: 300,
                  child: Center(
                      child: Text('Internal Medicine Clinic:', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),)),
                ),
              ),
              sizedBoxWidth(width: 20),
              Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 165, 162, 162)),
                    padding: EdgeInsets.all(10),
                    width: 1000,
                    height: 150,
                    child: Column(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                                width: 1000,
                                height: 50,
                                child: Center(
                                  child: defultText(
                                      data: 'Diagnoses:',
                                      c: Colors.white),
                                ))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 2,
                              child: Container(
                                height: 90,
                                width: 350,
                                child: Center(
                                  child: TextFormField(
                                    controller: ImdiagnoseController,
                                    decoration: InputDecoration(
                                      labelText: 'Result',
                                      hoverColor: Colors.black,
                                      focusColor: Colors.green,
                                      fillColor: Colors.green,
                                      border: OutlineInputBorder(),
                                    ),
                                    maxLines: 14,
                                    minLines: 1,
                                    style: TextStyle(color: Colors.black, fontSize: 13),
                                  ),
                                ),
                              ),
                            ),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 4 ,
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  child: Center(
                                    child: DropdownButton<String>(
                                      value: SelectedCommondiagnosesforIM,
                                      items: CommondiagnosesforIM.map((diagonoses) => DropdownMenuItem(
                                        value: diagonoses,
                                          child: Text(diagonoses ,style: TextStyle(
                                            color: Colors.black,),),),).toList(),
                                      onChanged: (diagonoses) => setState(() {
                                        SelectedCommondiagnosesforIM =diagonoses!;
                                      },
                                      ),
                                    ),
                                  ),
                                ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ))
            ],),
              sizedBoxhight(hight: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Add Another Clinic' , style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white
                      ),),
                      sizedBoxWidth(width: 20),
                      IconButton(
                          onPressed: (){
                            Navigator.pushNamed(context, ClinicScreenChose.screenRoute);
                          }
                          , icon: Icon(Icons.add))
                    ],),
                  )

                ],
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
                      onPressed: (){
                        setState(() {
                          CommondiagnosesforIM.add(ImdiagnoseController.text);
                        });
                        // Navigator.pushNamed(context, ChoseLabsScreen.screenRoute)

                      },
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&BacktoEdit',
                      size: 25,
                      onPressed: () => {
                        // Navigator.pushNamed(context, bloodLabScreen.screenRoute)
                      },
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&addNewOne',
                      size: 25,
                      onPressed: () => {
                        // Navigator.pushNamed(context, urineLabscreen.screenRoute)
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
