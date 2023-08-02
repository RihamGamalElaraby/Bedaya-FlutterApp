import 'package:bedaya/screens/children%20checkup/Children_continue.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:bedaya/component/component.dart';

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
String sexPatient="";

String educationLevelFather="";
bool  Illiterate = false ;
bool  Readandwrite = false ;
bool  Primary = false ;
bool  Preparatory = false ;
bool  Secondary = false ;
bool  University = false ;
bool  Postgraduate = false ;

String educationLevelMother="";
bool  IlliterateM = false ;
bool  ReadandwriteM = false ;
bool  PrimaryM = false ;
bool  PreparatoryM = false ;
bool  SecondaryM = false ;
bool  UniversityM = false ;
bool  PostgraduateM = false ;

class _childrenCheckupState extends State<childrenCheckup> {
  TextEditingController mobileNuPatient =TextEditingController();
  TextEditingController namePatient =TextEditingController();
  TextEditingController codePatient =TextEditingController();
  TextEditingController houseNuPatient =TextEditingController();
  TextEditingController agePatient =TextEditingController();
  TextEditingController fatherOcc =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(context: context,
          data: 'Children Checkup',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
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
                ),
              ),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Code:')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: defultTextField(text: 'code', width: 100,controller: codePatient)),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'House Number:')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: defultTextField(text: 'H.N', controller: houseNuPatient,width: 120)),
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
                  flex: 1, child: Checkbox(value: Male, onChanged: (val) {
                setState(() {
                  Male =val! ;
                  Female = false ;
                });
                if (val!) {
                  sexPatient = "male";
                } else {
                  sexPatient = "female";
                }
              })),
              sizedBoxWidth(width: 5),
              Flexible(flex: 1, child: defultText(data: 'female')),
              Checkbox(value: Female, onChanged: (val) {
                setState(() {
                  Male = false;
                  Female = val! ;
                });
                if (val!) {
                  sexPatient = "male";
                } else {
                  sexPatient = "female";
                }
              }),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Age:')),
              sizedBoxWidth(width: 5),
              Flexible(
                flex: 1,
                child: defultTextField(controller: agePatient,
                  text: 'age',
                  width: 250,
                ),
              ),
              sizedBoxWidth(width: 10),
              Flexible(flex: 2, child: defultText(data: 'Father Occupation:')),
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
                child: defultTextField(controller: mobileNuPatient,
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
                  flex: 1, child: Checkbox(value: Illiterate, onChanged: (val) {
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
                  educationLevelFather = "Illiterate";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(
                  flex: 1, child: defultText(data: 'Read and write', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Readandwrite, onChanged: (val) {
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
                  educationLevelFather = "Read and write";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Primary', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Primary, onChanged: (val) {
                setState(() {
                  Illiterate = false;
                  Readandwrite = false ;
                  Primary= val!;
                  Preparatory = false;
                  Secondary = false;
                  University = false;
                  Postgraduate = false;

                });
                if (val!) {
                  educationLevelFather = "Primary";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Preparatory', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Preparatory, onChanged: (val) {
                setState(() {
                  Illiterate = false;
                  Readandwrite = false ;
                  Primary= false;
                  Preparatory = val!;
                  Secondary = false;
                  University = false;
                  Postgraduate = false;

                });
                if (val!) {
                  educationLevelFather = "Preparatory";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Secondary', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Secondary, onChanged: (val) {
                setState(() {
                  Illiterate = false;
                  Readandwrite = false ;
                  Primary= false;
                  Preparatory = false;
                  Secondary = val!;
                  University = false;
                  Postgraduate = false;

                });
                if (val!) {
                  educationLevelFather = "Secondary";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'University', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: University, onChanged: (val) {
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
                  educationLevelFather = "University";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Postgraduate', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Postgraduate, onChanged: (val) {
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
                  flex: 1, child: Checkbox(value: IlliterateM, onChanged: (val) {
                setState(() {
                  IlliterateM =val! ;
                  ReadandwriteM = false ;
                  PrimaryM= false;
                  PreparatoryM = false;
                  SecondaryM = false;
                  UniversityM = false;
                  PostgraduateM = false;

                });
                if (val!) {
                  educationLevelMother = "Illiterate";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(
                  flex: 1, child: defultText(data: 'Read and write', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: ReadandwriteM, onChanged: (val) {
                setState(() {
                  IlliterateM =false ;
                  ReadandwriteM = val! ;
                  PrimaryM= false;
                  PreparatoryM = false;
                  SecondaryM = false;
                  UniversityM = false;
                  PostgraduateM = false;

                });
                if (val!) {
                  educationLevelMother = 'Read and write';
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Primary', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: PrimaryM, onChanged: (val) {
                setState(() {
                  IlliterateM = false ;
                  ReadandwriteM = false ;
                  PrimaryM= val!;
                  PreparatoryM = false;
                  SecondaryM = false;
                  UniversityM = false;
                  PostgraduateM = false;

                });
                if (val!) {
                  educationLevelMother = "Primary";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Preparatory', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: PreparatoryM, onChanged: (val) {
                setState(() {
                  IlliterateM =false;
                  ReadandwriteM = false ;
                  PrimaryM= false;
                  PreparatoryM = val! ;
                  SecondaryM = false;
                  UniversityM = false;
                  PostgraduateM = false;

                });
                if (val!) {
                  educationLevelMother = "Preparatory";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Secondary', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: SecondaryM, onChanged: (val) {
                setState(() {
                  IlliterateM =false ;
                  ReadandwriteM = false ;
                  PrimaryM= false;
                  PreparatoryM = false;
                  SecondaryM = val!;
                  UniversityM = false;
                  PostgraduateM = false;

                });
                if (val!) {
                  educationLevelMother = "Secondary";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'University', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: UniversityM, onChanged: (val) {
                setState(() {
                  IlliterateM =false ;
                  ReadandwriteM = false ;
                  PrimaryM= false;
                  PreparatoryM = false;
                  SecondaryM = false;
                  UniversityM = val!;
                  PostgraduateM = false;

                });
                if (val!) {
                  educationLevelMother = "University";
                }
              })),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Postgraduate', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: PostgraduateM, onChanged: (val) {
                setState(() {
                  IlliterateM =false ;
                  ReadandwriteM = false ;
                  PrimaryM= false;
                  PreparatoryM = false;
                  SecondaryM = false;
                  UniversityM = false;
                  PostgraduateM = val!;

                });
                if (val!) {
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
                  text: 'order of Birth',
                  width: 250,
                ),
              ),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Full Term', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Preterm', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 5),
              Flexible(
                flex: 2,
                child: defultTextField(
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
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'C.S', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
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
                  child: defultTextField(text: 'Consanguinity:', width: 250)),
              sizedBoxWidth(width: 10),
              Flexible(
                  flex: 1,
                  child: defultText(
                      data: 'NICU Admission (If Yes Why and for How Long):')),
              sizedBoxWidth(width: 5),
              Flexible(
                flex: 1,
                child: defultTextField(
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
                          child: defultText(data: 'Complaint', c: Colors.white))
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
                            borderRadius: BorderRadius.all(Radius.circular(15)),
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
                            style: TextStyle(color: Colors.black, fontSize: 13),
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
                  onPressed: () => {
                 //   Navigator.pushNamed(context, childrenContinue.screenRoute)
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
                  flex: 1, child: defultTextField(text: 'DM', width: 100)),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Similar Condition')),
              sizedBoxWidth(width: 5),// el moshkla fel check box
              Flexible(
                  flex: 2,
                  child:
                  defultTextField(text: 'Similar Condition', width: 100)),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Genetic Disease')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'HTN')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
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
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              Flexible(
                  flex: 2,
                  child: defultTextField(text: 'Medical', width: 200)),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Allergy')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              Flexible(
                  flex: 2,
                  child: defultTextField(text: 'Allergy', width: 200)),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'ICU')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              Flexible(
                  flex: 2, child: defultTextField(text: 'ICU', width: 200)),
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
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              Flexible(
                  flex: 2,
                  child: defultTextField(text: 'Surgical', width: 200)),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Blood Transfusion')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              Flexible(
                  flex: 2,
                  child:
                  defultTextField(text: 'Blood Transfusion', width: 200)),
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
                  onPressed: () => {
                    Navigator.pushNamed(context, childrenContinue.screenRoute)
                  },
                ),
              )
            ],
          ),
          sizedBoxhight(hight: 60),

//end
        ]),
      ),
    );
  }
}

