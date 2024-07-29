import 'package:bedaya/DateModels/patient_childmodel.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/network/my_database.dart';
import 'package:bedaya/screens/children%20checkup/Children_continue.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:flutter/material.dart';

class childrenCheckup extends StatefulWidget {
  static const String screenRoute = 'childrenCheckup';

  const childrenCheckup({super.key});

  @override
  State<childrenCheckup> createState() => _childrenCheckupState();
}

bool Day1 = false;
bool Day2 = false;
bool Day3 = false;
bool Day4 = false;
bool Day5 = false;

bool married = false;
bool Male = false;
bool Female = false;
String sexPatient = "";

String educationLevelFather = "";
bool Illiterate = false;

bool Readandwrite = false;

bool Primary = false;

bool Preparatory = false;

bool Secondary = false;

bool University = false;

bool Postgraduate = false;

String educationLevelMother = "";
bool IlliterateM = false;

bool ReadandwriteM = false;

bool PrimaryM = false;

bool PreparatoryM = false;

bool SecondaryM = false;

bool UniversityM = false;

bool PostgraduateM = false;

String termChild = "";
bool fullTerm = false;
bool preTerm = false;

String birthMode = "";
bool VD = false;
bool CS = false;

bool geneticDisease = false;
bool HTN = false;
List<String> familyHistory = [];
List<String> selectedCheckboxesFamilyHistory = [];

bool BloodTransfusion = false;
bool Surgical = false;
bool ICU = false;
bool Medical = false;
bool Allergy = false;

List<String> pastHistory = [];
List<String> selectedCheckboxesPastHistory = [];

class _childrenCheckupState extends State<childrenCheckup> {
  List<ComplaintsChildModel> complaintsList = [];
  TextEditingController mobileNuPatient = TextEditingController();
  TextEditingController namePatient = TextEditingController();
  TextEditingController codePatient = TextEditingController();
  TextEditingController houseNuPatient = TextEditingController();
  TextEditingController agePatient = TextEditingController();
  TextEditingController fatherOcc = TextEditingController();
  TextEditingController dmChild = TextEditingController();
  TextEditingController similarConditionChild = TextEditingController();
  TextEditingController orderOfBirthController = TextEditingController();
  TextEditingController preTermchild = TextEditingController();
  TextEditingController nicuChild = TextEditingController();
  TextEditingController ConsanguinityChild = TextEditingController();
  TextEditingController complaintDescription = TextEditingController();
  TextEditingController complaintName = TextEditingController();

  TextEditingController BloodTransfusionController = TextEditingController();
  TextEditingController SurgicalController = TextEditingController();
  TextEditingController ICUController = TextEditingController();
  TextEditingController MedicalController = TextEditingController();
  TextEditingController AllergyController = TextEditingController();

  List<String> Chosedaylist = ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'];
  String selectedday = 'Day 1';
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    PatientChildModel? patientModel =
        ModalRoute.of(context)?.settings.arguments as PatientChildModel?;

    if (patientModel?.sexChildPatient == "male") {
      Male = true;
      Female = false;
    } else if (patientModel?.sexChildPatient == "female") {
      Male = false;
      Female = true;
    }

