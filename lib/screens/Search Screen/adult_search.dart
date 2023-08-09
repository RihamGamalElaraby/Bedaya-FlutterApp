import 'package:bedaya/screens/Search%20Screen/search_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../DateModels/PatientAdultModel.dart';
import '../../component/component.dart';
import '../../network/my_database.dart';
import '../../widgets/my_button.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class AdultSearch extends StatefulWidget {
  static const String screenRoute = 'AdultSearch';

  @override
  State<AdultSearch> createState() => _AdultSearchState();
}

class _AdultSearchState extends State<AdultSearch> {
  TextEditingController codeController = TextEditingController();
  late PatientAdultModel patient;

  @override
  Widget build(BuildContext context) {
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
          child: StreamBuilder<QuerySnapshot<PatientAdultModel>>(
            stream: MyDataBase.getPatientAdult(codeController.text),
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
                              data: "Name: ${patient.nameAdultPatient}",
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Code: ${patient.codeAdultPatient}',
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
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Mobile No.: ${patient.mobileNumberAdultPatient}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'House No.: ${patient
                                  .houseNumberAdultPatient}',
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
                              data: "Age: ${patient.agePatientAdult}",
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Occupation: ${patient
                                  .occupationAdultPatient}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Marital Status: ${patient.maritalStatus}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          patient.childrenNumber == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Children No.: ${patient.childrenNumber}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 50),
                          patient.ageOfYoungChild == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Age oh young Child.: ${patient.ageOfYoungChild}',
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
                              "Education Level: ${patient
                                  .educationLevelAdultPatient}",
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Smoking: ${patient.smokingAdultPatient}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient.rateSmoking?.trim() == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Rate Smoking: ${patient.rateSmoking}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient.typeSmoking?.trim() == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data: 'Type Smoking: ${patient.typeSmoking}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient.otherHabitsSmoking?.trim() == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Other Habits: ${patient.otherHabitsSmoking}',
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
                          patient.smokingCessationsStatus?.trim() == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Status: ${patient.smokingCessationsStatus}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
                          sizedBoxWidth(width: 30),
                          patient.DurationSmokingCessations == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Duration : ${patient.DurationSmokingCessations}',
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
                        "Name: ${patient.nameAdultPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Code: ${patient.codeAdultPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Sex: ${patient.sexAdultPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "House No.: ${patient.houseNumberAdultPatient ?? 'N/A'}",
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
                        "Mobile No.: ${patient.mobileNumberAdultPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Age: ${patient.agePatientAdult ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Occupation: ${patient.occupationAdultPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Marital Status: ${patient.maritalStatus ?? 'N/A'}",
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
                        "Children No.: ${patient.childrenNumber ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Age of Young Child: ${patient.ageOfYoungChild ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Education Level: ${patient.educationLevelAdultPatient ?? 'N/A'}",
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
                        "Smoking: ${patient.smokingAdultPatient ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Rate Smoking: ${patient.rateSmoking ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Type Smoking: ${patient.typeSmoking ?? 'N/A'}",
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
                        "Other Habits: ${patient.otherHabitsSmoking ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Smoking Cessations Status: ${patient.smokingCessationsStatus ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Duration Smoking Cessations: ${patient.DurationSmokingCessations ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),
                pw.SizedBox(height: 30),
                pw.Row(
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Gravida Number: ${patient.gravidaNumber ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Abortion Number: ${patient.abortionNumber ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Contraception: ${patient.contracebtion ?? 'N/A'}",
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
                        "Method Contraception: ${patient.methodContracebtion ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Other Contraception: ${patient.othercontracebtion ?? 'N/A'}",
                        style: pw.TextStyle(color: PdfColors.black, fontSize: 19),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 30),


                // pw.SizedBox(height: 30),
                // pw.Text("Complaints List:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                // for (var complaint in patient.complaintsList ?? [])
                //   pw.Text(complaint.name),

                pw.SizedBox(height: 30),
                pw.Text("Medical Past History:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var history in patient.medicalPastHistory ?? [])
                  pw.Text(history),

                pw.SizedBox(height: 30),
                pw.Text("Other Medical Past History: ${patient.otherMedicalPastHistory ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Allergy Past History: ${patient.allergyPastHistory ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Specify Allergy Past History: ${patient.specifyAllergyPastHistory ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Blood Transfusion Past History: ${patient.bloodTransfusionPastHistory ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Duration Blood Transfusion Past History: ${patient.durationBloodTransfusionPastHistory ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Surgical Past History: ${patient.surgicalPastHistory ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Operation Surgical Past History: ${patient.operationSurgicalPastHistory ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Drugs of Chronic Diseases:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var drug in patient.drugsOfChronicDiseases ?? [])
                  pw.Text(drug),

                pw.SizedBox(height: 30),
                pw.Text("Others Drugs of Chronic Diseases: ${patient.othersDrugsOfChronicDiseases ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Family History:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var familyHistory in patient.familyHistory ?? [])
                  pw.Text(familyHistory),

                pw.SizedBox(height: 30),
                pw.Text("Others Family History: ${patient.othersFamilyHistory ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Vital Data General Examination:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                pw.Text("BP1: ${patient.BP1Vital ?? 'N/A'}"),
                pw.Text("mmHg1: ${patient.mmHg1Vital ?? 'N/A'}"),
                pw.Text("HR: ${patient.hrVital ?? 'N/A'}"),
                pw.Text("Temp: ${patient.tempVital ?? 'N/A'}"),
                pw.Text("Random Blood Sugar: ${patient.randomBloodSugarVital ?? 'N/A'}"),
                pw.Text("O2 Saturation: ${patient.o2Saturationvital ?? 'N/A'}"),

                pw.SizedBox(height: 30),
                pw.Text("Complexion General Examination:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var complexion in patient.complexionGenerallExamination ?? [])
                  pw.Text(complexion),

                pw.SizedBox(height: 30),
                pw.Text("Referral of Convoy Clinics:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var referral in patient.ReferralOfConvoyClinics ?? [])
                  pw.Text(referral),

                pw.SizedBox(height: 30),
                pw.Text("Follow-up: ${patient.followUp ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Go Home: ${patient.goHome ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Community Development: ${patient.communityDevelopment ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                pw.SizedBox(height: 30),
                pw.Text("Screening:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var screeningItem in patient.screening ?? [])
                  pw.Text(screeningItem),

                pw.SizedBox(height: 30),
                pw.Text("Urine Check-in: ${patient.urineCheckIn ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                // Blood Check-in
                pw.SizedBox(height: 30),
                pw.Text("Blood Check-in: ${patient.bloodCheckIn ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),

                // Stool Check-in
                pw.SizedBox(height: 30),
                pw.Text("Stool Check-in: ${patient.stoolCheckIn ?? 'N/A'}", style: pw.TextStyle(color: PdfColors.black, fontSize: 19)),


                pw.SizedBox(height: 30),
                pw.Text("Cardiodiagnoses List:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var item in patient.Cardiodiagnoses ?? [])
                  pw.Text(item),

                pw.SizedBox(height: 30),
                pw.Text("CardioTreatment List:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var item in patient.CardioTreatment ?? [])
                  pw.Text(item),

                pw.SizedBox(height: 30),
                pw.Text("Dentaldiagnoses List:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var item in patient.Dentaldiagnoses ?? [])
                  pw.Text(item),

                pw.SizedBox(height: 30),
                pw.Text("DentalTreatment List:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var item in patient.DentalTreatment ?? [])
                  pw.Text(item),

                pw.SizedBox(height: 30),
                pw.Text("Dermadiagnoses List:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var item in patient.Dermadiagnoses ?? [])
                  pw.Text(item),

                pw.SizedBox(height: 30),
                pw.Text("DermaTreatment List:", style: pw.TextStyle(color: PdfColors.black, fontSize: 19, fontWeight: pw.FontWeight.bold)),
                for (var item in patient.DermaTreatment ?? [])
                  pw.Text(item),

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
