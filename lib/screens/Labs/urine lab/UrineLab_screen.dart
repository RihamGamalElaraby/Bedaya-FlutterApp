import 'package:bedaya/network/my_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/appbar.dart';
import 'package:bedaya/component/component.dart';
import 'package:bedaya/widgets/my_button.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:bedaya/screens/Labs/choselabs_screen.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab_screen.dart';

import '../../../DateModels/PatientAdultModel.dart';

class urineLabscreen extends StatefulWidget {
  static const String screenRoute = 'urineLabscreen';

  const urineLabscreen({super.key});

  @override
  State<urineLabscreen> createState() => _urineLabscreenState();
}

class _urineLabscreenState extends State<urineLabscreen>
    with SingleTickerProviderStateMixin {
  List<String> ChosedpositiveCalcium = [
    'Positive 1',
    'Positive 2',
    'Positive 3'
  ];
  String selectedpositiveCalcium = 'Positive 1';

  List<String> Chosedpositiveuric = ['Positive 1', 'Positive 2', 'Positive 3'];
  String selectedpositiveuric = 'Positive 1';

  List<String> Chosedpositivetriple = [
    'Positive 1',
    'Positive 2',
    'Positive 3'
  ];
  String selectedpositivetriple = 'Positive 1';

  List<String> ChosedpositiveAmor = ['Positive 1', 'Positive 2', 'Positive 3'];
  String selectedpositiveAmor = 'Positive 1';

  bool Day1 = false;

  late AnimationController _controller;

  TextEditingController codeController = TextEditingController();

  String selectedBlood = "negative";

  List<String> chosenBlood = ["negative" ,"ca. 5-10" , "ca. 50" ,"ca. 250"];

  String selectedUrobilinogen = "norm";
  List<String> chosenUrobilinogen = ["norm","2","4", "8","12"];

  String selectedBilirubin = "negative";
  List<String> chosenBilirubin = ["negative",'Positive 1', 'Positive 2', 'Positive 3'];

  String selectedProtein ="negative";
  List<String> chosenProtein = ["negative","30","100","500"];

  String selectedNitrite = "negative";
  List<String> chosenNitrite=["negative","positive"];

  String selectedKetone = "negative";
  List<String> chosenKetone = ["negative",'Positive 1', 'Positive 2', 'Positive 3'];

  String selectedGlucose ="negative";
  List<String> chosenGlucose=["negative","norm","50","150","500",">=1000"];

  String selectedPH = "5";
  List<String> chosenPH=["5","6","7","8","9"];

  String selectedLeukocyte = "negative";
  List<String> chosenLeukocyte=["negative","ca. 25","ca. 75","ca. 500"];

  String selectedDenisty ="1,000";
  List<String> chosenDenisty=["1,000","1,005","1,010","1,015","1,020","1,025","1,030"];


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          // grby hna text field

          data: 'Urine Lab',
          icon: Icon(Icons.menu),
          // searchFunction: (){
          //   Showbottomsheedt();
          //  } ,
        ),
        preferredSize: Size(100, 50),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxhight(hight: 30),
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
                      child: mysignin(
                    color: Colors.green,
                    title: 'search',
                    onPressed: () {
                      setState(() {});
                      print(codeController.text);
                      // StreamBuilder<QuerySnapshot<PatientAdultModel>>(
                      //   stream: MyDataBase.getPatient(codeController.text),
                      //   builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<PatientAdultModel>> snapshot) {
                      //     if (snapshot.connectionState == ConnectionState.waiting) {
                      //       return CircularProgressIndicator();
                      //     } else if (snapshot.hasError) {
                      //       return Text('Error: ${snapshot.error}');
                      //     } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      //       return Text('No patient data found!');
                      //     } else {
                      //       // Access the first patient from the query snapshot
                      //       PatientAdultModel patient = snapshot.data!.docs[0].data();
                      //       return Container(
                      //         decoration: BoxDecoration(
                      //           color: Colors.green,
                      //           borderRadius: BorderRadius.circular(10),
                      //         ),
                      //         width: 1000,
                      //         height: 80,
                      //         child: Center(
                      //           child: Row(
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               Flexible(
                      //                 flex: 4,
                      //                 child: defultText(
                      //                   data: "Patient’s Name: ${patient.nameAdultPatient}",
                      //                   c: Colors.black,
                      //                   x: 17,
                      //                 ),
                      //               ),
                      //               sizedBoxWidth(width: 300),
                      //               Flexible(
                      //                 flex: 1,
                      //                 child: defultText(
                      //                   data: 'Code: ${patient.codeAdultPatient}',
                      //                   c: Colors.black,
                      //                   x: 17,
                      //                 ),
                      //               ),
                      //               sizedBoxWidth(width: 50),
                      //               Flexible(
                      //                 flex: 1,
                      //                 child: defultText(
                      //                   data: 'Sex: ${patient.sexAdultPatient}',
                      //                   c: Colors.black,
                      //                   x: 17,
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       );
                      //     }
                      //   },
                      // );
                    },
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
                      child: StreamBuilder<QuerySnapshot<PatientAdultModel>>(
                        stream: MyDataBase.getPatient(codeController.text),
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
                            PatientAdultModel patient = snapshot.data!.docs[0].data();
                            print("data ${patient.screening}");
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 1000,
                              height: 80,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 4,
                                      child: defultText(
                                        data:
                                            "Patient’s Name: ${patient.nameAdultPatient}",
                                        c: Colors.black,
                                        x: 19,
                                      ),
                                    ),
                                    sizedBoxWidth(width: 300),
                                    Flexible(
                                      flex: 1,
                                      child: defultText(
                                        data:
                                            'Code: ${patient.codeAdultPatient}',
                                        c: Colors.black,
                                        x: 19,
                                      ),
                                    ),
                                    sizedBoxWidth(width: 50),
                                    Flexible(
                                      flex: 1,
                                      child: defultText(
                                        data: 'Sex: ${patient.sexAdultPatient}',
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
                      )),
                ],
              ),
              sizedBoxhight(hight: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: defultText(
                            data: 'Urinalysis', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  sizedBoxWidth(width: 40),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          defultText(
                              data: 'Physical Examination:',
                              c: Colors.black,
                              x: 18),
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Color.fromARGB(255, 2, 61, 4),
                            size: 40.0,
                          ),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Test name', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 30),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Results', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Reference', c: Colors.black, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Colour:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Amber yellow', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Aspect:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Clear', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  sizedBoxWidth(width: 40),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          defultText(
                              data: 'Chemical Examination:',
                              c: Colors.black,
                              x: 18),
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Color.fromARGB(255, 2, 61, 4),
                            size: 40.0,
                          ),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Test name', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 30),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Results', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Reference', c: Colors.black, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Blood:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedBlood,
                            items: chosenBlood.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedBlood = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(data: '-ve', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Urobilinogen:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedUrobilinogen,
                            items: chosenUrobilinogen.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedUrobilinogen = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: '0.5-1 mg/dl', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Bilirubin:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedBilirubin,
                            items: chosenBilirubin.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedBilirubin = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(data: '-ve', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Protein:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedProtein,
                            items: chosenProtein.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedProtein = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Amber yellow', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Nitrite:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedNitrite,
                            items: chosenNitrite.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedNitrite = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(data: '-ve', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Ketone bodies:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedKetone,
                            items: chosenKetone.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedKetone = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(data: '-ve', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Glucose:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedGlucose,
                            items: chosenGlucose.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedGlucose = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(data: '-ve', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(data: 'PH:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedPH,
                            items: chosenPH.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedPH = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '4.5-7.5', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Specific gravity:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: '1.002-1.022', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Leukocyte esterase:',
                            c: Colors.white,
                            x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedLeukocyte,
                            items: chosenLeukocyte.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedLeukocyte = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),

                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(data: '-ve', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
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
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Denisty:',
                            c: Colors.white,
                            x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedDenisty,
                            items: chosenDenisty.map(
                                  (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedDenisty = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),

                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(data: '-ve', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  sizedBoxWidth(width: 40),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          defultText(
                              data: 'Microscopic Examination:',
                              c: Colors.black,
                              x: 18),
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Color.fromARGB(255, 2, 61, 4),
                            size: 40.0,
                          ),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Test name', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 30),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Results', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Reference', c: Colors.black, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'RBCs:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '0-3/HPF', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Pus cells:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '0-3/HPF', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Epithelial cells:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Few/HPF', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Calcium Oxalate:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedpositiveCalcium,
                            items: ChosedpositiveCalcium.map(
                              (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedpositiveCalcium = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Absent', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Uric acid:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedpositiveuric,
                            items: Chosedpositiveuric.map(
                              (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedpositiveuric = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Absent', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Triple phosphate:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedpositivetriple,
                            items: Chosedpositivetriple.map(
                              (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedpositivetriple = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Absent', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Amorphous:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedpositiveAmor,
                            items: ChosedpositiveAmor.map(
                              (pov) => DropdownMenuItem(
                                value: pov,
                                child: Text(
                                  pov,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (pov) =>
                                setState(() => selectedpositiveAmor = pov!)),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Absent', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  sizedBoxWidth(width: 40),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          defultText(
                              data: 'Albumin/creat test:',
                              c: Colors.black,
                              x: 18),
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Color.fromARGB(255, 2, 61, 4),
                            size: 40.0,
                          ),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Test name', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 30),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Results', c: Colors.black, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Reference', c: Colors.black, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Albumin:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: '<30 mg/g', c: Colors.white, x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'Creat:', c: Colors.white, x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data:
                                '20-275 mg/dl in Females \n 20-320 mg/dl in male',
                            c: Colors.white,
                            x: 18),
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
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Albumin/Creat ratio',
                            c: Colors.white,
                            x: 18),
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              max: 4, text: 'result', hight: 50, width: 250)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 14, 64, 15),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data:
                                'Normal < 30 mg/dl \n Microalbuminuria 30-300 mg/g \n proteinuria > 300 mg/g',
                            c: Colors.white,
                            x: 18),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  sizedBoxWidth(width: 40),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 191, 191),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          defultText(
                              data: 'Abnormal findings:',
                              c: Colors.black,
                              x: 18),
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Color.fromARGB(255, 2, 61, 4),
                            size: 40.0,
                          ),
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
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      width: 800,
                      height: 60,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Casts', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1,
                                child:
                                    Checkbox(value: Day1, onChanged: (val) {})),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Eggs', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1,
                                child:
                                    Checkbox(value: Day1, onChanged: (val) {})),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Mucus', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1,
                                child:
                                    Checkbox(value: Day1, onChanged: (val) {})),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Bacteria', x: 16, c: Colors.black)),
                            Flexible(
                                flex: 1,
                                child:
                                    Checkbox(value: Day1, onChanged: (val) {})),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Yeast', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1,
                                child:
                                    Checkbox(value: Day1, onChanged: (val) {})),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Sperms', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1,
                                child:
                                    Checkbox(value: Day1, onChanged: (val) {})),
                            sizedBoxWidth(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
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
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 193, 191, 191),
                          borderRadius: BorderRadius.circular(10)),
                      width: 800,
                      height: 60,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                                flex: 3,
                                child: SizedBox(
                                    width: 80,
                                    child: defultText(
                                        data: 'Additional Comments:',
                                        c: Colors.black,
                                        x: 15))),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 5,
                                child: defultTextField(
                                    text: 'Comments', width: 550, max: 4))
                          ],
                        ),
                      ),
                    ),
                  ),
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
                      onPressed: () => {
                        Navigator.pushNamed(
                            context, ChoseLabsScreen.screenRoute)
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
                        Navigator.pushNamed(context, bloodLabScreen.screenRoute)
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
                        Navigator.pushNamed(context, urineLabscreen.screenRoute)
                      },
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 40),
            ],
          ),
        ),
      ),
    );
  }

// Showbottomsheedt() {
//   return showModalBottomSheet(context: context, builder: (context) {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       height: 300,
//       width: 500,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text('Please Write code', style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),),
//            SizedBox(height: 40,),
//           defultTextField (
//               text: 'code',
//                   controller : codeController
//           ),
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               MyDataBase.getPatient(codeController.text);
//             },
//           ),
//         ],
//       ),
//     );
//   },
//   );
//   }
}
