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
                          patient.smokingCessations?.trim() == null
                              ? Container()
                              : Flexible(
                            flex: 1,
                            child: defultText(
                              data:
                              'Smoking cessations: ${patient
                                  .smokingCessations}',
                              c: Colors.black,
                              x: 19,
                            ),
                          ),
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
    doc.addPage(pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(
              children: [
                pw.SizedBox(
                  height: 60,
                ),
                pw.Row(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                         "Name: ${patient.nameAdultPatient}",style: pw.TextStyle(color: PdfColors.black,fontSize: 19)),
                    ),
                    // pw.sizedBoxWidth(width: 50),
                    // pw.Flexible(
                    //   flex: 1,
                    //   child: pw.defultText(
                    //     data: 'Code: ${patient.codeAdultPatient}',
                    //     c: Colors.black,
                    //     x: 19,
                    //   ),
                    // ),
                    // pw.sizedBoxWidth(width: 50),
                    // pw.Flexible(
                    //   flex: 1,
                    //   child: pw.defultText(
                    //     data: 'Sex: ${patient.sexAdultPatient}',
                    //     c: Colors.black,
                    //     x: 19,
                    //   ),
                    // ),
                    pw.SizedBox(width: 50),
                    // pw.Flexible(
                    //   flex: 1,
                    //   child: defultText(
                    //     data:
                    //     'Mobile No.: ${patient.mobileNumberAdultPatient}',
                    //     c: Colors.black,
                    //     x: 19,
                    //   ),
                    // ),
                    pw.SizedBox(width: 50),                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'House No.: ${patient
                            .houseNumberAdultPatient}',
                          style: pw.TextStyle(color: PdfColors.black,fontSize: 19)
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(
                  height: 30,
                ),
                pw.Row(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        "Age: ${patient.agePatientAdult}",
                          style: pw.TextStyle(color: PdfColors.black,fontSize: 19)
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Occupation: ${patient
                            .occupationAdultPatient}',
                          style: pw.TextStyle(color: PdfColors.black,fontSize: 19)
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    pw.Flexible(
                      flex: 1,
                      child: pw.Text(
                        'Marital Status: ${patient.maritalStatus}',
                    style: pw.TextStyle(color: PdfColors.black,fontSize: 19)
                      ),
                    ),
                    pw.SizedBox(width: 50),
                    // patient.childrenNumber == null
                    //     ? pw.Container()
                    //     : pw.Flexible(
                    //   flex: 1,
                    //   child: pw.defultText(
                    //     data: 'Children No.: ${patient.childrenNumber}',
                    //     c: Colors.black,
                    //     x: 19,
                    //   ),
                    // ),
                    // pw.SizedBox(width: 50),
                    // patient.ageOfYoungChild == null
                    //     ? pw.Container()
                    //     : pw.Flexible(
                    //   flex: 1,
                    //   child: pw.defultText(
                    //     data:
                    //     'Age oh young Child.: ${patient.ageOfYoungChild}',
                    //     c: Colors.black,
                    //     x: 19,
                    //   ),
                    // ),
                  ],
                ),
                pw.SizedBox(
                  height: 30,
                ),
                // pw.Row(
                //   //mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     pw.Flexible(
                //       flex: 1,
                //       child: pw.defultText(
                //         data:
                //         "Education Level: ${patient
                //             .educationLevelAdultPatient}",
                //         c: Colors.black,
                //         x: 19,
                //       ),
                //     ),
                //     pw.SizedBox(width: 30),
                //     pw.Flexible(
                //       flex: 1,
                //       child: pw.defultText(
                //         data: 'Smoking: ${patient.smokingAdultPatient}',
                //         c: Colors.black,
                //         x: 19,
                //       ),
                //     ),
                //     pw.SizedBox(width: 30),
                //     patient.rateSmoking?.trim() == null
                //         ? pw.Container()
                //         : pw.Flexible(
                //       flex: 1,
                //       child: pw.defultText(
                //         data: 'Rate Smoking: ${patient.rateSmoking}',
                //         c: Colors.black,
                //         x: 19,
                //       ),
                //     ),
                //     pw.SizedBox(width: 30),
                //     patient.typeSmoking?.trim() == null
                //         ? pw.Container()
                //         : pw.Flexible(
                //       flex: 1,
                //       child: pw.defultText(
                //         data: 'Type Smoking: ${patient.typeSmoking}',
                //         c: Colors.black,
                //         x: 19,
                //       ),
                //     ),
                //     pw.SizedBox(width: 30),
                //     patient.otherHabitsSmoking?.trim() == null
                //         ? pw.Container()
                //         : pw.Flexible(
                //       flex: 1,
                //       child: pw.Text(
                //         data:
                //         'Other Habits: ${patient.otherHabitsSmoking}',
                //         c: Colors.black,
                //         x: 19,
                //       ),
                //     ),
                //   ],
                // ),
                pw.SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        },
        pageFormat: PdfPageFormat.a4));
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}
