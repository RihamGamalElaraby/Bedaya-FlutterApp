import 'package:bedaya/DateModels/PatientAdultModel.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/network/my_database.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_continue.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:flutter/material.dart';

class adultCheckup extends StatefulWidget {
  static const String screenRoute = 'adultCheckup';

  const adultCheckup({super.key});

  @override
  State<adultCheckup> createState() => _adultCheckupState();
}

class _adultCheckupState extends State<adultCheckup> {
  var formKey = GlobalKey<FormState>();
  List<String> Chosedaylist = ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'];
  String selectedday = 'Day 1';

  List<String> ChoseMartialState = ['Single', 'Married', 'Divorced', 'Widowed'];
  String SlectedMartialState = 'Married';

  bool Day1 = false; // haderrrr
  bool Day2 = false;
  bool Day3 = false;
  bool Day4 = false;
  bool Day5 = false;
  bool Day6 = false;
  bool Day7 = false;

  bool yesSmoke = false;
  bool noSmoke = false;
  String isSmoking = "";

  bool yesContraception = false;
  bool noContraception = false;
  String contraception = "";

  bool yesSmokeCessation = false;
  bool noSmokeCessation = false;
  String isSmokingCessationStatus = "";

  bool iudMethod = false;
  bool implantMethod = false;
  bool cocMethod = false;
  String contraceptionMethod = "";

  bool regular = false;
  bool irRegular = false;
  bool menopause = false;
  String Menstruation = "";

  String educationLevel = "";
  bool Illiterate = false;

  bool Readandwrite = false;

  bool Primary = false;

  bool Preparatory = false;

  bool Secondary = false;

  bool University = false;

  bool Postgraduate = false;

  bool Female = false;
  bool Male = false;
  String sex = "";

  bool married = false;

  TextEditingController patientNameController = TextEditingController();

  TextEditingController codePatientController = TextEditingController();

  TextEditingController houseNuController = TextEditingController();

  TextEditingController occubationController = TextEditingController();

  TextEditingController mobileNumController = TextEditingController();

  TextEditingController childrenNumController = TextEditingController();

  TextEditingController ageYoungchildController = TextEditingController();

  TextEditingController rateSmokingController = TextEditingController();

  TextEditingController typeSmokingController = TextEditingController();

  TextEditingController otherHabitsSmokingController = TextEditingController();

  TextEditingController durationCessationController = TextEditingController();

  TextEditingController gravideNumberController = TextEditingController();

  TextEditingController abortionNumberController = TextEditingController();

  TextEditingController otherContraceptionController = TextEditingController();

  TextEditingController agePatientController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PatientAdultModel? patientModel =
        ModalRoute.of(context)?.settings.arguments as PatientAdultModel?;

