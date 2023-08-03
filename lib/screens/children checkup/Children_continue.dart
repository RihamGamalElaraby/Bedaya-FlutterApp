import 'package:bedaya/DateModels/patient_childmodel.dart';
import 'package:bedaya/network/my_database.dart';
import 'package:bedaya/screens/children%20checkup/Children_checkup.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:bedaya/widgets/my_button.dart';

class childrenContinue extends StatefulWidget {
  static const String screenRoute = 'childrenContinue';
  const childrenContinue({super.key});

  @override
  State<childrenContinue> createState() => _childrenContinueState();
}

class _childrenContinueState extends State<childrenContinue> {
  TextEditingController grossDev = TextEditingController();
  TextEditingController fineDev = TextEditingController();
  TextEditingController langDev = TextEditingController();
  TextEditingController socialDev = TextEditingController();
  TextEditingController sphinctersDev = TextEditingController();

  TextEditingController storchAnte = TextEditingController();
  TextEditingController diseaseAnte = TextEditingController();
  TextEditingController irradiationAnte = TextEditingController();
  TextEditingController teratogenicAnte = TextEditingController();
  TextEditingController hospitalizationAnte = TextEditingController();

  TextEditingController HbVital = TextEditingController();
  TextEditingController RbsVital = TextEditingController();
  TextEditingController CrtVital = TextEditingController();
  TextEditingController TempVital = TextEditingController();
  TextEditingController Spo2Vital = TextEditingController();
  TextEditingController BpVital = TextEditingController();
  TextEditingController RrVital = TextEditingController();
  TextEditingController HrVital = TextEditingController();

  TextEditingController abdominalExam = TextEditingController();
  TextEditingController chestExam = TextEditingController();
  TextEditingController cardiacExam = TextEditingController();
  TextEditingController localExam = TextEditingController();

  TextEditingController WeightForHeight = TextEditingController();
  TextEditingController heightForAge = TextEditingController();
  TextEditingController Ofc = TextEditingController();
  TextEditingController weightForAge = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController otherClinic = TextEditingController();

  bool yesDeformity = false;
  bool noDeformity = false;
  String Deformity="";

  bool yesGoHome = false;
  bool noGoHome = false;
  String GoHome="";

  bool yesFollow = false;
  bool noFollow = false;
  String followUp="";

  bool Prolonged = false;
  bool Premature = false;
  String natalHist="";

  bool Home = false;
  bool Hospital = false;
  String place="";


  bool UpToDate = false;
  bool Delayed = false;
  bool AnyVaccinations = false;
  String immunization="";

  bool Breast = false;
  bool Weaned = false;
  bool Combined = false;
  bool Artificial = false;
  String DieteticHistory="";

  bool Convulsions = false;
  bool  Pallor = false;
  bool  Jaundice = false;
  bool   Cyanosis = false;
  bool  NICU = false;
  List<String> Neonatal=[];
  List<String> selectedCheckboxesNeonatal = [];

  bool Dental = false;
  bool  Cardio = false;
  bool  Dermatology = false;
  bool   Ophthalmology = false;
  bool  ENT = false;
  List<String> Clinics=[];
  List<String> selectedCheckboxesClinics = [];

  bool PallorComp = false;
  bool  JaundiceComp = false;
  bool  CentralComp = false;
  bool   PeripheralComp = false;
  List<String> Complextions=[];
  List<String> selectedCheckboxesComplextions = [];

  bool Ricketsscreening = false;
  bool  AnemiaScreening = false;
  bool  ParasitesScreening = false;
  bool   PediatricClinicFollowUp = false;
  bool  Otherclinicsfollowup = false;
  List<String> screening=[];
  List<String> selectedCheckboxesScreening = [];