    if (patientModel?.codeChildPatient != null) {
      namePatient = TextEditingController(text: patientModel?.nameChildPatient);
      codePatient = TextEditingController(text: patientModel?.codeChildPatient);
      houseNuPatient = TextEditingController(
          text: patientModel?.houseNuChildPatient.toString());
      agePatient =
          TextEditingController(text: patientModel?.ageChildPatient.toString());
      mobileNuPatient = TextEditingController(
          text: patientModel?.mobileNuChildPatient.toString());
      fatherOcc =
          TextEditingController(text: patientModel?.fatherCccubationChild);
      if (patientModel?.fatherEduChild == "Illiterate") {
        Illiterate = true;
      } else if (patientModel?.fatherEduChild == "Postgraduate") {
        Postgraduate = true;
      } else if (patientModel?.fatherEduChild == "University") {
        University = true;
      } else if (patientModel?.fatherEduChild == "Secondary") {
        Secondary = true;
      } else if (patientModel?.fatherEduChild == "Primary") {
        Primary = true;
      } else if (patientModel?.fatherEduChild == "Preparatory") {
        Preparatory = true;
      } else if (patientModel?.fatherEduChild == "Read and write") {
        Readandwrite = true;
      }
      if (patientModel?.motherEduChild == "Illiterate") {
        IlliterateM = true;
      } else if (patientModel?.motherEduChild == "Postgraduate") {
        PostgraduateM = true;
      } else if (patientModel?.motherEduChild == "University") {
        UniversityM = true;
      } else if (patientModel?.motherEduChild == "Secondary") {
        SecondaryM = true;
      } else if (patientModel?.motherEduChild == "Primary") {
        PrimaryM = true;
      } else if (patientModel?.motherEduChild == "Preparatory") {
        PreparatoryM = true;
      } else if (patientModel?.motherEduChild == "Read and write") {
        ReadandwriteM = true;
      }
      orderOfBirthController =
          TextEditingController(text: patientModel?.orderOfBirthChild);
      if (patientModel?.birthTermChild == "fullTerm") {
        fullTerm = true;
        preTerm = false;
      } else if (patientModel?.sexChildPatient == "preTerm") {
        fullTerm = false;
        preTerm = true;
      }
      preTermchild = TextEditingController(text: patientModel?.pretermEduChild);
      if (patientModel?.weekBirthMode == "V.D") {
        VD = true;
        CS = false;
      } else if (patientModel?.weekBirthMode == "C.S") {
        VD = false;
        CS = true;
      }
      ConsanguinityChild =
          TextEditingController(text: patientModel?.consanguinityChild);
      nicuChild = TextEditingController(text: patientModel?.nicuChild);
      dmChild = TextEditingController(text: patientModel?.familyHistoryDMchild);
      similarConditionChild =
          TextEditingController(text: patientModel?.similarConditionChild);

      for (int i = 0; i < patientModel!.familyHistoryChild!.length; i++) {
        if (patientModel.familyHistoryChild![i] == "HTN") {
          HTN = true;
          selectedCheckboxesFamilyHistory.add("HTN");
        } else if (patientModel.familyHistoryChild![i] == "Genetic Disease") {
          geneticDisease = true;
          selectedCheckboxesFamilyHistory.add("Genetic Disease");
        }
      }
      MedicalController =
          TextEditingController(text: patientModel.pastHistMedicalChild);
      AllergyController =
          TextEditingController(text: patientModel.pastHistAllergyChild);
      ICUController =
          TextEditingController(text: patientModel.pastHistIcuChild);
      SurgicalController =
          TextEditingController(text: patientModel.pastHistSurgicalChild);
      BloodTransfusionController =
          TextEditingController(text: patientModel.pastHistBloodTransChild);

      for (int i = 0; i < patientModel.pastHistoryChild!.length; i++) {
        if (patientModel.pastHistoryChild![i] == "Blood Transfusion") {
          BloodTransfusion = true;
          selectedCheckboxesPastHistory.add("Blood Transfusion");
        } else if (patientModel.pastHistoryChild![i] == "Surgical") {
          Surgical = true;
          selectedCheckboxesPastHistory.add("Surgical");
        } else if (patientModel.pastHistoryChild![i] == "ICU") {
          ICU = true;
          selectedCheckboxesPastHistory.add("ICU");
        } else if (patientModel.pastHistoryChild![i] == "Allergy") {
          Allergy = true;
          selectedCheckboxesPastHistory.add("Allergy");
        } else if (patientModel.pastHistoryChild![i] == "Medical") {
          Medical = true;
          selectedCheckboxesPastHistory.add("Medical");
        }
      }
    }
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          context: context,
          data: 'Children Checkup',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(children: [
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
                    'Personal information',
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
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Text(
                        'Choose Day',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: DropdownButton<String>(
                      value: selectedday, // 1-done
                      items: Chosedaylist.map(
                        (day) => DropdownMenuItem(
                          value: day,
                          child: Text(
                            day,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ).toList(),
                      onChanged: (day) => setState(() => selectedday = day!)),
                ),
              ],
            ),
            sizedBoxhight(hight: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'Patient Name:')),
                sizedBoxWidth(width: 5),
                Flexible(
                  flex: 1,
                  child: defultTextField(
                    controller: namePatient,
                    text: 'Name',
                    width: 250,
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Enter name";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Code:')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: defultTextField(
                      text: 'code',
                      width: 100,
                      controller: codePatient,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Code";
                        } else {
                          return null;
                        }
                      },
                    )),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'House Number:')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: defultTextField(
                        text: 'H.N', controller: houseNuPatient, width: 120)),
              ],
            ),
            sizedBoxhight(hight: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'Sex:')),
                sizedBoxWidth(width: 5),
                Flexible(flex: 1, child: defultText(data: 'male')),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Male,
                        onChanged: (val) {
                          setState(() {
                            Male = val!;
                            Female = false;
                          });
                          if (val!) {
                            patientModel?.sexChildPatient = "male";
                            sexPatient = "male";
                          } else {
                            patientModel?.sexChildPatient = null;
                          }
                        })),
                sizedBoxWidth(width: 5),
                Flexible(flex: 1, child: defultText(data: 'female')),
                Checkbox(
                    value: Female,
                    onChanged: (val) {
                      setState(() {
                        Male = false;
                        Female = val!;
                      });
                      if (val!) {
                        patientModel?.sexChildPatient = "female";
                        sexPatient = "female";
                      } else {
                        patientModel?.sexChildPatient = null;
                      }
                    }),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Age:')),
                sizedBoxWidth(width: 5),
                Flexible(
                  flex: 1,
                  child: defultTextField(
                    controller: agePatient,
                    text: 'age',
                    width: 250,
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 2, child: defultText(data: 'Father Occupation:')),
                sizedBoxWidth(width: 5),
                Flexible(
                  flex: 2,
                  child: defultTextField(
                    controller: fatherOcc,
                    text: 'Father Occupation:',
                    width: 250,
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(flex: 2, child: defultText(data: 'Mobile Number:')),
                sizedBoxWidth(width: 5),
                Flexible(
                  flex: 2,
                  child: defultTextField(
                    controller: mobileNuPatient,
                    text: 'Mobile Number',
                    width: 250,
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                defultText(data: 'Father Education Level:'),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Illiterate', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Illiterate,
                        onChanged: (val) {
                          setState(() {
                            Illiterate = val!;
                            Readandwrite = false;
                            Primary = false;
                            Preparatory = false;
                            Secondary = false;
                            University = false;
                            Postgraduate = false;
                          });
                          if (val!) {
                            patientModel?.fatherEduChild = "Illiterate";
                            educationLevelFather = "Illiterate";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Read and write', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Readandwrite,
                        onChanged: (val) {
                          setState(() {
                            Illiterate = false;
                            Readandwrite = val!;
                            Primary = false;
                            Preparatory = false;
                            Secondary = false;
                            University = false;
                            Postgraduate = false;
                          });
                          if (val!) {
                            patientModel?.fatherEduChild = "Read and write";
                            educationLevelFather = "Read and write";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Primary', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Primary,
                        onChanged: (val) {
                          setState(() {
                            Illiterate = false;
                            Readandwrite = false;
                            Primary = val!;
                            Preparatory = false;
                            Secondary = false;
                            University = false;
                            Postgraduate = false;
                          });
                          if (val!) {
                            patientModel?.fatherEduChild = "Primary";
                            educationLevelFather = "Primary";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Preparatory', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Preparatory,
                        onChanged: (val) {
                          setState(() {
                            Illiterate = false;
                            Readandwrite = false;
                            Primary = false;
                            Preparatory = val!;
                            Secondary = false;
                            University = false;
                            Postgraduate = false;
                          });
                          if (val!) {
                            patientModel?.fatherEduChild = "Preparatory";
                            educationLevelFather = "Preparatory";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Secondary', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Secondary,
                        onChanged: (val) {
                          setState(() {
                            Illiterate = false;
                            Readandwrite = false;
                            Primary = false;
                            Preparatory = false;
                            Secondary = val!;
                            University = false;
                            Postgraduate = false;
                          });
                          if (val!) {
                            patientModel?.fatherEduChild = "Secondary";
                            educationLevelFather = "Secondary";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'University', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: University,
                        onChanged: (val) {
                          setState(() {
                            Illiterate = false;
                            Readandwrite = false;
                            Primary = false;
                            Preparatory = false;
                            Secondary = false;
                            University = val!;
                            Postgraduate = false;
                          });
                          if (val!) {
                            patientModel?.fatherEduChild = "University";
                            educationLevelFather = "University";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Postgraduate', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Postgraduate,
                        onChanged: (val) {
                          setState(() {
                            Illiterate = false;
                            Readandwrite = false;
                            Primary = false;
                            Preparatory = false;
                            Secondary = false;
                            University = false;
                            Postgraduate = val!;
                          });
                          if (val!) {
                            patientModel?.fatherEduChild = "Postgraduate";
                            educationLevelFather = "Postgraduate";
                          }
                        })),
                sizedBoxWidth(width: 10),
              ],
            ),
            sizedBoxhight(hight: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                defultText(data: 'Mother Education Level:'),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Illiterate', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: IlliterateM,
                        onChanged: (val) {
                          setState(() {
                            IlliterateM = val!;
                            ReadandwriteM = false;
                            PrimaryM = false;
                            PreparatoryM = false;
                            SecondaryM = false;
                            UniversityM = false;
                            PostgraduateM = false;
                          });
                          if (val!) {
                            patientModel?.motherEduChild = "";
                            educationLevelMother = "Illiterate";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Read and write', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: ReadandwriteM,
                        onChanged: (val) {
                          setState(() {
                            IlliterateM = false;
                            ReadandwriteM = val!;
                            PrimaryM = false;
                            PreparatoryM = false;
                            SecondaryM = false;
                            UniversityM = false;
                            PostgraduateM = false;
                          });
                          if (val!) {
                            patientModel?.motherEduChild = "Read and write";
                            educationLevelMother = 'Read and write';
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Primary', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: PrimaryM,
                        onChanged: (val) {
                          setState(() {
                            IlliterateM = false;
                            ReadandwriteM = false;
                            PrimaryM = val!;
                            PreparatoryM = false;
                            SecondaryM = false;
                            UniversityM = false;
                            PostgraduateM = false;
                          });
                          if (val!) {
                            patientModel?.motherEduChild = "Primary";
                            educationLevelMother = "Primary";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Preparatory', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: PreparatoryM,
                        onChanged: (val) {
                          setState(() {
                            IlliterateM = false;
                            ReadandwriteM = false;
                            PrimaryM = false;
                            PreparatoryM = val!;
                            SecondaryM = false;
                            UniversityM = false;
                            PostgraduateM = false;
                          });
                          if (val!) {
                            patientModel?.motherEduChild = "Preparatory";
                            educationLevelMother = "Preparatory";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Secondary', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: SecondaryM,
                        onChanged: (val) {
                          setState(() {
                            IlliterateM = false;
                            ReadandwriteM = false;
                            PrimaryM = false;
                            PreparatoryM = false;
                            SecondaryM = val!;
                            UniversityM = false;
                            PostgraduateM = false;
                          });
                          if (val!) {
                            patientModel?.motherEduChild = "Secondary";
                            educationLevelMother = "Secondary";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'University', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: UniversityM,
                        onChanged: (val) {
                          setState(() {
                            IlliterateM = false;
                            ReadandwriteM = false;
                            PrimaryM = false;
                            PreparatoryM = false;
                            SecondaryM = false;
                            UniversityM = val!;
                            PostgraduateM = false;
                          });
                          if (val!) {
                            patientModel?.motherEduChild = "University";
                            educationLevelMother = "University";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1, child: defultText(data: 'Postgraduate', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: PostgraduateM,
                        onChanged: (val) {
                          setState(() {
                            IlliterateM = false;
                            ReadandwriteM = false;
                            PrimaryM = false;
                            PreparatoryM = false;
                            SecondaryM = false;
                            UniversityM = false;
                            PostgraduateM = val!;
                          });
                          if (val!) {
                            patientModel?.motherEduChild = "Postgraduate";
                            educationLevelMother = "Postgraduate";
                          }
                        })),
                sizedBoxWidth(width: 10),
              ],
            ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 2, child: defultText(data: 'Order of Birth:')),
                sizedBoxWidth(width: 5),
                Flexible(
                  flex: 2,
                  child: defultTextField(
                    controller: orderOfBirthController,
                    text: 'order of Birth',
                    width: 250,
                  ),
                ),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Full Term', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: fullTerm,
                        onChanged: (val) {
                          setState(() {
                            fullTerm = val!;
                            preTerm = false;
                          });
                          if (val!) {
                            patientModel?.birthTermChild = "fullTerm";
                            termChild = "fullTerm";
                          } else {
                            termChild = "preTerm";
                          }
                        })),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Preterm', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: preTerm,
                        onChanged: (val) {
                          setState(() {
                            fullTerm = false;
                            preTerm = val!;
                          });
                          if (val!) {
                            patientModel?.birthTermChild = "preTerm";
                            termChild = "preterm";
                          } else {
                            termChild = "fullTerm";
                          }
                        })),
                sizedBoxWidth(width: 5),
                Flexible(
                  flex: 2,
                  child: defultTextField(
                    controller: preTermchild,
                    text: 'Preterm',
                    width: 250,
                  ),
                ),
                sizedBoxWidth(width: 5),
                Flexible(flex: 2, child: defultText(data: 'Week')),
                sizedBoxWidth(width: 10),
                Flexible(flex: 2, child: defultText(data: "|")),
                sizedBoxWidth(width: 10),
                Flexible(flex: 2, child: defultText(data: 'Birth Mode')),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'V.D', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: VD,
                        onChanged: (val) {
                          setState(() {
                            VD = val!;
                            CS = false;
                          });
                          if (val!) {
                            patientModel?.weekBirthMode = "V.D";
                            birthMode = "V.D";
                          } else {
                            termChild = "C.S";
                          }
                        })),
                sizedBoxWidth(width: 10),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'C.S', x: 12)),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: CS,
                        onChanged: (val) {
                          setState(() {
                            VD = false;
                            CS = val!;
                          });
                          if (val!) {
                            patientModel?.weekBirthMode = "C.S";
                            birthMode = "C.S";
                          } else {
                            termChild = "V.D";
                          }
                        })),
                sizedBoxWidth(width: 10),
              ],
            ),
            sizedBoxhight(hight: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'Consanguinity:')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: defultTextField(
                        text: 'Consanguinity:',
                        width: 250,
                        controller: ConsanguinityChild)),
                sizedBoxWidth(width: 10),
                Flexible(
                    flex: 1,
                    child: defultText(
                        data: 'NICU Admission (If Yes Why and for How Long):')),
                sizedBoxWidth(width: 5),
                Flexible(
                  flex: 1,
                  child: defultTextField(
                    controller: nicuChild,
                    text: 'NICU',
                    width: 250,
                  ),
                ),
              ],
            ),
            sizedBoxhight(hight: 50),
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
                            child:
                                defultText(data: 'Complaint', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Color.fromARGB(255, 165, 162, 162)),
                          height: 70,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 4,
                                child: Center(
                                    child: defultText(
                                        data:
                                            'Complaint Analysis and History of Present Illness',
                                        c: Color.fromARGB(
                                          255,
                                          1,
                                          70,
                                          2,
                                        ))),
                              ),
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
                    height: 220,
                    width: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 280,
                          height: 50,
                          child: Center(
                              child: defultText(
                                  data: 'Complaint', c: Colors.white)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(10)),
                          width: 280,
                          height: 120,
                          child: TextField(
                            controller: complaintName,
                            decoration: InputDecoration(
                              labelText: 'C1',
                              hoverColor: Colors.black,
                              focusColor: Colors.green,
                              fillColor: Colors.green,

                              border: OutlineInputBorder(),

                              // contentPadding:
                              // EdgeInsets.symmetric(vertical: 150),
                            ),
                            maxLines: 14,
                            minLines: 1,
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
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
                      height: 220,
                      width: 1500,
                      child: Column(
                        children: [
                          Flexible(
                              flex: 1,
                              child: SizedBox(
                                  width: 80,
                                  child: defultText(
                                      data: 'Details:',
                                      c: Color.fromARGB(255, 2, 43, 3)))),
                          sizedBoxWidth(width: 20),
                          Flexible(
                            flex: 5,
                            child: TextField(
                              controller: complaintDescription,
                              decoration: InputDecoration(
                                labelText: 'C1',
                                hoverColor: Colors.black,
                                focusColor: Colors.green,
                                fillColor: Colors.green,

                                border: OutlineInputBorder(),

                                // contentPadding:
                                // EdgeInsets.symmetric(vertical: 150),
                              ),
                              maxLines: 14,
                              minLines: 1,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: mysignin(
                    color: Colors.green,
                    x: Colors.white,
                    title: 'Save&Add Another Complain',
                    size: 25,
                    onPressed: () {
                      setState(() {
                        ComplaintsChildModel complaint = ComplaintsChildModel(
                            complaintName: complaintName.text,
                            complaintDescription: complaintDescription.text);
                        complaintsList.add(complaint);
                        complaintName.clear();
                        complaintDescription.clear();
                      });
                    },
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'Family History:')),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'DM:')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: defultTextField(
                        text: 'DM', width: 100, controller: dmChild)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Similar Condition')),
                sizedBoxWidth(width: 5), // el moshkla fel check box
                Flexible(
                    flex: 2,
                    child: defultTextField(
                        text: 'Similar Condition',
                        width: 100,
                        controller: similarConditionChild)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Genetic Disease')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: geneticDisease,
                        onChanged: (val) {
                          setState(() {
                            geneticDisease = val!;
                            if (val) {
                              selectedCheckboxesFamilyHistory
                                  .add("Genetic Disease");
                            } else {
                              selectedCheckboxesFamilyHistory
                                  .remove("Genetic Disease");
                            }
                          });
                        })),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'HTN')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: HTN,
                        onChanged: (val) {
                          setState(() {
                            HTN = val!;
                            if (val) {
                              selectedCheckboxesFamilyHistory.add("HTN");
                            } else {
                              selectedCheckboxesFamilyHistory.remove("HTN");
                            }
                          });
                        })),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: defultText(data: 'Past History:')),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Medical')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Medical,
                        onChanged: (val) {
                          setState(() {
                            Medical = val!;
                            if (val) {
                              selectedCheckboxesPastHistory.add("Medical");
                            } else {
                              selectedCheckboxesPastHistory.remove("Medical");
                            }
                          });
                        })),
                Flexible(
                    flex: 2,
                    child: defultTextField(
                        text: 'Medical',
                        width: 200,
                        controller: MedicalController)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Allergy')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Allergy,
                        onChanged: (val) {
                          setState(() {
                            Allergy = val!;
                            if (val) {
                              selectedCheckboxesPastHistory.add("Allergy");
                            } else {
                              selectedCheckboxesPastHistory.remove("Allergy");
                            }
                          });
                        })),
                Flexible(
                    flex: 2,
                    child: defultTextField(
                        text: 'Allergy',
                        controller: AllergyController,
                        width: 200)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'ICU')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: ICU,
                        onChanged: (val) {
                          setState(() {
                            ICU = val!;
                            if (val) {
                              selectedCheckboxesPastHistory.add("ICU");
                            } else {
                              selectedCheckboxesPastHistory.remove("ICU");
                            }
                          });
                        })),
                Flexible(
                    flex: 2,
                    child: defultTextField(
                        text: 'ICU', controller: ICUController, width: 200)),
                sizedBoxWidth(width: 10),
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Surgical')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: Surgical,
                        onChanged: (val) {
                          setState(() {
                            Surgical = val!;
                            if (val) {
                              selectedCheckboxesPastHistory.add("Surgical");
                            } else {
                              selectedCheckboxesPastHistory.remove("Surgical");
                            }
                          });
                        })),
                Flexible(
                    flex: 2,
                    child: defultTextField(
                        text: 'Surgical',
                        controller: SurgicalController,
                        width: 200)),
                sizedBoxWidth(width: 10),
                Flexible(flex: 1, child: defultText(data: 'Blood Transfusion')),
                sizedBoxWidth(width: 5),
                Flexible(
                    flex: 1,
                    child: Checkbox(
                        value: BloodTransfusion,
                        onChanged: (val) {
                          setState(() {
                            BloodTransfusion = val!;
                            if (val) {
                              selectedCheckboxesPastHistory
                                  .add("Blood Transfusion");
                            } else {
                              selectedCheckboxesPastHistory
                                  .remove("Blood Transfusion");
                            }
                          });
                        })),
                Flexible(
                    flex: 2,
                    child: defultTextField(
                        text: 'Blood Transfusion',
                        controller: BloodTransfusionController,
                        width: 200)),
                sizedBoxWidth(width: 10),
              ],
            ),
            sizedBoxhight(hight: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: mysignin(
                    color: Colors.green,
                    x: Colors.white,
                    title: 'Save&Continue',
                    size: 25,
                    onPressed: () {
                      setState(() {
                        ComplaintsChildModel complaint = ComplaintsChildModel(
                            complaintName: complaintName.text,
                            complaintDescription: complaintDescription.text);
                        complaintsList.add(complaint);
                        complaintName.clear();
                        complaintDescription.clear();
                      });
                      familyHistory.addAll(selectedCheckboxesFamilyHistory);
                      selectedCheckboxesFamilyHistory.clear();
                      pastHistory.addAll(selectedCheckboxesPastHistory);
                      selectedCheckboxesPastHistory.clear();
                      int? houseNumber = int.tryParse(houseNuPatient.text);
                      // int? age = int.tryParse(agePatient.text);
                      int? mobile = int.tryParse(mobileNuPatient.text);
                      if (formKey.currentState!.validate()) {
                        PatientChildModel patient = PatientChildModel(
                          chosenDay: selectedday,
                          nameChildPatient: namePatient.text,
                          sexChildPatient: sexPatient,
                          codeChildPatient: codePatient.text,
                          houseNuChildPatient: houseNumber,
                          ageChildPatient: agePatient.text,
                          fatherCccubationChild: fatherOcc.text,
                          mobileNuChildPatient: mobile,
                          fatherEduChild: educationLevelFather,
                          motherEduChild: educationLevelMother,
                          orderOfBirthChild: orderOfBirthController.text,
                          pretermEduChild: preTermchild.text,
                          birthTermChild: termChild,
                          weekBirthMode: birthMode,
                          consanguinityChild: ConsanguinityChild.text,
                          nicuChild: nicuChild.text,
                          complaintsList: complaintsList,
                          familyHistoryDMchild: dmChild.text,
                          similarConditionChild: similarConditionChild.text,
                          familyHistoryChild: familyHistory,
                          pastHistoryChild: pastHistory,
                          pastHistSurgicalChild: SurgicalController.text,
                          pastHistMedicalChild: MedicalController.text,
                          pastHistIcuChild: ICUController.text,
                          pastHistBloodTransChild:
                              BloodTransfusionController.text,
                          pastHistAllergyChild: AllergyController.text,
                        );
                        MyDataBase.addPatientChild(patient);
                        Navigator.pushNamed(
                            context, childrenContinue.screenRoute,
                            arguments: patient);
                      }

                      print("done added child");
                    },
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: mysignin(
                    color: Colors.green,
                    x: Colors.white,
                    title: 'Save the Edit',
                    size: 25,
                    onPressed: () {
                      int? housn = int.tryParse(houseNuPatient.text);
                      int? mobilen = int.tryParse(mobileNuPatient.text);
                      // int? agen = int.tryParse(agePatient.text);
                      // int? abortionno = int.tryParse(abortionNumberController.text);
                      // int? gravidano = int.tryParse(gravideNumberController.text);
                      patientModel?.nameChildPatient = namePatient.text;
                      patientModel?.codeChildPatient = codePatient.text;
                      // patientModel?.sexAdultPatient = sex==null ?  patientModel.sexAdultPatient! : sex ;
                      patientModel?.houseNuChildPatient = housn;
                      patientModel?.mobileNuChildPatient = mobilen;
                      patientModel?.ageChildPatient = agePatient.text;
                      patientModel?.fatherCccubationChild = fatherOcc.text;
                      patientModel?.orderOfBirthChild =
                          orderOfBirthController.text;
                      patientModel?.pretermEduChild = preTermchild.text;
                      patientModel?.consanguinityChild =
                          ConsanguinityChild.text;
                      patientModel?.nicuChild = nicuChild.text;
                      patientModel?.familyHistoryDMchild = dmChild.text;
                      patientModel?.similarConditionChild =
                          similarConditionChild.text;
                      patientModel?.pastHistBloodTransChild =
                          BloodTransfusionController.text;
                      patientModel?.pastHistSurgicalChild =
                          SurgicalController.text;
                      patientModel?.pastHistAllergyChild =
                          AllergyController.text;
                      patientModel?.pastHistIcuChild = ICUController.text;
                      patientModel?.pastHistMedicalChild =
                          MedicalController.text;

                      MyDataBase.updatePatientChild(patientModel!);
                      // Navigator.pushNamed(context,ChildDash.screenRoute);
                      Navigator.pushNamed(context, childrenContinue.screenRoute,
                          arguments: patientModel);
                    },
                  ),
                )
              ],
            ),
            sizedBoxhight(hight: 60),

//end
          ]),
        ),
      ),
    );
  }
}
