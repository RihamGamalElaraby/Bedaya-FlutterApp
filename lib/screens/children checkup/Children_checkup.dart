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
bool Male = false;
bool Female = false;
bool married = false;

class _childrenCheckupState extends State<childrenCheckup> {
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
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Code:')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: defultTextField(text: 'code', width: 100)),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'House Number:')),
              sizedBoxWidth(width: 5),
              Flexible(
                  flex: 1, child: defultTextField(text: 'H.N', width: 120)),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Patient Name:')),
              sizedBoxWidth(width: 5),
              Flexible(
                flex: 1,
                child: defultTextField(
                  text: 'Name',
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
              Flexible(flex: 1, child: defultText(data: 'Sex:')),
              sizedBoxWidth(width: 5),
              Flexible(flex: 1, child: defultText(data: 'male')),
              Flexible(
                  flex: 1, child: Checkbox(value: Male, onChanged: (val) {})),
              sizedBoxWidth(width: 5),
              Flexible(flex: 1, child: defultText(data: 'female')),
              Checkbox(value: Female, onChanged: (val) {}),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Age:')),
              sizedBoxWidth(width: 5),
              Flexible(
                flex: 1,
                child: defultTextField(
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
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(
                  flex: 1, child: defultText(data: 'Read and write', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Primary', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Preparatory', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Secondary', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'University', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Postgraduate', x: 12)),
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
              defultText(data: 'Mother Education Level:'),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Illiterate', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(
                  flex: 1, child: defultText(data: 'Read and write', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Primary', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Preparatory', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Secondary', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'University', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
              sizedBoxWidth(width: 10),
              Flexible(flex: 1, child: defultText(data: 'Postgraduate', x: 12)),
              Flexible(
                  flex: 1, child: Checkbox(value: Day1, onChanged: (val) {})),
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
                                data: 'Complaint 1:', c: Colors.white)),
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
                                data: 'Complaint 2:', c: Colors.white)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 5),
                            borderRadius: BorderRadius.circular(10)),
                        width: 280,
                        height: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'C2',
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
                              labelText: 'C2',
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
                                data: 'Complaint 3:', c: Colors.white)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 5),
                            borderRadius: BorderRadius.circular(10)),
                        width: 280,
                        height: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'C3',
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
                              labelText: 'C3',
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
                                data: 'Complaint 4:', c: Colors.white)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 5),
                            borderRadius: BorderRadius.circular(10)),
                        width: 280,
                        height: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'C4',
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
                              labelText: 'C4',
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

// Flexible(flex: 1, child: defultText(data: 'Sex:')),
//               sizedBoxWidth(width: 5),
//               Flexible(flex: 1, child: defultText(data: 'male')),
//               Flexible(
//                   flex: 1, child: Checkbox(value: Male, onChanged: (val) {})),
//               sizedBoxWidth(width: 5),
//               Flexible(flex: 1, child: defultText(data: 'female')),
//               Checkbox(value: Female, onChanged: (val) {}),
//               sizedBoxWidth(width: 10),