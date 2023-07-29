import 'package:bedaya/DateModels/PatientAdultModel.dart';
import 'package:bedaya/network/my_database.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_checkup.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_continue.dart';

class adultCheckThird extends StatefulWidget {
  static const String screenRoute = 'adultCheckThird';

  const adultCheckThird({super.key});

  @override
  State<adultCheckThird> createState() => _adultCheckThirdState();
}

class _adultCheckThirdState extends State<adultCheckThird> {
  var formKey = GlobalKey<FormState>();

  bool Day1 = false;
  bool Day2 = false;
  bool Day3 = false;
  bool Day4 = false;
  bool Day5 = false;

  bool htn = false;
  bool dm = false;
  bool hcv = false;
  bool rhd = false;
  List<String> medicalPastHistory = [];
  List<String> selectedCheckboxesMedical = [];

  bool Peripheral = false;
  bool Pallor = false;
  bool Jaundice = false;
  bool Central = false;
  List<String> complextionGeneralExamination=[];
  List<String> selectedCheckboxesComplextion = [];

  bool OGTT = false;
  bool UTI = false;
  bool Nephropathy = false;
  List<String> screening=[];
  List<String> selectedCheckboxesScreening = [];

  bool IM = false;
  bool Dental = false;
  bool Ortho = false;
  bool Derma = false;
  bool ENT = false;
  bool ObsGyn  = false;
  bool Ophth = false;
  bool Surgery = false;
  bool Cardio = false;
  List<String> clinics=[];
  List<String> selectedCheckboxesClinics = [];




  bool no = false;
  bool occasional = false;
  bool regular = false;
  String bloodTransfusion = "";

  bool icu = false;
  bool operation = false;
  String surgical="";

  bool yesAllergy = false;
  bool noAllergy = false;
  String Allergy="";

  bool yesFollowup = false;
  bool noFollowup = false;
  String Followup="";

  bool yesGoHome = false;
  bool noGoHome = false;
  String GoHome="";

  bool yesCommdev = false;
  bool noCommdev = false;
  String CommunityDevelopment="";

  bool antiHTN = false;
  bool oralHypoglycemic = false;
  bool antiepileptic = false;
  bool antidiuretic = false;
  bool otherDrug = false;
  List<String> drugsChronicDiseases = [];
  List<String> selectedCheckboxesDrugs = [];

  bool Htn = false;
  bool DM = false;
  bool SimilarCondition = false;
  bool OtherFamilyHistory = false;
  List<String> familyHistory = [];
  List<String> selectedCheckboxesfamily = [];

  TextEditingController Bp1Controller =TextEditingController();

  TextEditingController Bp2Controller =TextEditingController();

  TextEditingController mmHG1Controller =TextEditingController();

  TextEditingController mmHG2Controller =TextEditingController();


  TextEditingController otherMedicalHistoryController = TextEditingController();

  TextEditingController specifyAllergyController = TextEditingController();

  TextEditingController durationBloodTransfusionController = TextEditingController();

  TextEditingController operationSurgicalController = TextEditingController();

  TextEditingController otherDrugController = TextEditingController();

  TextEditingController otherFamilyHistoryController = TextEditingController();