    if (patientModel?.sexAdultPatient == "male") {
      Male = true;
      Female = false;
    } else if (patientModel?.sexAdultPatient == "female") {
      Male = false;
      Female = true;
    }
    // bool Male = patientModel?.sexAdultPatient == "male";
    // bool Female = patientModel?.sexAdultPatient == "female";
    // if (patientModel?.sexAdultPatient == "male") {
    //   Male = true;
    // } else if (patientModel?.sexAdultPatient == "female") {
    //   Female = true;
    // }
    // patientModel?.sexAdultPatient == "male" ? Male = true : Female = true;
    if (patientModel?.codeAdultPatient != null) {
      patientNameController =
          TextEditingController(text: patientModel?.nameAdultPatient);
      occubationController =
          TextEditingController(text: patientModel?.occupationAdultPatient);
      codePatientController =
          TextEditingController(text: patientModel?.codeAdultPatient);
      houseNuController = TextEditingController(
          text: patientModel?.houseNumberAdultPatient.toString());
      agePatientController =
          TextEditingController(text: patientModel?.agePatientAdult.toString());
      mobileNumController = TextEditingController(
          text: patientModel?.mobileNumberAdultPatient.toString());
      if (patientModel?.maritalStatus == "Single") {
        SlectedMartialState = "Single";
      } else if (patientModel?.maritalStatus == "Widowed") {
        SlectedMartialState = "Widowed";
      } else if (patientModel?.maritalStatus == "Divorced") {
        SlectedMartialState = "Divorced";
      } else if (patientModel?.maritalStatus == "Married") {
        SlectedMartialState = "Married";
      }
      //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      childrenNumController =
          TextEditingController(text: patientModel?.childrenNumber.toString());
      ageYoungchildController =
          TextEditingController(text: patientModel?.ageOfYoungChild.toString());
      if (patientModel?.educationLevelAdultPatient == "Illiterate") {
        Illiterate = true;
      } else if (patientModel?.educationLevelAdultPatient == "Postgraduate") {
        Postgraduate = true;
      } else if (patientModel?.educationLevelAdultPatient == "University") {
        University = true;
      } else if (patientModel?.educationLevelAdultPatient == "Secondary") {
        Secondary = true;
      } else if (patientModel?.educationLevelAdultPatient == "Primary") {
        Primary = true;
      } else if (patientModel?.educationLevelAdultPatient == "Preparatory") {
        Preparatory = true;
      } else if (patientModel?.educationLevelAdultPatient == "Read and write") {
        Readandwrite = true;
      }

      if (patientModel?.smokingAdultPatient == "Smoke") {
        yesSmoke = true;
        noSmoke = false;
      } else if (patientModel?.smokingAdultPatient == "No smoke") {
        yesSmoke = false;
        noSmoke = true;
      }
      rateSmokingController =
          TextEditingController(text: patientModel?.rateSmoking);
      typeSmokingController =
          TextEditingController(text: patientModel?.typeSmoking);
      otherHabitsSmokingController =
          TextEditingController(text: patientModel?.otherHabitsSmoking);
      if (patientModel?.smokingCessationsStatus == "Smoke cessation") {
        yesSmokeCessation = true;
        noSmokeCessation = false;
      } else if (patientModel?.smokingCessationsStatus ==
          "No Smoke cessation") {
        yesSmokeCessation = false;
        noSmokeCessation = true;
      }

      durationCessationController =
          TextEditingController(text: patientModel?.DurationSmokingCessations);
      abortionNumberController =
          TextEditingController(text: patientModel?.abortionNumber.toString());
      gravideNumberController =
          TextEditingController(text: patientModel?.gravidaNumber.toString());
      if (patientModel?.Menstruation == "regular") {
        regular = true;
      } else if (patientModel?.Menstruation == "irRegular") {
        irRegular = true;
      } else if (patientModel?.Menstruation == "menopause") {
        menopause = true;
      }
      if (patientModel?.contracebtion == "yes contraception") {
        yesContraception = true;
        noContraception = false;
      } else if (patientModel?.contracebtion == "no contraception") {
        yesContraception = false;
        noContraception = true;
      }

      otherContraceptionController =
          TextEditingController(text: patientModel?.othercontracebtion);

      if (patientModel?.methodContracebtion == "IUD Contraception Method") {
        iudMethod = true;
      } else if (patientModel?.methodContracebtion ==
          "Implant Contraception Method") {
        implantMethod = true;
      } else if (patientModel?.methodContracebtion ==
          "COC Contraception Method") {
        cocMethod = true;
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          context: context,
          data: 'Adult Checkup',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: Form(
        key: formKey, // wrbna ana fnannnn
        child: SingleChildScrollView(
          child: Column(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(
                          'Chose Day',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    color: Colors.green,
                    // borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Center(
                        child: Text(
                      'Personal Information',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  )
                ],
              ),
              sizedBoxhight(
                hight: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(flex: 1, child: defultText(data: 'Patient Name:')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                    flex: 1,
                    child: defultTextField(
                      validator: (String? value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Enter name";
                        } else {
                          return null;
                        }
                      },
                      controller: patientNameController, // 2-done validator ?
                      text: 'Name',
                      width: 200,
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Code:',
                      )),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1,
                      child: defultTextField(
                        text: 'code',
                        width: 80,
                        controller: codePatientController,
                        validator: (String? value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Code";
                          } else {
                            return null;
                          }
                        },
                      )),
                  sizedBoxWidth(width: 10),
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
                            patientModel?.sexAdultPatient = "male";
                            sex = "male";
                          } else {
                            patientModel?.sexAdultPatient = null;
                          }
                        },
                      )),
                  sizedBoxWidth(width: 5),
                  Flexible(flex: 1, child: defultText(data: 'female')),
                  Checkbox(
                    value: Female,
                    onChanged: (val) {
                      setState(() {
                        Female = val!;
                        Male = false;
                      });
                      if (val!) {
                        patientModel?.sexAdultPatient = "female";
                        sex = "female";
                      } else {
                        patientModel?.sexAdultPatient = null;
                      }
                    },
                  ),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 1, child: defultText(data: 'House Number:')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1,
                      child: defultTextField(
                        text: 'H.N',
                        controller: houseNuController,
                      )),
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defultText(data: 'Age:'),
                  sizedBoxWidth(width: 5),
                  Flexible(
                    flex: 1,
                    child: defultTextField(
                      text: 'Age',
                      controller: agePatientController,
                      width: 140,
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  defultText(data: 'Occupation:'),
                  sizedBoxWidth(width: 5),
                  Flexible(
                    flex: 1,
                    child: defultTextField(
                      text: 'Occupation',
                      controller: occubationController,
                      width: 140,
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  defultText(data: 'Mobile Number:'),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1,
                      child: defultTextField(
                        text: 'num',
                        width: 140,
                        controller: mobileNumController,
                      ))
                ],
              ),
              sizedBoxhight(hight: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(flex: 2, child: defultText(data: 'Marital Status:')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                    flex: 2,
                    child: Container(
                      child: DropdownButton<String>(
                          value: SlectedMartialState,
                          items: ChoseMartialState.map(
                            (MartialState) => DropdownMenuItem(
                              value: MartialState,
                              child: Text(
                                MartialState,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ).toList(),
                          onChanged: (MartialState) => setState(() {
                                patientModel?.maritalStatus = MartialState;
                                SlectedMartialState = MartialState!;
                              })),
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  Flexible(
                    flex: 1,
                    child: defultText(
                      data: 'IF Married:',
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 2,
                      child: defultText(data: 'Children Number:', x: 12)),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1,
                      child: defultTextField(
                        text: 'Children Number',
                        controller: childrenNumController,
                      )),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 2,
                      child: defultText(data: 'Age of the youngest:', x: 12)),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1,
                      child: defultTextField(
                        text: 'Age of the youngest',
                        controller: ageYoungchildController,
                      )),
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defultText(data: 'Education Level:'),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: 'Illiterate', x: 12)),
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
                              patientModel?.educationLevelAdultPatient =
                                  "Illiterate";
                              educationLevel = "Illiterate";
                            }
                          })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: defultText(data: 'Read and write', x: 12)),
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
                              patientModel?.educationLevelAdultPatient =
                                  "Read and write";
                              educationLevel = "Read and write";
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
                              patientModel?.educationLevelAdultPatient =
                                  "Primary";
                              educationLevel = "Primary";
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
                              patientModel?.educationLevelAdultPatient =
                                  "Preparatory";
                              educationLevel = "Preparatory";
                            }
                          })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: 'Secondary', x: 12)),
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
                              patientModel?.educationLevelAdultPatient =
                                  "Secondary";
                              educationLevel = "Secondary";
                            }
                          })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: 'University', x: 12)),
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
                              patientModel?.educationLevelAdultPatient =
                                  "University";
                              educationLevel = "University";
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
                              patientModel?.educationLevelAdultPatient =
                                  "Postgraduate";
                              educationLevel = "Postgraduate";
                            }
                          })),
                  sizedBoxWidth(width: 10),
                ],
              ),
              sizedBoxhight(hight: 10),
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
                      'Habits of Medical importance:',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  )
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(flex: 2, child: defultText(data: 'Smoking: ')),
                  sizedBoxWidth(width: 20),
                  Flexible(flex: 1, child: defultText(data: 'Yes', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: yesSmoke,
                          onChanged: (val) {
                            setState(() {
                              yesSmoke = val!;
                              noSmoke = false;
                            });
                            if (val!) {
                              patientModel?.smokingAdultPatient = "Smoke";
                              isSmoking = "Smoke";
                            }
                          })),
                  sizedBoxWidth(width: 20),
                  Flexible(flex: 1, child: defultText(data: 'No', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: noSmoke,
                          onChanged: (val) {
                            setState(() {
                              yesSmoke = false;
                              noSmoke = val!;
                            });
                            if (val!) {
                              patientModel?.smokingAdultPatient = "No smoke";
                              isSmoking = "No smoke";
                            }
                          })),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 2, child: defultText(data: 'IF Yes; ')),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 1, child: defultText(data: 'Rate: ')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2,
                      child: defultTextField(
                        text: 'Rate',
                        width: 140,
                        controller: rateSmokingController,
                      )),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 1, child: defultText(data: 'Type: ')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2,
                      child: defultTextField(
                          text: 'Type',
                          width: 140,
                          controller: typeSmokingController)),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 2, child: defultText(data: 'Other habits: ')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 3,
                      child: defultTextField(
                          text: 'Other habits',
                          width: 200,
                          controller: otherHabitsSmokingController)),
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 2, child: defultText(data: 'Smoking Cessation:')),
                  sizedBoxWidth(width: 20),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Yes',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: yesSmokeCessation,
                          onChanged: (val) {
                            setState(() {
                              yesSmokeCessation = val!;
                              noSmokeCessation = false;
                            });
                            if (val!) {
                              patientModel?.smokingCessationsStatus =
                                  "Smoke cessation";
                              isSmokingCessationStatus = "Smoke cessation";
                            }
                          })),
                  sizedBoxWidth(width: 20),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'No',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: noSmokeCessation,
                          onChanged: (val) {
                            setState(() {
                              yesSmokeCessation = false;
                              noSmokeCessation = val!;
                            });
                            if (val!) {
                              patientModel?.smokingCessationsStatus =
                                  "No Smoke cessation";
                              isSmokingCessationStatus = "No Smoke cessation";
                            }
                          })),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 2, child: defultText(data: 'IF Yes; ')),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 1, child: defultText(data: 'Duration:  ')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2,
                      child: defultTextField(
                          text: 'Duration',
                          width: 140,
                          controller: durationCessationController)),
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(flex: 2, child: defultText(data: 'Menstruation:')),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Regular',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: regular,
                          onChanged: (val) {
                            setState(() {
                              regular = val!;
                              irRegular = false;
                              menopause = false;
                            });
                            if (val!) {
                              patientModel?.Menstruation = "regular";
                              Menstruation = "regular";
                            }
                          })),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Irregular',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: irRegular,
                          onChanged: (val) {
                            setState(() {
                              regular = false;
                              irRegular = val!;
                              menopause = false;
                            });
                            if (val!) {
                              patientModel?.Menstruation = "irRegular";
                              Menstruation = "irRegular";
                            }
                          })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Menopause',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: menopause,
                          onChanged: (val) {
                            setState(() {
                              regular = false;
                              irRegular = false;
                              menopause = val!;
                            });
                            if (val!) {
                              patientModel?.Menstruation = "menopause";
                              Menstruation = "menopause";
                            }
                          })),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2, child: defultText(data: 'Gravida Number:  ')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2,
                      child: defultTextField(
                          text: 'Gravida Number',
                          width: 140,
                          controller: gravideNumberController)),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 2, child: defultText(data: 'Abortion Number:')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2,
                      child: defultTextField(
                          text: 'Abortion Number',
                          width: 140,
                          controller: abortionNumberController)),
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(flex: 2, child: defultText(data: 'Contraception:')),
                  sizedBoxWidth(width: 20),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Yes',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: yesContraception,
                          onChanged: (val) {
                            setState(() {
                              yesContraception = val!;
                              noContraception = false;
                            });
                            if (val!) {
                              patientModel?.contracebtion = "yes contraception";
                              contraception = "yes contraception";
                            }
                          })),
                  sizedBoxWidth(width: 20),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'No',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: noContraception,
                          onChanged: (val) {
                            setState(() {
                              yesContraception = false;
                              noContraception = val!;
                            });
                            if (val!) {
                              patientModel?.contracebtion = "no contraception";
                              contraception = "no contraception";
                            }
                          })),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 2, child: defultText(data: 'IF Yes; ')),
                  sizedBoxhight(hight: 20),
                  Flexible(flex: 2, child: defultText(data: 'Method:')),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'IUD',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: iudMethod,
                          onChanged: (val) {
                            setState(() {
                              iudMethod = val!;
                              implantMethod = false;
                              cocMethod = false;
                            });
                            if (val!) {
                              patientModel?.methodContracebtion =
                                  "IUD Contraception Method";
                              contraceptionMethod = "IUD Contraception Method";
                            }
                          })),
                  sizedBoxWidth(width: 20),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Implant',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: implantMethod,
                          onChanged: (val) {
                            setState(() {
                              iudMethod = false;
                              implantMethod = val!;
                              cocMethod = false;
                            });
                            if (val!) {
                              patientModel?.methodContracebtion =
                                  "Implant Contraception Method";
                              contraceptionMethod =
                                  "Implant Contraception Method";
                            }
                          })),
                  sizedBoxWidth(width: 20),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'COC',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(
                          value: cocMethod,
                          onChanged: (val) {
                            setState(() {
                              iudMethod = false;
                              implantMethod = false;
                              cocMethod = val!;
                            });
                            if (val!) {
                              patientModel?.methodContracebtion =
                                  "COC Contraception Method";
                              contraceptionMethod = "COC Contraception Method";
                            }
                          })),
                  sizedBoxWidth(width: 20),
                  Flexible(flex: 2, child: defultText(data: 'Other:')),
                  Flexible(
                      flex: 2,
                      child: defultTextField(
                          text: 'other',
                          width: 140,
                          controller: otherContraceptionController)),
                ],
              ),
              sizedBoxhight(hight: 5),
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
                        int? agryoungch =
                            int.tryParse(ageYoungchildController.text);
                        int? chidlnum =
                            int.tryParse(childrenNumController.text);
                        // int? code = int.tryParse(codePatientController.text);
                        int? housn = int.tryParse(houseNuController.text);
                        int? mobilen = int.tryParse(mobileNumController.text);
                        int? agen = int.tryParse(agePatientController.text);
                        int? abortionno =
                            int.tryParse(abortionNumberController.text);
                        int? gravidano =
                            int.tryParse(gravideNumberController.text);
                        if (formKey.currentState!.validate()) {
                          PatientAdultModel patientmodel = PatientAdultModel(
                              chosenDay: selectedday,
                              nameAdultPatient: patientNameController.text,
                              codeAdultPatient: codePatientController.text,
                              sexAdultPatient: sex,
                              houseNumberAdultPatient: housn,
                              mobileNumberAdultPatient: mobilen,
                              agePatientAdult: agen,
                              occupationAdultPatient: occubationController.text,
                              maritalStatus: SlectedMartialState,
                              childrenNumber: chidlnum,
                              ageOfYoungChild: agryoungch,
                              educationLevelAdultPatient: educationLevel,
                              smokingAdultPatient: isSmoking,
                              rateSmoking: rateSmokingController.text,
                              typeSmoking: typeSmokingController.text,
                              otherHabitsSmoking:
                                  otherHabitsSmokingController.text,
                              smokingCessationsStatus: isSmokingCessationStatus,
                              DurationSmokingCessations:
                                  durationCessationController.text,
                              Menstruation: Menstruation,
                              gravidaNumber: gravidano,
                              abortionNumber: abortionno,
                              contracebtion: contraception,
                              methodContracebtion: contraceptionMethod,
                              othercontracebtion:
                                  otherContraceptionController.text);
                          print("done");
                          MyDataBase.addPatientAdult(patientmodel);
                          Navigator.pushNamed(
                              context, continueCheckupAdult.screenRoute,
                              arguments: patientmodel);
                          print("done"); // bs kda n2ol yarb
                          // MyDataBase.addPatientAdult(patientmodel).then((value) {
                          // });
                        }
                      },
                    ),
                  )
                ],
              ),
              sizedBoxhight(hight: 5),
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
                        int? agryoungch =
                            int.tryParse(ageYoungchildController.text);
                        int? chidlnum =
                            int.tryParse(childrenNumController.text);
                        // int? code = int.tryParse(codePatientController.text);
                        int? housn = int.tryParse(houseNuController.text);
                        int? mobilen = int.tryParse(mobileNumController.text);
                        int? agen = int.tryParse(agePatientController.text);
                        int? abortionno =
                            int.tryParse(abortionNumberController.text);
                        int? gravidano =
                            int.tryParse(gravideNumberController.text);
                        patientModel?.nameAdultPatient =
                            patientNameController.text;
                        patientModel?.chosenDay = selectedday;
                        patientModel?.nameAdultPatient =
                            patientNameController.text;
                        patientModel?.codeAdultPatient =
                            codePatientController.text;
                        // patientModel?.sexAdultPatient = sex==null ?  patientModel.sexAdultPatient! : sex ;
                        patientModel?.houseNumberAdultPatient = housn;
                        patientModel?.mobileNumberAdultPatient = mobilen;
                        patientModel?.agePatientAdult = agen;
                        patientModel?.occupationAdultPatient =
                            occubationController.text;
                        patientModel?.maritalStatus = SlectedMartialState;
                        patientModel?.childrenNumber = chidlnum;
                        patientModel?.ageOfYoungChild = agryoungch;
                        // patientModel?.educationLevelAdultPatient =
                        //     educationLevel;
                        // patientModel?.smokingAdultPatient = isSmoking;
                        patientModel?.rateSmoking = rateSmokingController.text;
                        patientModel?.typeSmoking = typeSmokingController.text;
                        patientModel?.otherHabitsSmoking =
                            otherHabitsSmokingController.text;
                        // patientModel?.smokingCessationsStatus =
                        //     isSmokingCessationStatus;
                        patientModel?.DurationSmokingCessations =
                            durationCessationController.text;
                        //patientModel?.Menstruation = Menstruation;
                        patientModel?.gravidaNumber = gravidano;
                        patientModel?.abortionNumber = abortionno;
                        // patientModel?.contracebtion = contraception;
                        // patientModel?.methodContracebtion = contraceptionMethod;
                        patientModel?.othercontracebtion =
                            otherContraceptionController.text;
                        MyDataBase.updatePatientAdult(patientModel!);
                        Navigator.pushNamed(
                            context, continueCheckupAdult.screenRoute,
                            arguments: patientModel);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