  bool Day1 = false;
  bool Day2 = false;
  bool Day3 = false;
  bool Day4 = false;
  bool Day5 = false;
  bool Male = false;
  bool Female = false;
  bool married = false;
  @override
  Widget build(BuildContext context) {
    PatientChildModel? patient = ModalRoute.of(context)?.settings.arguments as PatientChildModel? ;
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(context: context,
          data: 'Children Checkup',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Immunization History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Up To Date', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: UpToDate, onChanged: (val) {
                                    setState(() {
                                      UpToDate =val! ;
                                      Delayed = false ;
                                      AnyVaccinations = false;
                                    });
                                    if (val!) {
                                      immunization = "Up To Date";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Delayed', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Delayed, onChanged: (val) {
                                    setState(() {
                                      UpToDate =false ;
                                      Delayed = val! ;
                                      AnyVaccinations = false;
                                    });
                                    if (val!) {
                                      immunization = "Delayed";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 4,
                                  child: defultText(
                                      data: 'Didn’t Receive Any Vaccinations',
                                      x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: AnyVaccinations, onChanged: (val) {
                                    setState(() {
                                      UpToDate =false ;
                                      Delayed = false ;
                                      AnyVaccinations = val!;
                                    });
                                    if (val!) {
                                      immunization = "Didn’t Receive Any Vaccinations";
                                    }
                                  })),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Dietetic History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Breast Feeding', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Breast, onChanged: (val) {
                                    setState(() {
                                      Breast =val! ;
                                      Artificial = false ;
                                      Combined = false;
                                      Weaned=false;
                                    });
                                    if (val!) {
                                      DieteticHistory = "Breast Feeding";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Artificial Feeding', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Artificial, onChanged: (val) {
                                    setState(() {
                                      Breast =false ;
                                      Artificial = val! ;
                                      Combined = false;
                                      Weaned=false;
                                    });
                                    if (val!) {
                                      DieteticHistory = "Artificial Feeding";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Combined', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Combined, onChanged: (val) {
                                    setState(() {
                                      Breast =false ;
                                      Artificial = false ;
                                      Combined = val!;
                                      Weaned=false;
                                    });
                                    if (val!) {
                                      DieteticHistory = "Combined";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Weaned', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Weaned, onChanged: (val) {
                                    setState(() {
                                      Breast = false;
                                      Artificial = false ;
                                      Combined = false;
                                      Weaned=val!;
                                    });
                                    if (val!) {
                                      DieteticHistory = "Weaned";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Developmental History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 2000,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child:
                                      defultText(data: 'Gross Motor', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: grossDev,
                                      text: 'Gross Motor', width: 170)),

                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child:
                                      defultText(data: 'Fine Motor ', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: fineDev,
                                      text: 'Fine Motor', width: 170)),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Language', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: langDev,
                                      text: 'Language', width: 170)),

                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Social', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: socialDev,
                                      text: 'Social', width: 170)),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Sphincters', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: sphinctersDev,
                                      text: 'Sphincters', width: 170)),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Antenatal History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 2000,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'STORCH', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: storchAnte,
                                      text: 'STORCH', width: 200)),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Disease', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: diseaseAnte,
                                      text: 'Disease', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child:
                                      defultText(data: 'Irradiation', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: irradiationAnte,
                                      text: 'Irradiation', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Teratogenic Drugs', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: teratogenicAnte,
                                      text: 'Teratogenic Drugs', width: 200)),
                              // Flexible(
                              //     flex: 1,
                              //     child: Checkbox(
                              //         value: Day1, onChanged: (val) {})),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Hospitalization', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: defultTextField(controller: hospitalizationAnte,
                                      text: 'Hospitalization', width: 200)),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Natal History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 3,
                                  child: defultText(
                                      data: 'Premature Rupture Of Membranes',
                                      x: 14)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Premature, onChanged: (val) {
                                    setState(() {
                                      Premature =val! ;
                                      Prolonged = false ;
                                    });
                                    if (val!) {
                                      natalHist = "Premature Rupture Of Membranes";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 2,
                                  child: defultText(
                                      data: 'Prolonged Delivery', x: 14)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Prolonged, onChanged: (val) {
                                    setState(() {
                                      Premature = false;
                                      Prolonged = val! ;
                                    });
                                    if (val!) {
                                      natalHist = "Prolonged Delivery";
                                    }
                                  })),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Place:', x: 15)),
                              sizedBoxWidth(width: 3),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Home', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Home, onChanged: (val) {
                                    setState(() {
                                      Home =val! ;
                                      Hospital = false ;
                                    });
                                    if (val!) {
                                      place = "Home";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Hospital', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Hospital, onChanged: (val) {
                                    setState(() {
                                      Home =false ;
                                      Hospital = val! ;
                                    });
                                    if (val!) {
                                      place = "Hospital";
                                    }
                                  })),
                              sizedBoxWidth(width: 7),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: defultText(
                                data: 'Neonatal History', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          height: 70,
                          width: 2000,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'NICU', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: NICU, onChanged: (val) {
                                    setState(() {
                                      NICU = val!;
                                      if (val) {
                                        selectedCheckboxesNeonatal.add("NICU");
                                      } else {
                                        selectedCheckboxesNeonatal.remove("NICU");
                                      }
                                    });

                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Cyanosis', x: 15)),
                              // Flexible(
                              //     flex: 1,
                              //     child: defultTextField(
                              //         text: 'Cyanosis', width: 200)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Cyanosis, onChanged: (val) {
                                    setState(() {
                                      Cyanosis = val!;
                                      if (val) {
                                        selectedCheckboxesNeonatal.add("Cyanosis");
                                      } else {
                                        selectedCheckboxesNeonatal.remove("Cyanosis");
                                      }
                                    });

                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Jaundice', x: 15)),
                              // Flexible(
                              //     flex: 1,
                              //     child: defultTextField(
                              //         text: 'Jaundice', width: 200)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Jaundice, onChanged: (val) {
                                    setState(() {
                                      Jaundice = val!;
                                      if (val) {
                                        selectedCheckboxesNeonatal.add("Jaundice");
                                      } else {
                                        selectedCheckboxesNeonatal.remove("Jaundice");
                                      }
                                    });

                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child: defultText(data: 'Pallor', x: 15)),
                              // Flexible(
                              //     flex: 1,
                              //     child: defultTextField(
                              //         text: 'Pallor', width: 200)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Pallor, onChanged: (val) {
                                    setState(() {
                                      Pallor = val!;
                                      if (val) {
                                        selectedCheckboxesNeonatal.add("Pallor");
                                      } else {
                                        selectedCheckboxesNeonatal.remove("Pallor");
                                      }
                                    });

                                  })),
                              sizedBoxWidth(width: 7),
                              Flexible(
                                  flex: 1,
                                  child:
                                      defultText(data: 'Convulsions', x: 15)),
                              Flexible(
                                  flex: 1,
                                  child: Checkbox(
                                      value: Convulsions, onChanged: (val) {
                                    setState(() {
                                      Convulsions = val!;
                                      if (val) {
                                        selectedCheckboxesNeonatal.add("Convulsions");
                                      } else {
                                        selectedCheckboxesNeonatal.remove("Convulsions");
                                      }
                                    });

                                  })),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'General Examination',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            ),
            sizedBoxhight(hight: 30), // khlas lw kda e2fly yabenty wana hakhlsoo   kml ana henna
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Vital Data', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1500,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'HR:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                            controller: HrVital,
                                              text: 'HR',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'RR:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(controller: RrVital,
                                              text: 'RR',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'BP:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(controller: BpVital,

                                              text: 'BP',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  // width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // sizedBoxhight(hight: 10),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Spo2:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                            controller: Spo2Vital,
                                              text: 'Spo2',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Temp:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                            controller: TempVital,
                                              text: 'Temp',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'CRT:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(controller: CrtVital,
                                              text: 'CRT',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'RBS:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(controller: RbsVital,
                                              text: 'RBS',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  // width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // sizedBoxhight(hight: 10),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Hb:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                            controller: HbVital,
                                              text: 'Hb',
                                              hight: 60,
                                              width: 300))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Complexions', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 80,
                    width: 1500,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 80,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Pallor:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: Checkbox(
                                              value: PallorComp,
                                              onChanged: (val) {
                                                setState(() {
                                                  PallorComp = val!;
                                                  if (val) {
                                                    selectedCheckboxesComplextions.add("Pallor");
                                                  } else {
                                                    selectedCheckboxesComplextions.remove("Pallor");
                                                  }
                                                });

                                              })),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Jaundice:')),
                                      Flexible(
                                          flex: 1,
                                          child: Checkbox(
                                              value: JaundiceComp,
                                              onChanged: (val) {
                                                setState(() {
                                                  JaundiceComp = val!;
                                                  if (val) {
                                                    selectedCheckboxesComplextions.add("Jaundice");
                                                  } else {
                                                    selectedCheckboxesComplextions.remove("Jaundice");
                                                  }
                                                });

                                              })),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Cyanosis:')),
                                      sizedBoxWidth(width: 10),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Central')),
                                      Flexible(
                                          flex: 1,
                                          child: Checkbox(
                                              value: CentralComp,
                                              onChanged: (val) {
                                                setState(() {
                                                  CentralComp = val!;
                                                  if (val) {
                                                    selectedCheckboxesComplextions.add("Central");
                                                  } else {
                                                    selectedCheckboxesComplextions.remove("Central");
                                                  }
                                                });

                                              })),
                                      Flexible(
                                          flex: 1,
                                          child:
                                              defultText(data: 'Peripheral')),
                                      Flexible(
                                        flex: 1,
                                        child: Checkbox(
                                            value: PeripheralComp, onChanged: (val) {
                                          setState(() {
                                            PeripheralComp = val!;
                                            if (val) {
                                              selectedCheckboxesComplextions.add("Peripheral");
                                            } else {
                                              selectedCheckboxesComplextions.remove("Peripheral");
                                            }
                                          });

                                        }),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Anthropometry', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1500,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Weight:')),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 3,
                                          child: defultTextField(
                                            controller: weight,
                                              text: 'Weight',
                                              hight: 60,
                                              width: 300)),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'kg')),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Height:')),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 3,
                                          child: defultTextField(controller: height,
                                              text: 'Height',
                                              hight: 60,
                                              width: 300)),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'cm')),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'OFC:')),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 4,
                                          child: defultTextField(
                                            controller: Ofc,
                                              text: 'OFC',
                                              hight: 60,
                                              width: 300)),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'cm')),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 14, 64, 15)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(
                                              data: 'Weight for Age:')),
                                      sizedBoxhight(hight: 2),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                            controller: weightForAge,
                                              text: 'Weight for Age',
                                              hight: 60,
                                              width: 100))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(
                                              data: 'Height for Age:')),
                                      sizedBoxhight(hight: 2),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                            controller: heightForAge,
                                              text: 'Height for Age',
                                              hight: 60,
                                              width: 100))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(
                                              data: 'Weight for Height:')),
                                      sizedBoxhight(hight: 2),
                                      Flexible(
                                          flex: 1,
                                          child: defultTextField(
                                            controller: WeightForHeight,
                                              text: 'Weight for Height',
                                              hight: 60,
                                              width: 100))
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                child: Container(
                                  // width: 350,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // sizedBoxhight(hight: 10),
                                      sizedBoxWidth(width: 10),
                                      Flexible(
                                          flex: 2,
                                          child: defultText(data: 'Deformity')),
                                      sizedBoxWidth(width: 5),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'Yes')),
                                      Flexible(
                                          flex: 1,
                                          child: Checkbox(
                                              value: yesDeformity,
                                              onChanged: (val) {
                                                setState(() {
                                                  yesDeformity =val! ;
                                                  noDeformity = false ;
                                                });
                                                if (val!) {
                                                  Deformity = "yes Deformity";
                                                }
                                              })),
                                      Flexible(
                                          flex: 1,
                                          child: defultText(data: 'NO')),
                                      Flexible(
                                          flex: 1,
                                          child: Checkbox(
                                              value: noDeformity,
                                              onChanged: (val) {
                                                setState(() {
                                                  yesDeformity =false;
                                                  noDeformity = val!  ;
                                                });
                                                if (val!) {
                                                  Deformity = "No Deformity";
                                                }
                                              })),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 10),
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'Local Examination',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 140,
                    width: 20,
                    // padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
                    height: 140,
                    width: 1700,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 14, 64, 15),
                    ),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 1400,
                        // padding: EdgeInsets.symmetric(vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: defultTextField(
                          controller: localExam,
                          text: 'Local Examination',
                          hight: 100,
                          max: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 140,
                    width: 20,
                    // padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Cardiac Examination', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1700,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 14, 64, 15),
                    ),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 1200,
                        // padding: EdgeInsets.symmetric(vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: defultTextField(
                          controller: cardiacExam,
                          text: 'Cardiac Examination',
                          hight: 100,
                          max: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Chest Examination', x: 20, c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1700,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 14, 64, 15),
                    ),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 1200,
                        // padding: EdgeInsets.symmetric(vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: defultTextField(
                          controller: chestExam,
                          text: 'Chest Examination',
                          hight: 100,
                          max: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 191, 191),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: defultText(
                          data: 'Abdominal Examination',
                          x: 18,
                          c: Colors.black),
                    ),
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    width: 1700,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 14, 64, 15),
                    ),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 1200,
                        // padding: EdgeInsets.symmetric(vertical: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: defultTextField(
                          controller: abdominalExam,
                          text: 'Abdominal Examination',
                          hight: 100,
                          max: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ), //end
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'Referral To Other Clinics',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Flexible(
                //     flex: 1,
                //     child: defultText(
                //       data: 'IM',
                //     )),
                // Flexible(
                //     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 1,
                    child: defultText(
                      data: 'ENT',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: ENT, onChanged: (val) {
                  setState(() {
                    ENT = val!;
                    if (val) {
                      selectedCheckboxesClinics.add("ENT");
                    } else {
                      selectedCheckboxesClinics.remove("ENT");
                    }
                  });

                })),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 2,
                    child: defultText(
                      data: 'Ophthalmology',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Ophthalmology, onChanged: (val) {
                  setState(() {
                    Ophthalmology = val!;
                    if (val) {
                      selectedCheckboxesClinics.add("Ophthalmology");
                    } else {
                      selectedCheckboxesClinics.remove("Ophthalmology");
                    }
                  });

                })),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 2,
                    child: defultText(
                      data: 'Dermatology',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Dermatology, onChanged: (val) {
                  setState(() {
                    Dermatology = val!;
                    if (val) {
                      selectedCheckboxesClinics.add("Dermatology");
                    } else {
                      selectedCheckboxesClinics.remove("Dermatology");
                    }
                  });

                })),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 1,
                    child: defultText(
                      data: 'Cardio',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Cardio, onChanged: (val) {
                  setState(() {
                    Cardio = val!;
                    if (val) {
                      selectedCheckboxesClinics.add("Cardio");
                    } else {
                      selectedCheckboxesClinics.remove("Cardio");
                    }
                  });

                })),
                sizedBoxWidth(width: 7),
                Flexible(
                    flex: 1,
                    child: defultText(
                      data: 'Dental',
                    )),
                Flexible(
                    flex: 1, child: Checkbox(value: Dental, onChanged: (val) {
                  setState(() {
                    Dental = val!;
                    if (val) {
                      selectedCheckboxesClinics.add("Dental");
                    } else {
                      selectedCheckboxesClinics.remove("Dental");
                    }
                  });

                })),
                sizedBoxWidth(width: 7),
                Flexible(
                  flex: 1,
                  child: defultText(
                    data: 'Other',
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(flex: 2, child: defultTextField(text: 'other',controller: otherClinic)),

              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                        'Screening',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
              ],),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Flexible(
                    flex: 1, child: defultText(data: ' Rickets screening(6m – 5y)', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(value: Ricketsscreening, onChanged: (val) {
                      setState(() {
                        Ricketsscreening = val!;
                        if (val) {
                          selectedCheckboxesScreening.add(" Rickets screening(6m – 5y)");
                        } else {
                          selectedCheckboxesScreening.remove(" Rickets screening(6m – 5y)");
                        }
                      });

                    })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: "Anemia Screening (2 - 5y)", x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(value: AnemiaScreening, onChanged: (val) {
                      setState(() {
                        AnemiaScreening = val!;
                        if (val) {
                          selectedCheckboxesScreening.add("Anemia Screening (2 - 5y)");
                        } else {
                          selectedCheckboxesScreening.remove("Anemia Screening (2 - 5y)");
                        }
                      });

                    })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Parasites Screening', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(value: ParasitesScreening, onChanged: (val){
                      setState(() {
                        ParasitesScreening = val!;
                        if (val) {
                          selectedCheckboxesScreening.add("Parasites Screening");
                        } else {
                          selectedCheckboxesScreening.remove("Parasites Screening");
                        }
                      });

                    })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Pediatric Clinic Follow Up', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(value: PediatricClinicFollowUp, onChanged: (val){
                      setState(() {
                        PediatricClinicFollowUp = val!;
                        if (val) {
                          selectedCheckboxesScreening.add("Pediatric Clinic Follow Up");
                        } else {
                          selectedCheckboxesScreening.remove("Pediatric Clinic Follow Up");
                        }
                      });

                    })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Other clinics follow up', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(value: Otherclinicsfollowup, onChanged: (val){
                      setState(() {
                        Otherclinicsfollowup = val!;
                        if (val) {
                          selectedCheckboxesScreening.add("Other clinics follow up");
                        } else {
                          selectedCheckboxesScreening.remove("Other clinics follow up");
                        }
                      });

                    })),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                    'Follow up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'YES', x: 12)),
                Flexible(
                    flex: 1, child: Checkbox(value: yesFollow, onChanged: (val) {
                  setState(() {
                    yesFollow =val! ;
                    noFollow = false ;
                  });
                  if (val!) {
                    followUp = "yes Follow Up";
                  }
                })),
                sizedBoxWidth(width: 5),
                Flexible(flex: 1, child: defultText(data: 'NO', x: 12)),
                Flexible(
                    flex: 1, child: Checkbox(value: noFollow, onChanged: (val) {
                  setState(() {
                    yesFollow =false ;
                    noFollow = val! ;
                  });
                  if (val!) {
                    followUp = "No Follow Up";
                  }
                })),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                      child: Text(
                        'Go Home',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
              ],),
            Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 1, child: defultText(data: 'Yes', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: yesGoHome, onChanged: (val) {
                        setState(() {
                          yesGoHome =val! ;
                          noGoHome = false ;
                        });
                        if (val!) {
                          GoHome = "yes Go Home";
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: "NO", x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: noGoHome, onChanged: (val) {
                        setState(() {
                          noGoHome =val! ;
                          yesGoHome = false ;
                        });
                        if (val!) {
                          GoHome = "No Go Home";
                        }
                      })),
                  sizedBoxWidth(width: 10),
                ]

            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mysignin(
                  color: Colors.green,
                  x: Colors.white,
                  title: 'Save&Done',
                  size: 25,
                  onPressed: (){
                    Neonatal.addAll(selectedCheckboxesNeonatal);
                    selectedCheckboxesNeonatal.clear();

                    Complextions.addAll(selectedCheckboxesComplextions);
                    selectedCheckboxesComplextions.clear();

                    Clinics.addAll(selectedCheckboxesClinics);
                    selectedCheckboxesClinics.clear();

                    screening.addAll(selectedCheckboxesScreening);
                    selectedCheckboxesScreening.clear();

                    patient?.immunizationHistChild = immunization;
                    patient?.dieteticHistChild=DieteticHistory;
                    patient?.developmentalHistGross = grossDev.text;
                    patient?.developmentalHistFine=fineDev.text;
                    patient?.developmentalHistLanguage=langDev.text;
                    patient?.developmentalHistSocial=socialDev.text;
                    patient?.developmentalHistSphincters=sphinctersDev.text;
                    patient?.antenatalHistDisease=diseaseAnte.text;
                    patient?.antenatalHistHospitalization=hospitalizationAnte.text;
                    patient?.antenatalHistirradiation=irradiationAnte.text;
                    patient?.antenatalHistStorch=storchAnte.text;
                    patient?.antenatalHistTeratogenic=teratogenicAnte.text;
                    patient?.natalHistChild=natalHist;
                    patient?.neonNatalHistChild=Neonatal;
                    patient?.vitalBpChild=BpVital.text;
                    patient?.vitalCrtChild=CrtVital.text;
                    patient?.vitalHbChild=HbVital.text;
                    patient?.vitalHrChild=HrVital.text;
                    patient?.vitalRbsChild=RbsVital.text;
                    patient?.vitalRrChild=RrVital.text;
                    patient?.vitalSpo2Child=Spo2Vital.text;
                    patient?.vitalTempChild=TempVital.text;
                    patient?.complextionsChild=Complextions;
                    patient?.anthropometryDeformity=Deformity;
                    patient?.anthropometryHeight=height.text;
                    patient?.anthropometryHeightForAge=heightForAge.text;
                    patient?.anthropometryOfc=Ofc.text;
                    patient?.anthropometryWeight=weight.text;
                    patient?.anthropometryWeightForAge=weightForAge.text;
                    patient?.anthropometryWeightForHeight=WeightForHeight.text;
                    patient?.localExamChild=localExam.text;
                    patient?.cardiacExamChild=cardiacExam.text;
                    patient?.chestExamChild=chestExam.text;
                    patient?.abdominalExamChild=abdominalExam.text;
                    patient?.referralClinicsChild=Clinics;
                    patient?.screeningChild=screening;
                    patient?.followUpChild=followUp;
                    patient?.goHomeChild=GoHome;
                    MyDataBase.updatePatientChild(patient!);
                    print("patient exditied secceessfulllyyyyy");



                    Navigator.pushNamed(context, childrenCheckup.screenRoute);
                  },
                ),
                sizedBoxWidth(width: 20),
                mysignin(
                  color: Colors.green,
                  x: Colors.white,
                  title: 'Save&BacktoEdit',
                  size: 25,
                  onPressed: () => {
                    Navigator.pushNamed(context, childrenCheckup.screenRoute)
                  },
                ),
                sizedBoxWidth(width: 20),
                mysignin(
                  color: Colors.green,
                  x: Colors.white,
                  title: 'Save&GotoFollowup',
                  size: 25,
                  onPressed: () {
                    // Navigator.pushNamed(
                    //     context, continueCheckupAdult.screenRoute)
                  },
                ),
              ],
            ),
            sizedBoxhight(hight: 40),
          ],
        ),
      ),
    );
  }
}