  TextEditingController o2satController = TextEditingController();
  TextEditingController hrVitalController = TextEditingController();
  TextEditingController tempVitalController = TextEditingController();
  TextEditingController randomBloodSugarController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    PatientAdultModel? patientModel = ModalRoute.of(context)?.settings.arguments as PatientAdultModel? ;

    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Adult Checkup',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
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
                          'Past History',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
              sizedBoxhight(hight: 20),
              Container(
                width: 2000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(flex: 2, child: defultText(data: 'Medical:')),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 1, child: defultText(data: 'HTN', x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: htn, onChanged: (val) {
                          setState(() {
                            htn = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("HTN");
                            } else {
                              selectedCheckboxesMedical.remove("HTN");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 1, child: defultText(data: 'DM', x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: dm, onChanged: (val) {
                          setState(() {
                            dm = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("DM");
                            } else {
                              selectedCheckboxesMedical.remove("DM");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 1, child: defultText(data: 'HCV', x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: hcv, onChanged: (val) {
                          setState(() {
                            hcv = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("HCV");
                            } else {
                              selectedCheckboxesMedical.remove("HCV");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 1, child: defultText(data: 'RHD', x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: rhd, onChanged: (val) {
                          setState(() {
                            rhd = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("RHD");
                            } else {
                              selectedCheckboxesMedical.remove("RHD");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    // Flexible(
                    //   flex: 1,
                    //   child: defultText(
                    //     data: 'IF Married:',
                    //   ),
                    // ),
                    // sizedBoxWidth(width: 10),
                    Flexible(flex: 1, child: defultText(data: 'Others:', x: 12)),
                    sizedBoxWidth(width: 3),
                    Flexible(
                        flex: 3,
                        child: defultTextField(text: 'Others', width: 200,controller: otherMedicalHistoryController)),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 2, child: defultText(data: 'Allergy:', x: 12)),
                    sizedBoxWidth(width: 5),

                    Flexible(
                        flex: 1,
                        child: defultText(
                          data: 'Yes:',
                        )),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: yesAllergy, onChanged: (val) {
                          setState(() {
                            yesAllergy =val! ;
                            noAllergy = false ;
                          });
                          if (val!) {
                            Allergy = "yes Allergy";
                          }
                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 2,
                        child: defultText(
                          data: 'No:',
                        )),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: noAllergy, onChanged: (val) {
                          setState(() {
                            yesAllergy =false ;
                            noAllergy = val! ;
                          });
                          if (val!) {
                            Allergy = "no Allergy";
                          }
                        })),
                    sizedBoxWidth(width: 5),

                    Flexible(
                      flex: 3,
                      child: defultText(
                        data: 'IF Yes:',
                      ),
                    ),
                    sizedBoxWidth(width: 5),
                    Flexible(
                      flex: 2,
                      child: defultText(
                        data: 'Specify:',
                      ),
                    ),
                    Flexible(
                        flex: 3,
                        child: defultTextField(text: 'Specify', width: 200,controller: specifyAllergyController,validator: (String? value) {
                          if (yesAllergy && (value == null || value.trim().isEmpty)) {
                            return "Specify Allergy";
                          }else {
                            return null;
                          }
                        })),
                  ],
                ),
              ),
              sizedBoxhight(hight: 20),
              Container(
                width: 2000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                        flex: 4, child: defultText(data: 'Blood Transfusion:')),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 1, child: defultText(data: 'No', x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: no, onChanged: (val) {
                          setState(() {
                            no = val!;
                            occasional = false;
                            regular = false;
                            if (val) {
                              bloodTransfusion="no Blood Transfusion";
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 1, child: defultText(data: 'Occasional', x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: occasional, onChanged: (val) {
                          setState(() {
                            no = false;
                            occasional = val!;
                            regular = false;
                            if (val) {
                              bloodTransfusion="occasional Blood Transfusion";
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 1, child: defultText(data: 'Regular', x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: regular, onChanged: (val) {
                          setState(() {
                            no = false;
                            occasional = false;
                            regular = val!;
                            if (val) {
                              bloodTransfusion="regular Blood Transfusion";
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    // Flexible(flex: 1, child: defultText(data: 'RHD', x: 12)),
                    // Flexible(
                    //     flex: 1,
                    //     child: Checkbox(value: Day1, onChanged: (val) {})),
                    // sizedBoxWidth(width: 5),
                    // Flexible(
                    //   flex: 1,
                    //   child: defultText(
                    //     data: 'IF Married:',
                    //   ),
                    // ),
                    // sizedBoxWidth(width: 10),
                    Flexible(
                        flex: 1, child: defultText(data: 'Duration:', x: 12)),
                    sizedBoxWidth(width: 3),
                    Flexible(
                        flex: 3,
                        child: defultTextField(
                          text: 'Duration',
                          width: 120,
                          controller: durationBloodTransfusionController
                        )),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 2, child: defultText(data: 'Surgical:', x: 12)),
                    sizedBoxWidth(width: 5),

                    Flexible(
                        flex: 1,
                        child: defultText(
                          data: 'ICU',
                        )),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: icu, onChanged: (val) {
                          setState(() {
                            icu = val!;
                            operation = false;
                            if (val) {
                              surgical="icu";
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 2,
                        child: defultText(
                          data: 'Operation',
                        )),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: operation, onChanged: (val) {
                          setState(() {
                            operation = val!;
                            icu = false;
                            if (val) {
                              surgical="operation";
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),

                    Flexible(
                        flex: 3,
                        child: defultTextField(text: 'Operation', width: 120,controller: operationSurgicalController)),
                  ],
                ),
              ),
              sizedBoxhight(hight: 20),
              Container(
                width: 2000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                        flex: 4,
                        child: defultText(data: 'Drugs for Chronic Diseases:')),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 3, child: defultText(data: 'antiHTN', x: 15)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: antiHTN, onChanged: (val) {
                          setState(() {
                            antiHTN = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("antiHTN");
                            } else {
                              selectedCheckboxesMedical.remove("antiHTN");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 3,
                        child: defultText(data: 'Oral Hypoglycemic', x: 15)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: oralHypoglycemic, onChanged: (val) {
                          setState(() {
                            oralHypoglycemic = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("oralHypoglycemic");
                            } else {
                              selectedCheckboxesMedical.remove("oralHypoglycemic");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 3, child: defultText(data: 'Antiepileptic', x: 15)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: antiepileptic, onChanged: (val) {
                          setState(() {
                            antiepileptic = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("Antiepileptic");
                            } else {
                              selectedCheckboxesMedical.remove("Antiepileptic");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 3, child: defultText(data: 'Antidiuretic', x: 15)),
                    Flexible(
                        flex: 2,
                        child: Checkbox(value: antidiuretic, onChanged: (val) {
                          setState(() {
                            antidiuretic = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("Antidiuretic");
                            } else {
                              selectedCheckboxesMedical.remove("Antidiuretic");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 1, child: defultText(data: 'Others', x: 15)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: otherDrug, onChanged: (val) {
                          setState(() {
                            otherDrug = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("Others");
                            } else {
                              selectedCheckboxesMedical.remove("Others");
                            }
                          });

                        })),
                    Flexible(
                        flex: 2,
                        child: defultTextField(
                          text: 'Others',
                          width: 120,
                          controller: otherDrugController,
                        )),
                    // Flexible(flex: 1, child: defultText(data: 'RHD', x: 12)),
                    // Flexible(
                    //     flex: 1,
                    //     child: Checkbox(value: Day1, onChanged: (val) {})),
                    // sizedBoxWidth(width: 5),
                    // Flexible(
                    //   flex: 1,
                    //   child: defultText(
                    //     data: 'IF Married:',
                    //   ),
                    // ),
                    // sizedBoxWidth(width: 10),
                    // Flexible(
                    //     flex: 1, child: defultText(data: 'Duration:', x: 12)),
                    // sizedBoxWidth(width: 3),
                    // Flexible(
                    //     flex: 3,
                    //     child: defultTextField(
                    //       text: 'Duration',
                    //       width: 120,
                    //     )),
                    // sizedBoxWidth(width: 5),
                    // Flexible(
                    //     flex: 2, child: defultText(data: 'Surgical:', x: 12)),
                    // sizedBoxWidth(width: 5),

                    // Flexible(
                    //     flex: 1,
                    //     child: defultText(
                    //       data: 'ICU',
                    //     )),
                    // Flexible(
                    //     flex: 1,
                    //     child: Checkbox(value: Day1, onChanged: (val) {})),
                    // sizedBoxWidth(width: 5),
                    // Flexible(
                    //     flex: 2,
                    //     child: defultText(
                    //       data: 'Operation',
                    //     )),
                    // Flexible(
                    //     flex: 1,
                    //     child: Checkbox(value: Day1, onChanged: (val) {})),
                    // sizedBoxWidth(width: 5),

                    // Flexible(
                    //     flex: 3,
                    //     child: defultTextField(text: 'Operation', width: 120)),
                  ],
                ),
              ),
              sizedBoxhight(hight: 20),
              Container(
                width: 2000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(flex: 4, child: defultText(data: 'Family History:')),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 3,
                        child: defultText(data: 'Similar Condition', x: 15)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: SimilarCondition, onChanged: (val) {
                        setState(() {
                          SimilarCondition = val!;
                        if (val) {
                        selectedCheckboxesMedical.add("SimilarCondition");
                        } else {
                        selectedCheckboxesMedical.remove("SimilarCondition");
                        }
                        });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 3, child: defultText(data: 'HTN', x: 15)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: Htn, onChanged: (val) {
                          setState(() {
                            Htn = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("HTN");
                            } else {
                              selectedCheckboxesMedical.remove("HTN");
                            }
                          });

                        })),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 3, child: defultText(data: 'DM', x: 15)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: DM, onChanged: (val) {
                          setState(() {
                            DM = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("DM");
                            } else {
                              selectedCheckboxesMedical.remove("DM");
                            }
                          });

                        })),
                    // sizedBoxWidth(width: 5),
                    // Flexible(
                    //     flex: 3, child: defultText(data: 'Antidiuretic', x: 15)),
                    // Flexible(
                    //     flex: 2,
                    //     child: Checkbox(value: Day1, onChanged: (val) {})),
                    sizedBoxWidth(width: 5),
                    Flexible(flex: 1, child: defultText(data: 'Others', x: 15)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: OtherFamilyHistory, onChanged: (val) {
                          setState(() {
                            OtherFamilyHistory = val!;
                            if (val) {
                              selectedCheckboxesMedical.add("Other family history");
                            } else {
                              selectedCheckboxesMedical.remove("Other family history");
                            }
                          });

                        })),
                    Flexible(
                        flex: 2,
                        child: defultTextField(
                          text: 'Others',
                          width: 120,
                          controller: otherFamilyHistoryController
                        )),
                    // Flexible(flex: 1, child: defultText(data: 'RHD', x: 12)),
                    // Flexible(
                    //     flex: 1,
                    //     child: Checkbox(value: Day1, onChanged: (val) {})),
                    // sizedBoxWidth(width: 5),
                    // Flexible(
                    //   flex: 1,
                    //   child: defultText(
                    //     data: 'IF Married:',
                    //   ),
                    // ),
                    // sizedBoxWidth(width: 10),
                    // Flexible(
                    //     flex: 1, child: defultText(data: 'Duration:', x: 12)),
                    // sizedBoxWidth(width: 3),
                    // Flexible(
                    //     flex: 3,
                    //     child: defultTextField(
                    //       text: 'Duration',
                    //       width: 120,
                    //     )),
                    // sizedBoxWidth(width: 5),
                    // Flexible(
                    //     flex: 2, child: defultText(data: 'Surgical:', x: 12)),
                    // sizedBoxWidth(width: 5),

                    // Flexible(
                    //     flex: 1,
                    //     child: defultText(
                    //       data: 'ICU',
                    //     )),
                    // Flexible(
                    //     flex: 1,
                    //     child: Checkbox(value: Day1, onChanged: (val) {})),
                    // sizedBoxWidth(width: 5),
                    // Flexible(
                    //     flex: 2,
                    //     child: defultText(
                    //       data: 'Operation',
                    //     )),
                    // Flexible(
                    //     flex: 1,
                    //     child: Checkbox(value: Day1, onChanged: (val) {})),
                    // sizedBoxWidth(width: 5),

                    // Flexible(
                    //     flex: 3,
                    //     child: defultTextField(text: 'Operation', width: 120)),
                  ],
                ),
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
                          'General Examination',
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
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 100,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      child: Center(
                          child: defultText(data: 'Vital Data', c: Colors.white)),
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: Container(
                        width: 250,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),

                          // boxShadow: Colors.green,
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                    flex: 1, child: defultText(data: 'BP1:')),
                                Flexible(
                                  flex: 2,
                                  child: defultTextField(
                                      text: 'BP1', width: 60, hight: 50,controller: Bp1Controller),
                                ),
                                Flexible(
                                    flex: 1, child: defultText(data: '/', x: 18)),
                                Flexible(
                                  flex: 2,
                                  child: defultTextField(
                                      text: 'mmHg',controller: mmHG1Controller, width: 60, hight: 50),
                                ),
                                Flexible(
                                    flex: 2, child: defultText(data: 'mmHg')),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                    flex: 1, child: defultText(data: 'BP1:')),
                                Flexible(
                                  flex: 2,
                                  child: defultTextField(
                                      text: 'BP1', width: 60, hight: 50,controller: Bp2Controller),
                                ),
                                Flexible(
                                    flex: 1, child: defultText(data: '/', x: 18)),
                                Flexible(
                                  flex: 2,
                                  child: defultTextField(
                                      text: 'mmHg', width: 60, hight: 50,controller: mmHG2Controller), // bp222
                                ),

                                Flexible(
                                    flex: 2, child: defultText(data: 'mmHg')), // mmhg222
                              ],
                            ),
                          ],
                        ),
                      )),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),

                          // boxShadow: Colors.green,
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 1, child: defultText(data: 'HR:')),
                                  Flexible(
                                    flex: 2,
                                    child: defultTextField(
                                        text: 'HR', width: 60, hight: 50,controller: hrVitalController),
                                  ),
                                  Flexible(
                                      flex: 2, child: defultText(data: 'bpm')),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: Container(
                        width: 190,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),

                          // boxShadow: Colors.green,
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                      flex: 1, child: defultText(data: 'Temp')),
                                  Flexible(
                                    flex: 2,
                                    child: defultTextField(
                                        text: 'Temp', width: 60, hight: 50,controller: tempVitalController),
                                  ),
                                  Flexible(flex: 2, child: defultText(data: 'C')),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // boxShadow: Colors.green,
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                                child: defultText(data: 'Random Blood Sugar:')),
                            sizedBoxhight(hight: 10),
                            Center(
                              child: defultTextField(
                                  text: 'Random Blood Sugar',
                                  hight: 70,
                                  controller: randomBloodSugarController,
                                  width: 120),
                            )
                          ],
                        ),
                      )),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // boxShadow: Colors.green,
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(child: defultText(data: 'O2 Saturation')),
                            sizedBoxhight(hight: 10),
                            Center(
                              child: defultTextField(
                                  text: 'O2 Saturation', hight: 70,controller: o2satController, width: 120),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              sizedBoxhight(hight: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 100,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      child: Center(
                          child: defultText(data: 'Complexion', c: Colors.white)),
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 250,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // boxShadow: Colors.green,
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Center(
                                      child: defultText(data: 'Cyanosis:'))),
                            ],
                          ),
                          sizedBoxhight(hight: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      defultText(data: 'Peripheral', x: 12),
                                      Checkbox(value: Peripheral, onChanged: (val) {
                                        setState(() {
                                          Peripheral = val!;
                                          if (val) {
                                            selectedCheckboxesComplextion.add("Peripheral");
                                          } else {
                                            selectedCheckboxesComplextion.remove("Peripheral");
                                          }
                                        });

                                      }),
                                    ],
                                  ),
                                ),
                              ),
                              sizedBoxWidth(width: 30),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      defultText(data: 'Central', x: 12),
                                      Checkbox(value: Central, onChanged: (val) {
                                        setState(() {
                                          Central = val!;
                                          if (val) {
                                            selectedCheckboxesComplextion.add("Central");
                                          } else {
                                            selectedCheckboxesComplextion.remove("Central");
                                          }
                                        });

                                      }),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //row
                        ],
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 180,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // boxShadow: Colors.green,
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              child: Column(
                                children: [
                                  defultText(data: 'Jaundice', x: 15),
                                  Checkbox(value: Jaundice, onChanged: (val) {
                                    setState(() {
                                      Jaundice = val!;
                                      if (val) {
                                        selectedCheckboxesComplextion.add("Jaundice");
                                      } else {
                                        selectedCheckboxesComplextion.remove("Jaundice");
                                      }
                                    });

                                  }),
                                ],
                              ),
                            ),
                          ),
                          //row
                        ],
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 190,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // boxShadow: Colors.green,
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              child: Column(
                                children: [
                                  defultText(data: 'Pallor', x: 15),
                                  Checkbox(value: Pallor, onChanged: (val) {
                                    setState(() {
                                      Pallor = val!;
                                      if (val) {
                                        selectedCheckboxesComplextion.add("Pallor");
                                      } else {
                                        selectedCheckboxesComplextion.remove("Pallor");
                                      }
                                    });

                                  }),
                                ],
                              ),
                            ),
                          ),
                          //row
                        ],
                      ),
                    ),
                  ),

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
                      flex: 1, child: defultText(data: 'Nephropathy screening', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: Nephropathy, onChanged: (val) {
                        setState(() {
                          Nephropathy = val!;
                          if (val) {
                            selectedCheckboxesScreening.add("Nephropathy screening");
                          } else {
                            selectedCheckboxesScreening.remove("Nephropathy screening");
                          }
                        });

                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: "UTI (dipstick urine test)", x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: UTI, onChanged: (val) {
                        setState(() {
                          UTI = val!;
                          if (val) {
                            selectedCheckboxesScreening.add("UTI (dipstick urine test)");
                          } else {
                            selectedCheckboxesScreening.remove("UTI (dipstick urine test)");
                          }
                        });

                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: 'OGTT (pregnant)', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: OGTT, onChanged: (val){
                        setState(() {
                          OGTT = val!;
                          if (val) {
                            selectedCheckboxesScreening.add("OGTT (pregnant)");
                          } else {
                            selectedCheckboxesScreening.remove("OGTT (pregnant)");
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
                          'Referral of convoy clinics',
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
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'IM',
                      )),
                  Flexible(
                      flex: 1, child: Checkbox(value: IM, onChanged: (val) {
                    setState(() {
                      IM = val!;
                      if (val) {
                        selectedCheckboxesClinics.add("IM");
                      } else {
                        selectedCheckboxesClinics.remove("IM");
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
                        data: 'Surgery',
                      )),
                  Flexible(
                      flex: 1, child: Checkbox(value: Surgery, onChanged: (val) {
                    setState(() {
                      Surgery = val!;
                      if (val) {
                        selectedCheckboxesClinics.add("Surgery");
                      } else {
                        selectedCheckboxesClinics.remove("Surgery");
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
                      flex: 1, child: Checkbox(value: Ophth, onChanged: (val) {
                    setState(() {
                      Ophth = val!;
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
                        data: 'Obs. & Gyn',
                      )),
                  Flexible(
                      flex: 1, child: Checkbox(value: ObsGyn, onChanged: (val) {
                    setState(() {
                      ObsGyn = val!;
                      if (val) {
                        selectedCheckboxesClinics.add("Obs. & Gyn");
                      } else {
                        selectedCheckboxesClinics.remove("Obs. & Gyn");
                      }
                    });

                  })),
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
                      flex: 1,
                      child: defultText(
                        data: 'Derma',
                      )),
                  Flexible(
                      flex: 1, child: Checkbox(value: Derma, onChanged: (val) {
                    setState(() {
                      Derma = val!;
                      if (val) {
                        selectedCheckboxesClinics.add("Derma");
                      } else {
                        selectedCheckboxesClinics.remove("Derma");
                      }
                    });

                  })),
                  sizedBoxWidth(width: 7),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Ortho',
                      )),
                  Flexible(
                      flex: 1, child: Checkbox(value: Ortho, onChanged: (val) {
                    setState(() {
                      Ortho = val!;
                      if (val) {
                        selectedCheckboxesClinics.add("Ortho");
                      } else {
                        selectedCheckboxesClinics.remove("Ortho");
                      }
                    });

                  })
                  ),
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
                      flex: 1, child: Checkbox(value: yesFollowup, onChanged: (val) {
                    setState(() {
                      yesFollowup =val! ;
                      noFollowup = false ;
                    });
                    if (val!) {
                      Followup = "yes Follow Up";
                    }
                  })),
                  sizedBoxWidth(width: 5),
                  Flexible(flex: 1, child: defultText(data: 'NO', x: 12)),
                  Flexible(
                      flex: 1, child: Checkbox(value: noFollowup, onChanged: (val) {
                    setState(() {
                      yesFollowup =false ;
                      noFollowup = val! ;
                    });
                    if (val!) {
                      Followup = "No Follow up";
                    }
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
                          'Go Home',
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
                          'Community development',
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
                        flex: 1, child: defultText(data: 'Yes', x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: yesCommdev, onChanged: (val) {
                          setState(() {
                            yesCommdev =val! ;
                            noCommdev = false ;
                          });
                          if (val!) {
                            CommunityDevelopment = "yes Community Development";
                          }
                        })),
                    sizedBoxWidth(width: 10),
                    Flexible(
                        flex: 1, child: defultText(data: "NO", x: 12)),
                    Flexible(
                        flex: 1,
                        child: Checkbox(value: noCommdev, onChanged: (val) {
                          setState(() {
                            noCommdev =val! ;
                            yesCommdev = false ;
                          });
                          if (val!) {
                            CommunityDevelopment = "No Community Development";
                          }
                        })),
                    sizedBoxWidth(width: 10),
                  ]

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  mysignin(
                    color: Colors.green,
                    x: Colors.white,
                    title: 'Save&Done',
                    size: 25,
                    onPressed: () {
                      medicalPastHistory.addAll(selectedCheckboxesMedical);
                      selectedCheckboxesMedical.clear();
                   //   print(medicalPastHistory);
                      drugsChronicDiseases.addAll(selectedCheckboxesDrugs);
                      selectedCheckboxesDrugs.clear();
                     // print(drugsChronicDiseases);
                      familyHistory.addAll(selectedCheckboxesfamily);
                      selectedCheckboxesfamily.clear();
                      //print(familyHistory);
                      complextionGeneralExamination.addAll(selectedCheckboxesComplextion);
                      selectedCheckboxesComplextion.clear();
                      print(complextionGeneralExamination);
                      screening.addAll(selectedCheckboxesScreening);
                      selectedCheckboxesScreening.clear();
                      print(screening);
                      clinics.addAll(selectedCheckboxesClinics);
                      selectedCheckboxesClinics.clear();
                      print(clinics);
                      if (formKey.currentState!.validate()) {
                        double? Bp1vital = double.tryParse(Bp1Controller.text);
                        double? Bp2vital = double.tryParse(Bp2Controller.text);
                        double? o2satvital = double.tryParse(o2satController.text);
                        double? randombloodvital = double.tryParse(randomBloodSugarController.text);
                        double? tempvital = double.tryParse(tempVitalController.text);
                        double? hrvital = double.tryParse(hrVitalController.text);
                        double? mmhg2Vital = double.tryParse(mmHG2Controller.text);
                        double? mmHg1vital = double.tryParse(mmHG1Controller.text);

                        Navigator.pushNamed(context, adultCheckup.screenRoute);
                     //   PatientAdultModel patientModel = PatientAdultModel(
                          patientModel?.medicalPastHistory= medicalPastHistory;
                        patientModel?.otherMedicalPastHistory= otherMedicalHistoryController.text;
                      patientModel?.bloodTransfusionPastHistory= bloodTransfusion;
                      patientModel?.durationBloodTransfusionPastHistory= durationBloodTransfusionController.text;
                      patientModel?.allergyPastHistory= Allergy;
                      patientModel?.specifyAllergyPastHistory= specifyAllergyController.text;
                      patientModel?.surgicalPastHistory= surgical;
                      patientModel?.operationSurgicalPastHistory= operationSurgicalController.text;
                      patientModel?.drugsOfChronicDiseases= drugsChronicDiseases;
                      patientModel?.othersDrugsOfChronicDiseases= otherDrugController.text;
                      patientModel?.familyHistory= familyHistory;
                      patientModel?.othersFamilyHistory= otherFamilyHistoryController.text;
                      patientModel?.BP1Vital= Bp1vital;
                      patientModel?.BP2Vital=Bp2vital;
                      patientModel?.mmHg1Vital= mmHg1vital;
                      patientModel?.mmHg2Vital= mmhg2Vital;
                      patientModel?.hrVital= hrvital;
                      patientModel?.tempVital= tempvital;
                      patientModel?.randomBloodSugarVital= randombloodvital;
                      patientModel?.o2Saturationvital= o2satvital;
                      patientModel?.complexionGenerallExamination= complextionGeneralExamination;
                      patientModel?.screening =screening; // gameddddddddddd عاوزة اجرب انا ويتتتتتتتتتتتتتت
                      patientModel?.ReferralOfConvoyClinics= clinics;
                      patientModel?.followUp= Followup;
                      patientModel?.goHome= GoHome;
                      patientModel?.communityDevelopment= CommunityDevelopment;
                        MyDataBase.updatePatientAdult(patientModel!);
                        print("updated");
                      }
                    },
                  ),
                  sizedBoxWidth(width: 20),
                  mysignin(
                    color: Colors.green,
                    x: Colors.white,
                    title: 'Save&BacktoEdit',
                    size: 25,
                    onPressed: () =>
                    {
                      Navigator.pushNamed(
                          context, continueCheckupAdult.screenRoute,arguments: patientModel)
                    },
                  ),
                  sizedBoxWidth(width: 20),
                  mysignin(
                    color: Colors.green,
                    x: Colors.white,
                    title: 'Save&GotoFollowup',
                    size: 25,
                    onPressed: () =>
                    {
                      // Navigator.pushNamed(
                      //     context, continueCheckupAdult.screenRoute)
                    },
                  ),
                ],
              ),
            ],
          ),
          //end
        ),
      ),
    );
  }
}
