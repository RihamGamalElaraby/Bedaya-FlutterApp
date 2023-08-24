import 'package:bedaya/screens/Search%20Screen/search_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../component/component.dart';
import '../../network/my_database.dart';
import '../../widgets/my_button.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ChildrenSearch extends StatefulWidget {
  static const String screenRoute = 'ChildrenSearch';

  @override
  State<ChildrenSearch> createState() => _ChildrenSearchState();
}

class _ChildrenSearchState extends State<ChildrenSearch> {
  TextEditingController codeController = TextEditingController();
  late PatientChildModel patient;
  @override
  Widget build(BuildContext context) {
    PatientChildModel? patientModel =
    ModalRoute.of(context)?.settings.arguments as PatientChildModel?;
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 83, 16),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/logo png.png', height: 60),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(10),
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
                  },
                ))
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // _auth.signOut();
              Navigator.pushNamed(context, SearchScreen.screenRoute);
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: StreamBuilder<QuerySnapshot<PatientChildModel>>(
            stream: MyDataBase.getPatientChild(patientModel?.codeChildPatient ?? codeController.text ),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return Center(child: Text('No patient data found!'));
              } else {
                patient = snapshot.data!.docs[0].data();
                return Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: "Name: ${patient?.nameChildPatient}",
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Code: ${patient?.codeChildPatient}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Sex: ${patient?.sexChildPatient}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Mobile No.: ${patient?.mobileNuChildPatient}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'House No.: ${patient
                                  ?.houseNuChildPatient}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: "Age: ${patient?.ageChildPatient}",
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Occupation: ${patient
                                  ?.fatherCccubationChild}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              "Mother Education Level: ${patient
                                  ?.fatherEduChild}",
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              "Father Education Level: ${patient
                                  ?.motherEduChild}",
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'order of birth: ${patient?.orderOfBirthChild}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient?.birthTermChild?.trim() == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'birth term child: ${patient?.birthTermChild}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient?.consanguinityChild?.trim() == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Consanguinity: ${patient?.consanguinityChild}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 30),
                          patient?.familyHistoryDMchild?.trim() == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'family history Dm: ${patient?.familyHistoryDMchild}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient?.familyHistoryChild == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Family history : ${patient?.familyHistoryChild?.map((s) => '"$s"').join(', ')}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 30),
                          patient?.pastHistoryChild == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Past history : ${patient?.pastHistoryChild?.map((s) => '"$s"').join(', ')}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient?.familyHistoryChild == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Immuzation : ${patient?.immunizationHistChild}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient?.dieteticHistChild == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Dietetic history : ${patient?.dieteticHistChild}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            createPdf();
                          },
                          child: Text("Print Data"))
                    ],
                  ),
                );
              }
            },
          )),
    );
  }
  void createPdf() async {
    final doc = pw.Document();
    doc.addPage(
      pw.MultiPage(
        build: (pw.Context context) {
          return [pw.Center(
            child: pw.Column(
              children: [
                pw.SizedBox(height: 60),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Name: ${patient.nameChildPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Code: ${patient.codeChildPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Sex: ${patient.sexChildPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "House No.: ${patient.houseNuChildPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Mobile No.: ${patient.mobileNuChildPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Age: ${patient.ageChildPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Occupation: ${patient.fatherCccubationChild ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "father education: ${patient.fatherEduChild ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Mother education: ${patient.motherEduChild ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'birth term child: ${patient.birthTermChild} ?? "N/A',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Consanguinity: ${patient.consanguinityChild} ?? "N/A',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'family history Dm: ${patient.familyHistoryDMchild} ?? "N/A',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Family history : ${patient.familyHistoryChild?.map((s) => '"$s"').join(', ')} ?? "N/A',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Past history : ${patient.pastHistoryChild?.map((s) => '"$s"').join(', ')} ??"N/A',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Immuzation : ${patient.immunizationHistChild} ?? "N/A',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Dietetic history : ${patient.dieteticHistChild} ?? "N/A',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Text(
                  "Developmental history",
                  style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                ),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        " Sphincters: ${patient.developmentalHistSphincters ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Social : ${patient.developmentalHistSocial ?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Language : ${patient.developmentalHistLanguage ?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Fine Motor : ${patient.developmentalHistFine ?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Gross Motor : ${patient.developmentalHistGross ?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Text(
                  "Antenatal history",
                  style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                ),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        " Hospitalization: ${patient.antenatalHistHospitalization?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Teratogenic Drugs : ${patient.antenatalHistTeratogenic?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Irradiation : ${patient.antenatalHistirradiation?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Disease : ${patient.antenatalHistDisease ?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'STORCH: ${patient.antenatalHistStorch?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),

                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        " Natal history: ${patient.natalHistChild?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'place : ${patient.placeChild?? 'N/A'}',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Neonatal history : ${patient.neonNatalHistChild?.map((s) => '"$s"').join(', ') } ?? N/A',
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.Text("Vital Data General Examination:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                pw.Text("Hr: ${patient.vitalHrChild ?? 'N/A'}"),
                pw.Text("RR: ${patient.vitalRrChild ?? 'N/A'}"),
                pw.Text("BP: ${patient.vitalBpChild ?? 'N/A'}"),
                pw.Text("Spo2: ${patient.vitalSpo2Child ?? 'N/A'}"),
                pw.Text("Temp: ${patient.vitalTempChild ?? 'N/A'}"),
                pw.Text("CRT: ${patient.vitalCrtChild ?? 'N/A'}"),
                pw.Text("RBS: ${patient.vitalRbsChild ?? 'N/A'}"),
                pw.Text("Hb: ${patient.vitalHbChild ?? 'N/A'}"),

                pw.SizedBox(height: 30),
                pw.Text("Complexion General Examination:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var complexion in patient.complextionsChild ?? [])
                  pw.Text(complexion),
                pw.SizedBox(height: 30),
                pw.Text("Anthropometry:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                pw.Text("Weight: ${patient.anthropometryWeight ?? 'N/A'}"),
                pw.Text("Height: ${patient.anthropometryHeight ?? 'N/A'}"),
                pw.Text("OFC: ${patient.anthropometryOfc ?? 'N/A'}"),
                pw.Text("Weight for Age: ${patient.anthropometryWeightForAge ?? 'N/A'}"),
                pw.Text("Height for Age: ${patient.anthropometryHeightForAge ?? 'N/A'}"),
                pw.Text("Weight for Height: ${patient.anthropometryWeightForHeight ?? 'N/A'}"),
                pw.Text("Deformity : ${patient.anthropometryDeformity ?? 'N/A'}"),


                pw.SizedBox(height: 30),
                pw.Text("Local Examination:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                pw.Text("Cardiac Examination: ${patient.cardiacExamChild ?? 'N/A'}"),
                pw.Text("Chest Examination: ${patient.chestExamChild ?? 'N/A'}"),
                pw.Text("Abdominal Examination: ${patient.abdominalExamChild ?? 'N/A'}"),


                pw.SizedBox(height: 30),
                pw.Text("Referral to other Clinics:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var referral in patient.referralClinicsChild ?? [])
                  pw.Text(referral),

                pw.SizedBox(height: 30),
                pw.Text("Follow-up: ${patient.followUpChild ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Go Home: ${patient.goHomeChild ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Screening:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var screeningItem in patient.screeningChild ?? [])
                  pw.Text(screeningItem),

              ],
            ),
          )];
        },
        pageFormat: PdfPageFormat.a4,
      ),
    );


    await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => doc.save());
  }
}
