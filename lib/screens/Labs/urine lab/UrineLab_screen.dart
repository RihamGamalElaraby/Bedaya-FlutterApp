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
import '../../../DateModels/patient_childmodel.dart';

class urineLabscreen extends StatefulWidget {
  static const String screenRoute = 'urineLabscreen';

  const urineLabscreen({super.key});

  @override
  State<urineLabscreen> createState() => _urineLabscreenState();
}

class _urineLabscreenState extends State<urineLabscreen>
    with SingleTickerProviderStateMixin {
  PatientAdultModel patientAd = PatientAdultModel();
  PatientChildModel patientCh = PatientChildModel();

  bool cats = false;
  bool eggs = false;
  bool Mucus = false;
  bool Bacteria = false;
  bool Yeast = false;
  bool Sperms = false;
  List<String> ubnormalfindings=[];
  List<String> selectedubnormalfindings = [];


  bool yesCheckurine = false;
  bool noCheckurine = false;
  String checkUrine = "";

  List<String> ChosedpositiveCalcium = [
    'negative',
    'Positive 1',
    'Positive 2',
    'Positive 3'
  ];
  String selectedpositiveCalcium = 'negative';

  List<String> Chosedpositiveuric = ['negative','Positive 1', 'Positive 2', 'Positive 3'];
  String selectedpositiveuric = 'negative';



  List<String> Chosedpositivetriple = [
    'negative',
    'Positive 1',
    'Positive 2',
    'Positive 3'
  ];
  String selectedpositivetriple = 'negative';

  List<String> ChosedpositiveAmor = [ "negative",
  'Positive 1',
  'Positive 2',
  'Positive 3'];
  String selectedpositiveAmor = "negative";

  bool Day1 = false;

  late AnimationController _controller;

  TextEditingController codeController = TextEditingController();

  String selectedBlood = "negative";

  List<String> chosenBlood = ["negative", "ca. 5-10", "ca. 50", "ca. 250"];

  String selectedUrobilinogen = "norm";
  List<String> chosenUrobilinogen = ["norm", "2", "4", "8", "12"];

  String selectedBilirubin = "negative";
  List<String> chosenBilirubin = [
    "negative",
    'Positive 1',
    'Positive 2',
    'Positive 3'
  ];

  String selectedProtein = "negative";
  List<String> chosenProtein = ["negative", "30", "100", "500"];

  String selectedNitrite = "negative";
  List<String> chosenNitrite = ["negative", "positive"];

  String selectedKetone = "negative";
  List<String> chosenKetone = [
    "negative",
    'Positive 1',
    'Positive 2',
    'Positive 3'
  ];

  String selectedGlucose = "negative";
  List<String> chosenGlucose = [
    "negative",
    "norm",
    "50",
    "150",
    "500",
    ">=1000"
  ];

  String selectedPH = "5";
  List<String> chosenPH = ["5", "6", "7", "8", "9"];

  String selectedLeukocyte = "negative";
  List<String> chosenLeukocyte = ["negative", "ca. 25", "ca. 75", "ca. 500"];

  String selectedDenisty = "1,000";
  List<String> chosenDenisty = [
    "1,000",
    "1,005",
    "1,010",
    "1,015",
    "1,020",
    "1,025",
    "1,030"
  ];
  TextEditingController urinephysicalExcolor = TextEditingController();
  TextEditingController urinephysicalExaspect  = TextEditingController();
  TextEditingController urinechemicalExhemoglobin =  TextEditingController();
  TextEditingController urinechemicalExSpecific =  TextEditingController();
  TextEditingController urinemicroscopicdataRBCs =TextEditingController();
  TextEditingController urinemicroscopicdatapusscells =TextEditingController();
  TextEditingController urinemicroscopicdataEpithelial =TextEditingController();
  TextEditingController urinealbumin =TextEditingController();
  TextEditingController urinecreat =TextEditingController();
  TextEditingController urineAlbuminCreatratio = TextEditingController();
  TextEditingController urinecomments =TextEditingController();

  bool child = false;
  bool adult = false;
  String selectedPatient = "" ;


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
          context: context,
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
                                    data: 'Select patient do u need search for', c: Colors.black,x: 15)),
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
                            return Text('No patient data found!');
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
                            return Text('No patient data found!');
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Results', c: Colors.black, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Colour:', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                            controller: urinephysicalExcolor,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Aspect:', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                            controller: urinephysicalExaspect,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Results', c: Colors.black, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Blood:', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedBlood,
                            items: chosenBlood
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '-ve', c: Colors.white, x: 18),
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
                          borderRadius:
                          BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Hemoglobin:', c: Colors.white, x: 18),
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
                          borderRadius:
                          BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultTextField(
                          controller: urinechemicalExhemoglobin,
                            text: 'result' ,  hight: 50, width: 250 ),
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
                          borderRadius:
                          BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                        defultText(data: '-ve', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedUrobilinogen,
                            items: chosenUrobilinogen
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedBilirubin,
                            items: chosenBilirubin
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '-ve', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedProtein,
                            items: chosenProtein
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedNitrite,
                            items: chosenNitrite
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '-ve', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedKetone,
                            items: chosenKetone
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '-ve', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedGlucose,
                            items: chosenGlucose
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '-ve', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: 'PH:', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedPH,
                            items: chosenPH
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: '4.5-7.5', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Specific gravity:',
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                            controller: urinechemicalExSpecific,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedLeukocyte,
                            items: chosenLeukocyte
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '-ve', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Denisty:', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: DropdownButton<String>(
                            value: selectedDenisty,
                            items: chosenDenisty
                                .map(
                                  (pov) => DropdownMenuItem(
                                    value: pov,
                                    child: Text(
                                      pov,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child:
                            defultText(data: '-ve', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Results', c: Colors.black, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                            controller: urinemicroscopicdataRBCs,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: '0-3/HPF', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                            controller: urinemicroscopicdatapusscells,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: '0-3/HPF', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Epithelial cells:',
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                            controller: urinemicroscopicdataEpithelial,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Few/HPF', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                            onChanged: (pov) => setState(
                                () => selectedpositiveCalcium = pov!)),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Absent', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Absent', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Triple phosphate:',
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                            onChanged: (pov) => setState(
                                () => selectedpositivetriple = pov!)),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Absent', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Absent', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Results', c: Colors.black, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                            controller: urinealbumin,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: defultText(
                            data: 'Creat:', c: Colors.white, x: 18),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                              controller: urinecreat,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
                      child: Center(
                          child: defultTextField(
                            controller: urineAlbuminCreatratio,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15))),
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
                                flex: 1, child: Checkbox(value: cats
                                , onChanged: (val) {
                              setState(() {
                                cats = val!;
                                if (val) {
                                  ubnormalfindings.add("Casts");
                                } else {
                                  selectedubnormalfindings.remove("Casts");
                                }
                              });

                            })),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Eggs', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1, child: Checkbox(value: eggs
                                , onChanged: (val) {
                                  setState(() {
                                    eggs = val!;
                                    if (val) {
                                      ubnormalfindings.add("Eggs");
                                    } else {
                                      selectedubnormalfindings.remove("Eggs");
                                    }
                                  });

                                })),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Mucus', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1, child: Checkbox(value: Mucus
                                , onChanged: (val) {
                                  setState(() {
                                    Mucus = val!;
                                    if (val) {
                                      ubnormalfindings.add("Mucus");
                                    } else {
                                      selectedubnormalfindings.remove("Mucus");
                                    }
                                  });

                                })),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Bacteria',
                                    x: 16,
                                    c: Colors.black)),
                            Flexible(
                                flex: 1, child: Checkbox(value: Bacteria
                                , onChanged: (val) {
                                  setState(() {
                                    Bacteria = val!;
                                    if (val) {
                                      ubnormalfindings.add("Bacteria");
                                    } else {
                                      selectedubnormalfindings.remove("Bacteria");
                                    }
                                  });
                                })),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Yeast', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1, child: Checkbox(value: Yeast
                                , onChanged: (val) {
                                  setState(() {
                                    Yeast = val!;
                                    if (val) {
                                      ubnormalfindings.add("Yeast");
                                    } else {
                                      selectedubnormalfindings.remove("Yeast");
                                    }
                                  });

                                })),
                            sizedBoxWidth(width: 10),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Sperms', x: 17, c: Colors.black)),
                            Flexible(
                                flex: 1, child: Checkbox(value: Sperms
                                , onChanged: (val) {
                                  setState(() {
                                    Sperms = val!;
                                    if (val) {
                                      ubnormalfindings.add("Sperms");
                                    } else {
                                      selectedubnormalfindings.remove("Sperms");
                                    }
                                  });
                                })),
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
                                    controller: urinecomments,
                                    text: 'Comments', width: 550, max: 4))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 40),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 400,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                        flex: 1,
                        child: defultText(
                            data: 'Checked out :', x: 17, c: Colors.white)),
                    sizedBoxWidth(width: 10),
                    Flexible(
                        flex: 1,
                        child: defultText(data: 'Yes', x: 17, c: Colors.white)),
                    sizedBoxWidth(width: 5),
                    Flexible(
                        flex: 1,
                        child: Checkbox(
                            value: yesCheckurine,
                            onChanged: (val) {
                              setState(() {
                                yesCheckurine = val!;
                                noCheckurine = false;
                              });
                              if (val!) {
                                checkUrine = "yes";
                              }
                            })),
                    sizedBoxWidth(width: 10),
                    Flexible(
                        flex: 1,
                        child: defultText(data: 'No', x: 17, c: Colors.white)),
                    Flexible(
                        flex: 1,
                        child: CheckboxListTile(
                            value: noCheckurine,
                            onChanged: (val) {
                              setState(() {
                                noCheckurine = val!;
                                yesCheckurine = false;
                              });
                              if (val!) {
                                checkUrine = "no";
                              }
                            })),
                    sizedBoxWidth(width: 10),
                  ],
                ),
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
                      onPressed: () {
                          print(checkUrine);
                          if(checkUrine=="yes"){
                            patientAd.urineCheckIn = false;
                            patientCh.urineCheckIn=false;
                          }
                          ubnormalfindings.addAll(selectedubnormalfindings);
                          selectedubnormalfindings.clear();
                          patientAd.urinePhysicalExColour = urinephysicalExcolor.text ;
                          patientAd.urinePhysicalExAspect = urinephysicalExaspect.text ;
                          patientAd.urineChemicalExBlood = selectedBlood ;
                          patientAd.urineChemicalExHemoglobin = urinechemicalExhemoglobin.text ;
                          patientAd.urineChemicalExUrobilingen = selectedUrobilinogen ;
                          patientAd.urineChemicalExBilirubin = selectedBilirubin ;
                          patientAd.urineChemicalExProtien = selectedProtein ;
                          patientAd.urineChemicalExNitrite = selectedNitrite ;
                          patientAd.urineChemicalExKetone = selectedKetone ;
                          patientAd.urineChemicalExGlucose = selectedGlucose ;
                          patientAd.urineChemicalExPH = selectedPH ;
                          patientAd.urineChemicalExSpecificgravity = urinechemicalExSpecific.text ;
                          patientAd.urineChemicalExLeukocyte = selectedLeukocyte ;
                          patientAd.urineChemicalExDensity = selectedDenisty;
                          patientAd.urineMicroscopicExRBCs = urinemicroscopicdataRBCs.text ;
                          patientAd.urineMicroscopicExPuscells = urinemicroscopicdatapusscells.text ;
                          patientAd.urineMicroscopicExEpithelialcells = urinemicroscopicdataEpithelial.text;
                          patientAd.urineMicroscopicExCalciumOxalate = selectedpositiveCalcium ;
                          patientAd.urineMicroscopicExUricacid = selectedpositiveuric ;
                          patientAd.urineMicroscopicExTriplephosphate = selectedpositivetriple ;
                          patientAd.urineMicroscopicExAmorphous = selectedpositiveAmor ;
                          patientAd.urineAlbumineAlbumine = urinealbumin.text ;
                          patientAd.urineAlbumineCreat = urinecreat.text ;
                          patientAd.urineAlbumineAlbuminaCreateRatio = urineAlbuminCreatratio.text ;
                          patientAd.urineAbnormalFindings = ubnormalfindings ;
                          patientAd.urineAdittionalComments = urinecomments.text ;
                          MyDataBase.updatePatientAdult(patientAd);
                          // child
                          patientCh.urinePhysicalExColour = urinephysicalExcolor.text ;
                          patientCh.urinePhysicalExAspect = urinephysicalExaspect.text ;
                          patientCh.urineChemicalExBlood = selectedBlood ;
                          patientCh.urineChemicalExHemoglobin = urinechemicalExhemoglobin.text ;
                          patientCh.urineChemicalExUrobilingen = selectedUrobilinogen ;
                          patientCh.urineChemicalExBilirubin = selectedBilirubin ;
                          patientCh.urineChemicalExProtien = selectedProtein ;
                          patientCh.urineChemicalExNitrite = selectedNitrite ;
                          patientCh.urineChemicalExKetone = selectedKetone ;
                          patientCh.urineChemicalExGlucose = selectedGlucose ;
                          patientCh.urineChemicalExPH = selectedPH ;
                          patientCh.urineChemicalExSpecificgravity = urinechemicalExSpecific.text ;
                          patientCh.urineChemicalExLeukocyte = selectedLeukocyte ;
                          patientCh.urineChemicalExDensity = selectedDenisty;
                          patientCh.urineMicroscopicExRBCs = urinemicroscopicdataRBCs.text ;
                          patientCh.urineMicroscopicExPuscells = urinemicroscopicdatapusscells.text ;
                          patientCh.urineMicroscopicExEpithelialcells = urinemicroscopicdataEpithelial.text;
                          patientCh.urineMicroscopicExCalciumOxalate = selectedpositiveCalcium ;
                          patientCh.urineMicroscopicExUricacid = selectedpositiveuric ;
                          patientCh.urineMicroscopicExTriplephosphate = selectedpositivetriple ;
                          patientCh.urineMicroscopicExAmorphous = selectedpositiveAmor ;
                          patientCh.urineAlbumineAlbumine = urinealbumin.text ;
                          patientCh.urineAlbumineCreat = urinecreat.text ;
                          patientCh.urineAlbumineAlbuminaCreateRatio = urineAlbuminCreatratio.text ;
                          patientCh.urineAbnormalFindings = ubnormalfindings ;
                          patientCh.urineAdittionalComments = urinecomments.text ;
                          MyDataBase.updatePatientChild(patientCh);

                          codeController.clear();
                        }
                    ),
                  ),
                  sizedBoxWidth(width: 20),

                ],
              ),
              sizedBoxhight(hight: 40),
            ],
          ),
        ),
      ),
    );
  }

}
