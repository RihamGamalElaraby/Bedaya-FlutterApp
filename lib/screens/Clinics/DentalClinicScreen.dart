import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../component/component.dart';
import '../../network/my_database.dart';
import '../../widgets/appbar.dart';
import '../../widgets/my_button.dart';
import 'ClinicScreenChose.dart';
class DentalClinicScreen extends StatefulWidget {
  static const String screenRoute = 'DentalClinicScreen';

  const DentalClinicScreen({Key? key}) : super(key: key);

  @override
  State<DentalClinicScreen> createState() => _DentalClinicScreenState();
}

class _DentalClinicScreenState extends State<DentalClinicScreen> {
  List<String> CommondiagnosesforDental= ['-',];
  // String SelectedCommondiagnosesforDental = '-';
  List<String> SelectedCommondiagnosesforDental = [];
  TextEditingController codeController = TextEditingController();
  TextEditingController dentaldiagnoseController = TextEditingController();


  List<String> Dentaltreatment =  [
    "Adcocycline", "Adol", "AggraX", "Aggrex", "Alexoprine", "All-vent", "AllerBan", "Ambezim-G", "Amrizole", "Amryl",
    "Antinal", "Antizole", "Artelac", "AteNO 100mg", "AteNO 50mg", "Atorstat", "Auggram 1 gm", "Auggram (Syrup)",
    "Augmentin 1g", "Babetone (Syrup)", "Balaam", "Balsam", "Bambedil", "Bedrevide", "Bendax suspension 60 ml",
    "Bendax tablet 200mg", "Betaclotri", "Betaserc", "Bistol", "Bruffen", "Brufen 400mg", "Caldin C", "Calcium D3F",
    "Calfate", "Cardilol", "Cefrone", "Ceftriaxone", "CIDOPHAGE", "Cippro 500 mg", "Codaphen-N", "Concor", "Convetin",
    "Cyanaro", "Daktacot", "Daflon 500mg", "Declofenac", "Derma Med", "Dexaphen", "Diavance", "Diasmect", "Digenorm",
    "Doxycost 200mg", "Eucarbon", "Examide", "Extrauma", "Farcotilium", "Flagellat forte", "Flagyl", "Flagyl 250mg",
    "Fluconazole", "Flumox 500", "Fluver", "Fusi-Top", "Fusiderm", "Gaptin 400mg", "Gastorelive", "Hemojet", "Hiccal",
    "Hibiotic 1gm", "Hikma", "Isopto maxitrol", "Isoptin", "Kidistars", "Kokast", "Lacteol fort", "Lecteol fort",
    "Levohistam", "Levofloxacin", "Lignocaine hydrochloride", "Lipicole 10", "Lipicole 20", "Lipona", "Marevan",
    "Maxilase", "MEBO", "Megalase", "Meclopram", "Megafen N", "Mepafuran 100", "Mepafuran 50mg", "Misaclor",
    "Moxipen 500", "Mucosta", "Mucosol", "Mucotec", "Nanazoxid", "Neo-bronchophane", "Neo Minophylline", "Neuroton",
    "Nercefaxon", "Neximerican 20 mg", "Neximerican 40 mg", "Newbezim", "Norvasc", "Octatron", "Octozinc", "OmeZ 20",
    "Oracure", "Orchatears Plus", "Otrivin (Adults)", "Otrivin (Baby Saline)", "Otrivin (Children)", "Pantopi 20",
    "Pantoprazole", "Paracetamol 500mg", "Picolax", "Piroxiden", "Poly fresh", "Povidone", "Quibron -T/SR", "Rampecardin",
    "Regcor", "Remowax", "Renal-S", "Reparil-Gel N", "Romafen", "Romalex", "Rowatinex", "Salbovent 2mg", "Selgon",
    "SiderAl", "Sinopril 10mg", "Sinopril Co", "Spasmofree", "Suprax", "Tamsunorm", "Tavanic", "Temporal", "Tiralepsy",
    "Top-flam", "Trillerg", "Tritace Comp LS", "Tritone 100 mg", "Tritone 200mg", "Treflucan", "Uracil", "UrineX",
    "Urivin", "URAID-N", "Urisofalk", "Urinex", "Vagyl", "Vasopine", "Vermizole", "Viacalm", "Vidrop", "Viralstat",
    "Visceralgine", "Windy", "Xaltec", "Zisrocin", "Zyrtec"
  ];
  TextEditingController  TreatmentController =TextEditingController ();
  List<String> SelectedTreatment = [] ;
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
          data: 'Dental Clinic',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxhight(hight: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      padding: EdgeInsets.all(10),
                      height: 80,
                      width: 250,
                      child: Center(
                          child: Text('Dental Clinic:', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),)),
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 20),
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
                                        controller: dentaldiagnoseController,
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
                                      child: DropDownMultiSelect(
                                        options: CommondiagnosesforDental,
                                        selectedValues: SelectedCommondiagnosesforDental,
                                        onChanged: (value) {
                                          setState(() {
                                            SelectedCommondiagnosesforDental = value;
                                          });
                                          print('you have selected $SelectedCommondiagnosesforDental fruits.');
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
                ],),
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
                                          data: 'Treatment:',
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
                                        controller: TreatmentController,
                                        decoration: InputDecoration(
                                          labelText: 'Treatment',
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
                                      child: DropDownMultiSelect(
                                        options: Dentaltreatment,
                                        selectedValues: SelectedTreatment,
                                        onChanged: (value) {
                                          setState(() {
                                            SelectedTreatment = value;
                                          });
                                          print('you have selected $SelectedTreatment fruits.');
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
                ],),
              sizedBoxhight(hight: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save& add another Patient',
                      size: 25,
                      onPressed: (){
                        setState(() {
                          CommondiagnosesforDental.add(dentaldiagnoseController.text);
                          Dentaltreatment.add(TreatmentController.text);
                          SelectedCommondiagnosesforDental.add(dentaldiagnoseController.text);
                          SelectedTreatment.add(TreatmentController.text);
                        });
                        patientAd.Dentaldiagnoses = SelectedCommondiagnosesforDental;
                        patientAd.DentalTreatment = SelectedTreatment;
                        patientAd.reportDentaldiagnoses="done";
                        MyDataBase.updatePatientAdult(patientAd);
                        // child
                        patientCh.Dentaldiagnoses = SelectedCommondiagnosesforDental;
                        patientCh.DentalTreatment = SelectedTreatment;
                        patientCh.reportDentaldiagnoses="done";
                        MyDataBase.updatePatientChild(patientCh);
                        clearTextField(TreatmentController, dentaldiagnoseController);
                        clearList(SelectedTreatment, SelectedCommondiagnosesforDental);
                        // Navigator.pushNamed(context, ChoseLabsScreen.screenRoute)
                      },
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                ],
              ),
              sizedBoxhight(hight: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text('Add Another Clinic' , style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white
                            ),),
                          ),
                          sizedBoxWidth(width: 20),
                          Flexible(child:  IconButton(
                              onPressed: (){
                                Navigator.pushNamed(context, ClinicScreenChose.screenRoute);
                              }
                              , icon: Icon(Icons.add)))
                        ],),
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
