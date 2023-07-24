import 'package:bedaya/DateModels/PatientAdultModel.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_continue.dart';

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
  bool Day6= false;
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
  bool cocMethod =false;
  String contraceptionMethod = "";

  bool regular = false;
  bool irRegular = false;
  bool menopause =false;
  String isSmokingCessation = "";

  String educationLevel="";
  bool  Illiterate = false ;
  bool  Readandwrite = false ;
  bool  Primary = false ;
  bool  Preparatory = false ;
  bool  Secondary = false ;
  bool  University = false ;
  bool  Postgraduate = false ;


  bool Male = false;
   String sex= "";
  bool Female = false;
  bool married = false;

  TextEditingController patientNameController = TextEditingController();

  TextEditingController codePatientController = TextEditingController();

  TextEditingController houseNuController =TextEditingController();

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Adult Checkup',
          icon: Icon(Icons.menu),
          function: () => {},
        ),
        preferredSize: Size(100, 50),
      ),
      body: Form(
        key: formKey,  // wrbna ana fnannnn
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
              sizedBoxhight(hight: 20,),
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
                  Flexible(flex: 1, child: defultText(data: 'Code:',)),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1, child: defultTextField(text: 'code', width: 80,controller: codePatientController,validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Code";
                    } else {
                      return null;
                    }
                  },)),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 1, child: defultText(data: 'Sex:')),
                  sizedBoxWidth(width: 5),
                  Flexible(flex: 1, child: defultText(data: 'male')),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: Male, onChanged: (val) {
                     setState(() {
                       Male =val! ;
                       Female = false ;
                     });
                     if (val!) {
                       sex = "male";
                     } else {
                       sex = "female";
                     }
                     },)),
                  sizedBoxWidth(width: 5),
                  Flexible(flex: 1, child: defultText(data: 'female')),
                  Checkbox(value: Female, onChanged: (val) {
                    setState(() {
                      Female =val! ;
                      Male = false ;
                    });
                    if (val!) {
                      sex = "female";
                    } else {
                      sex = "male";
                    }
                  }),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 1, child: defultText(data: 'House Number:')),
                  sizedBoxWidth(width: 5),
                  Flexible(flex: 1, child: defultTextField(text: 'H.N',controller: houseNuController ,validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "house nu.";
                    } else {
                      return null;
                    }
                  },)),
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defultText(data: 'Occupation:'),
                  sizedBoxWidth(width: 5),
                  Flexible(
                    flex: 1,
                    child: defultTextField(
                      text: 'Occupation',
                      controller: occubationController,
                      validator: (String? value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Enter occupation";
                        } else {
                          return null;
                        }
                      },
                      width: 140,
                    ),
                  ),
                  sizedBoxWidth(width: 10),
                  defultText(data: 'Mobile Number:'),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1, child: defultTextField(text: 'num', width: 140,controller: mobileNumController,validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Mobile Number ";
                    } else if (value.length < 11) {
                      return "enter 11 numbers please";
                    } else {
                      return null;
                    }
                  },))
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
                          onChanged: (MartialState) => setState(
                              () => SlectedMartialState = MartialState!)),
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
                      flex: 1, child: defultTextField(text: 'Children Number',controller: childrenNumController,
                      validator: (String? value) {
                        if(SlectedMartialState == "Married" && (value == null || value.trim().isEmpty))
                        {
                          return "children num";
                        }else {
                          return null;
                        }
                      },
                        )),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 2,
                      child: defultText(data: 'Age of the youngest:', x: 12)),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 1,
                      child: defultTextField(text: 'Age of the youngest',controller: ageYoungchildController,validator: (String? value) {
                        if(SlectedMartialState == "Married" && (value == null || value.trim().isEmpty))
                        {
                          return "youngest age";
                        }else {
                          return null;
                        }
                      },)),
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
                      child: Checkbox(value: Illiterate, onChanged: (val) {
                        setState(() {
                          Illiterate =val! ;
                          Readandwrite = false ;
                           Primary= false;
                          Preparatory = false;
                          Secondary = false;
                          University = false;
                          Postgraduate = false;

                        });
                        if (val!) {
                          educationLevel = "Illiterate";
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: defultText(data: 'Read and write', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: Readandwrite, onChanged: (val) {
                        setState(() {
                          Illiterate =false ;
                          Readandwrite = val! ;
                          Primary= false;
                          Preparatory = false;
                          Secondary = false;
                          University = false;
                          Postgraduate = false;

                        });
                        if (val!) {
                          educationLevel = "Read and write";
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 1, child: defultText(data: 'Primary', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: Primary, onChanged: (val) {
                        setState(() {
                          Illiterate =false ;
                          Readandwrite = false  ;
                          Primary= val!;
                          Preparatory = false;
                          Secondary = false;
                          University = false;
                          Postgraduate = false;

                        });
                        if (val!) {
                          educationLevel = "Primary";
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: 'Preparatory', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: Preparatory, onChanged: (val) {
                        setState(() {
                          Illiterate =false ;
                          Readandwrite = false ;
                          Primary= false;
                          Preparatory = val!;
                          Secondary = false;
                          University = false;
                          Postgraduate = false;

                        });
                        if (val!) {
                          educationLevel = "Preparatory";
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: 'Secondary', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: Secondary, onChanged: (val) {
                        setState(() {
                          Illiterate =false ;
                          Readandwrite = false ;
                          Primary= false;
                          Preparatory = false;
                          Secondary = val!;
                          University = false;
                          Postgraduate = false;

                        });
                        if (val!) {
                          educationLevel = "Secondary";
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: 'University', x: 12)),
                  Flexible(
                      flex: 1,
                          child: Checkbox(value: University, onChanged: (val) {
                        setState(() {
                          Illiterate =false ;
                          Readandwrite = false ;
                          Primary= false;
                          Preparatory = false;
                          Secondary = false;
                          University = val!;
                          Postgraduate = false;

                        });
                        if (val!) {
                          educationLevel = "University";
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1, child: defultText(data: 'Postgraduate', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: Postgraduate, onChanged: (val) {
                        setState(() {
                          Illiterate =false ;
                          Readandwrite = false ;
                          Primary= false;
                          Preparatory = false;
                          Secondary = false;
                          University = false;
                          Postgraduate = val!;

                        });
                        if (val!) {
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
                      child: Checkbox(value: yesSmoke, onChanged: (val) {
                        setState(() {
                          yesSmoke =val! ;
                          noSmoke = false ;
                        });
                        if (val!) {
                          isSmoking = "Smoke";
                        }
                      })),
                  sizedBoxWidth(width: 20),
                  Flexible(flex: 1, child: defultText(data: 'No', x: 12)),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: noSmoke, onChanged: (val) {
                        setState(() {
                          yesSmoke =false ;
                          noSmoke = val! ;
                        });
                        if (val!) {
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
                      child: defultTextField(text: 'Rate', width: 140,controller: rateSmokingController,validator: (String? value) {
                        if(isSmoking == 'Smoke')
                        {
                          return "Rate smoking";
                        }else {
                          return null;
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 1, child: defultText(data: 'Type: ')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2,
                      child: defultTextField(text: 'Type', width: 140,controller: typeSmokingController,validator: (String? value) {
                        if(isSmoking == 'Smoke')
                        {
                          return "Type smoke";
                        }else {
                          return null;
                        }
                      })),
                  sizedBoxWidth(width: 10),
                  Flexible(flex: 2, child: defultText(data: 'Other habits: ')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 3,
                      child: defultTextField(text: 'Other habits', width: 200,controller: otherHabitsSmokingController)),
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
                      child: Checkbox(value: yesSmokeCessation, onChanged: (val) {
                        setState(() {
                          yesSmokeCessation =val! ;
                          noSmokeCessation = false ;
                        });
                        if (val!) {
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
                      child: Checkbox(value: noSmokeCessation, onChanged: (val) {
                        setState(() {
                          yesSmokeCessation = false;
                          noSmokeCessation = val! ;
                        });
                        if (val!) {
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
                      child: defultTextField(text: 'Duration', width: 140,controller: durationCessationController,validator:(String? value) {
                        if (yesSmokeCessation && (value == null || value.trim().isEmpty)) {
                      return "Duration smoke cessation";
                      }else {
                      return null;
                      }
                      })),
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      flex: 2, child: defultText(data: 'Smoking Cessation:')),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 1,
                      child: defultText(
                        data: 'Regular',
                      )),
                  Flexible(
                      flex: 1,
                      child: Checkbox(value: regular, onChanged: (val) {
                        setState(() {
                          regular =val! ;
                          irRegular = false ;
                          menopause= false;
                        });
                        if (val!) {
                          isSmokingCessation = "regular";
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
                      child: Checkbox(value: irRegular, onChanged: (val) {
                        setState(() {
                          regular =false ;
                          irRegular = val! ;
                          menopause= false;
                        });
                        if (val!) {
                          isSmokingCessation = "irRegular";
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
                      child: Checkbox(value: menopause, onChanged: (val) {
                        setState(() {
                          regular =false ;
                          irRegular = false ;
                          menopause= val!;
                        });
                        if (val!) {
                          isSmokingCessation = "menopause";
                        }
                      })),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2, child: defultText(data: 'Gravida Number:  ')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2,
                      child:
                          defultTextField(text: 'Gravida Number', width: 140,controller: gravideNumberController)),
                  sizedBoxWidth(width: 10),
                  Flexible(
                      flex: 2, child: defultText(data: 'Abortion Number:')),
                  sizedBoxWidth(width: 5),
                  Flexible(
                      flex: 2,
                      child:
                          defultTextField(text: 'Abortion Number', width: 140,controller: abortionNumberController)),
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
                      child: Checkbox(value: yesContraception, onChanged: (val) {
                        setState(() {
                          yesContraception =val! ;
                          noContraception = false ;

                        });
                        if (val!) {
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
                      child: Checkbox(value: noContraception, onChanged: (val) {
                        setState(() {
                          yesContraception =false ;
                          noContraception =  val!;

                        });
                        if (val!) {
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
                      child: Checkbox(value: iudMethod, onChanged: (val) {
                        setState(() {
                          iudMethod =val! ;
                          implantMethod = false ;
                          cocMethod=false;

                        });
                        if (val!) {
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
                      child: Checkbox(value: implantMethod, onChanged: (val) {
                        setState(() {
                          iudMethod =false ;
                          implantMethod = val! ;
                          cocMethod=false;

                        });
                        if (val!) {
                          contraceptionMethod = "Implant Contraception Method";
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
                      child: Checkbox(value: cocMethod, onChanged: (val) {
                        setState(() {
                          iudMethod =false ;
                          implantMethod = false ;
                          cocMethod=val!;

                        });
                        if (val!) {
                          contraceptionMethod = "COC Contraception Method";
                        }
                      })),
                  sizedBoxWidth(width: 20),
                  Flexible(flex: 2, child: defultText(data: 'Other:')),
                  Flexible(
                      flex: 2,
                      child: defultTextField(text: 'other', width: 140,controller: otherContraceptionController)),
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
                      onPressed: (){
                        // print(sex);
                        // print(educationLevel);
                        // print(int.parse(houseNuController.text));
                        if (formKey.currentState!.validate()) {

                          Navigator.pushNamed(
                            context,
                            continueCheckupAdult.screenRoute,
                          );
                          PatientAdultModel patientmodel = PatientAdultModel(
                            chosenDay: selectedday,
                            nameAdultPatient: patientNameController.text,
                            codeAdultPatient: int.parse(codePatientController.text),
                            sexAdultPatient: sex,
                            houseNumberAdultPatient: int.parse(houseNuController.text),
                            mobileNumberAdultPatient: int.parse(mobileNumController.text),
                            occupationAdultPatient: occubationController.text,
                            maritalStatus:  SlectedMartialState ,
                            childrenNumber: int.parse(childrenNumController.text),
                            ageOfYoungChild: int.parse(ageYoungchildController.text),
                            educationLevelAdultPatient: educationLevel,
                            smokingAdultPatient: isSmoking,
                            rateSmoking: rateSmokingController.text,
                            typeSmoking: typeSmokingController.text,
                            otherHabitsSmoking: otherHabitsSmokingController.text,
                            smokingCessationsStatus: isSmokingCessationStatus,
                            DurationSmokingCessations: durationCessationController.text,
                            smokingCessations: isSmokingCessation,
                            gravidaNumber: int.parse(gravideNumberController.text),
                            abortionNumber: int.parse(abortionNumberController.text),
                            contracebtion: contraception,
                            methodContracebtion: contraceptionMethod,
                            othercontracebtion: otherContraceptionController.text










                          );
                        }
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

//       backgroundColor: Colors.white,
//       appBar: AppBar
//         leading: IconButton(
//             hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//             onPressed: () {},
//             icon: Icon(Icons.menu)),
//         title: Text(
//           'Bedaya',
//           style: TextStyle(
//             fontFamily: AutofillHints.addressState,
//             fontSize: 24,
//             color: Colors.white,
//           ),
//         ),
//         actions: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Flexible(
//                 flex: 1,
//                 child: IconButton(
//                     hoverColor:
//                         Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//                     onPressed: () {},
//                     icon: Icon(Icons.save)),
//               ),
//               Flexible(
//                 flex: 1,
//                 child: IconButton(
//                     hoverColor:
//                         Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//                     onPressed: () {},
//                     icon: Icon(Icons.add)),
//               ),
//               Flexible(
//                 flex: 1,
//                 child: IconButton(
//                     hoverColor:
//                         Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//                     onPressed: () {},
//                     icon: Icon(Icons.search)),
//               ),
//               SizedBox(width: 50),
//               Flexible(
//                 flex: 1,
//                 child: IconButton(
//                     hoverColor:
//                         Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//                     onPressed: () {},
//                     icon: Icon(Icons.close)),
//               ),
//               SizedBox(width: 50),
//             ],
//           )
//         ],
//         backgroundColor: Color.fromARGB(255, 1, 124, 5),
//         centerTitle: true,
//         elevation: 50.0,
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           Center(
//             child: Text(
//               'Add Adult Patient',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 0, 0, 0),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Flexible(
//                     flex: 2,
//                     child: Text(
//                       'Day1',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 1, 70, 2),
//                       ),
//                     )),
//                 Flexible(
//                     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
//                 Flexible(
//                     flex: 2,
//                     child: Text(
//                       'Day2',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 1, 70, 2),
//                       ),
//                     )),
//                 Flexible(
//                     flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//                 Flexible(
//                     flex: 2,
//                     child: Text(
//                       'Day3',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 1, 70, 2),
//                       ),
//                     )),
//                 Flexible(
//                     flex: 1, child: Checkbox(value: Day3, onChanged: (val) {})),
//                 Flexible(
//                     flex: 2,
//                     child: Text(
//                       'Day4',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 1, 70, 2),
//                       ),
//                     )),
//                 Flexible(
//                     flex: 1, child: Checkbox(value: Day4, onChanged: (val) {})),
//                 Flexible(
//                     flex: 2,
//                     child: Text(
//                       'Day5',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 1, 70, 2),
//                       ),
//                     )),
//                 Flexible(
//                     flex: 1, child: Checkbox(value: Day5, onChanged: (val) {})),
//                 SizedBox(
//                   width: 10,
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Flexible(
//                   flex: 1,
//                   child: Text(
//                     'Name',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               SizedBox(width: 10),
//               Flexible(
//                 flex: 2,
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Enter Name',
//                     filled: true,
//                     contentPadding:
//                         EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.green, width: 1.0),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(10),
//                         )),
//                   ),
//                 ),
//               ),
//               sizedBoxWidth(width: 10),
//               Flexible(
//                 flex: 2,
//                 child: Text(
//                   'Code',
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Color.fromARGB(255, 1, 70, 2),
//                   ),
//                 ),
//               ),
//               sizedBoxWidth(width: 10),
//               Flexible(
//                 flex: 2,
//                 child: defultTextField(
//                     text: 'code', width: double.infinity, hight: 90),
//               )
//             ],
//           ),
//           SizedBox(height: 10),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 width: 10,
//               ),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Male',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Male, onChanged: (val) {})),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Female',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Female, onChanged: (val) {})),
//               SizedBox(
//                 width: 10,
//               ),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'House Number:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               SizedBox(
//                 width: 10,
//               ),
//               Flexible(
//                 child: Flexible(
//                   flex: 2,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       hintText: 'Enter number',
//                       filled: true,
//                       contentPadding:
//                           EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(10))),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.green, width: 1.0),
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(10),
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           )),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Mobile Number:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               SizedBox(
//                 width: 12,
//               ),
//               Flexible(
//                 flex: 2,
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Mobile Number',
//                     filled: true,
//                     contentPadding:
//                         EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.green, width: 1.0),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(10),
//                         )),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Occupation:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               SizedBox(
//                 width: 12,
//               ),
//               Flexible(
//                 flex: 1,
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Enter Occupation',
//                     filled: true,
//                     contentPadding:
//                         EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.green, width: 1.0),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(10),
//                         )),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Flexible(
//                   child: Text(
//                 'Marital Status:',
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 1, 70, 2),
//                 ),
//               )),
//               Flexible(
//                   child: Text(
//                 'Single',
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 1, 70, 2),
//                 ),
//               )),
//               Flexible(
//                   flex: 2,
//                   child: Checkbox(value: married, onChanged: (Val) {})),
//               Flexible(
//                   child: Text(
//                 'Married',
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 1, 70, 2),
//                 ),
//               )),
//               Flexible(
//                   flex: 2,
//                   child: Checkbox(value: married, onChanged: (Val) {})),
//               Flexible(
//                   child: Text(
//                 'Divorced',
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 1, 70, 2),
//                 ),
//               )),
//               Flexible(
//                   flex: 2,
//                   child: Checkbox(value: married, onChanged: (Val) {})),
//               Flexible(
//                   child: Text(
//                 'Widowed',
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 1, 70, 2),
//                 ),
//               )),
//               Flexible(
//                   flex: 2,
//                   child: Checkbox(value: married, onChanged: (Val) {})),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'IFMarried',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Children Number:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               SizedBox(
//                 width: 12,
//               ),
//               Flexible(
//                 flex: 1,
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Enter Number',
//                     filled: true,
//                     contentPadding:
//                         EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.green, width: 1.0),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(10),
//                         )),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Age of the youngest:',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               SizedBox(
//                 width: 20,
//               ),
//               Flexible(
//                 flex: 2,
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Enter Age',
//                     filled: true,
//                     contentPadding:
//                         EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.green, width: 1.0),
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(10),
//                         )),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Flexible(
//                 flex: 2,
//                 child: Text(
//                   'Education Level',
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Color.fromARGB(255, 1, 70, 2),
//                   ),
//                 ),
//               ),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Day3',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Day3',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Day3',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Day3',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Day3',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Day3',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//               Flexible(
//                   flex: 2,
//                   child: Text(
//                     'Day3',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 1, 70, 2),
//                     ),
//                   )),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Flexible(flex: 1, child: defultText(data: 'DAY1')),
//     Flexible(
//         flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
//     sizedBoxWidth(width: 10),
//     Flexible(flex: 1, child: defultText(data: 'DAY2')),
//     Flexible(
//         flex: 1, child: Checkbox(value: Day2, onChanged: (val) {})),
//     sizedBoxWidth(width: 10),
//     Flexible(flex: 1, child: defultText(data: 'DAY3')),
//     Flexible(
//         flex: 1, child: Checkbox(value: Day3, onChanged: (val) {})),
//     sizedBoxWidth(width: 10),
//     Flexible(flex: 1, child: defultText(data: 'DAY4')),
//     Flexible(
//         flex: 1, child: Checkbox(value: Day4, onChanged: (val) {})),
//     sizedBoxWidth(width: 10),
//     Flexible(flex: 1, child: defultText(data: 'DAY5')),
//     Flexible(
//         flex: 1, child: Checkbox(value: Day5, onChanged: (val) {})),
//   ],
// ),

// Flexible(flex: 1, child: defultText(data: 'Single', x: 12)),
// Flexible(
//     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
// sizedBoxWidth(width: 5),
// Flexible(flex: 1, child: defultText(data: 'Married', x: 12)),
// Flexible(
//     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
// sizedBoxWidth(width: 5),
// Flexible(flex: 1, child: defultText(data: 'Divorced', x: 12)),
// Flexible(
//     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
// sizedBoxWidth(width: 5),
// Flexible(flex: 1, child: defultText(data: 'Widowed', x: 12)),
// Flexible(
//     flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
