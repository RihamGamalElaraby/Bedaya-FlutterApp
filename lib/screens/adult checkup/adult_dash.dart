import 'package:bedaya/screens/adult%20checkup/Adult_checkup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../DateModels/PatientAdultModel.dart';
import '../../DateModels/patient_childmodel.dart';
import '../../DateModels/pharmacy_model.dart';
import '../../component/component.dart';
import '../../network/my_database.dart';
import '../../widgets/my_button.dart';
import '../Search Screen/adult_search.dart';
import '../dashboard/dashboard.dart';

class AdultDash extends StatefulWidget {
  static const String screenRoute = 'adultdash';

  const AdultDash({super.key});

  @override
  State<AdultDash> createState() => _AdultDashState();
}

class _AdultDashState extends State<AdultDash> {
  var formKey = GlobalKey<FormState>();
  List<String> Chosedaylist = [
    'Day 1',
    'Day 2',
    'Day 3',
    'Day 4',
    'Day 5',
    "all"
  ];
  String selectedday = 'Day 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'DashBoard',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.print)),
          IconButton(onPressed: () {}, icon: Icon(Icons.file_download)),
          sizedBoxWidth(width: 60)
        ],
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxhight(hight: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mysignin(
                      color: Colors.green,
                      title: 'Add new Patient',
                      onPressed: () => Navigator.pushNamed(
                          context, adultCheckup.screenRoute))
                ],
              ),
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
                                    data: 'Select patient do u need search for',
                                    c: Colors.black,
                                    x: 15)),
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
                                                selectedPatient = "ch";
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
                                              child = false;
                                              if (val) {
                                                selectedPatient = "ad";
                                              }
                                            });
                                          })),
                                ],
                              ),
                            ),
                          ],
                        )),
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
                      child: selectedPatient == "ad"
                          ? StreamBuilder<QuerySnapshot<PatientAdultModel>>(
                              stream: MyDataBase.getPatientAdult(
                                  codeController.text),
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
                                      child: Column(
                                        children: [
                                          Row(
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
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: SizedBox(
                                                    width: 50,
                                                    height: 40,
                                                    child: IconButton(
                                                        onPressed: () {},
                                                        icon:
                                                            Icon(Icons.edit))),
                                              ),
                                              sizedBoxWidth(width: 20),
                                              Flexible(
                                                child: SizedBox(
                                                    width: 50,
                                                    height: 40,
                                                    child: IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                            Icons.delete))),
                                              ),
                                              sizedBoxWidth(width: 20),
                                              Flexible(
                                                child: SizedBox(
                                                    width: 50,
                                                    height: 40,
                                                    child: IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .smart_display))),
                                              ),
                                              sizedBoxWidth(width: 20),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            )
                          : StreamBuilder<QuerySnapshot<PatientChildModel>>(
                              stream: MyDataBase.getPatientChild(
                                  codeController.text),
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
                                      child: Column(
                                        children: [
                                          Row(
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
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: SizedBox(
                                                    width: 50,
                                                    height: 40,
                                                    child: IconButton(
                                                        onPressed: () {},
                                                        icon:
                                                            Icon(Icons.edit))),
                                              ),
                                              sizedBoxWidth(width: 20),
                                              Flexible(
                                                child: SizedBox(
                                                    width: 50,
                                                    height: 40,
                                                    child: IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                            Icons.delete))),
                                              ),
                                              sizedBoxWidth(width: 20),
                                              Flexible(
                                                child: SizedBox(
                                                    width: 50,
                                                    height: 40,
                                                    child: IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .smart_display))),
                                              ),
                                              sizedBoxWidth(width: 20),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              },
                            )),
                ],
              ),
              sizedBoxhight(hight: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 170,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(
                            child: Text(
                          'Chose Day  :',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                        SizedBox(
                          width: 5,
                        ),
                        DropdownButton<String>(
                            value: selectedday, // 1-done
                            items: Chosedaylist.map(
                              (day) => DropdownMenuItem(
                                value: day,
                                child: Text(
                                  day,
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ).toList(),
                            onChanged: (day) =>
                                setState(() => selectedday = day!)),
                      ],
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       child: Padding(
              //         padding: const EdgeInsets.all(20.0),
              //         child: Row(
              //             children:
              //             [
              //               Flexible(
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     color: Colors.green,
              //                     borderRadius: BorderRadius.circular(20),
              //                   ),
              //                   height: 60,
              //                   width: 200,
              //                   child: Center(child: defultText(data: 'Code' , c: Colors.white)),
              //                 ),
              //               ),
              //               sizedBoxWidth(width: 20),
              //               Flexible(
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     color: Colors.green,
              //                     borderRadius: BorderRadius.circular(20),
              //                   ),
              //                   height: 60,
              //                   width: 200,
              //                   child: Center(child: defultText(data: 'Name' , c: Colors.white)),
              //                 ),
              //               ),
              //               sizedBoxWidth(width: 20),
              //               Flexible(
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     color: Colors.green,
              //                     borderRadius: BorderRadius.circular(20),
              //                   ),
              //                   height: 60,
              //                   width: 200,
              //                   child: Center(child: defultText(data: 'Age' , c: Colors.white)),
              //                 ),
              //               ),
              //               sizedBoxWidth(width: 20),
              //               Flexible(
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     color: Colors.green,
              //                     borderRadius: BorderRadius.circular(20),
              //                   ),
              //                   height: 60,
              //                   width: 200,
              //                   child: Center(child: defultText(data: 'H.N' , c: Colors.white)),
              //                 ),
              //               ),
              //               sizedBoxWidth(width: 20),
              //               Flexible(
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     color: Colors.green,
              //                     borderRadius: BorderRadius.circular(20),
              //                   ),
              //                   height: 60,
              //                   width: 200,
              //                   child: Center(child: defultText(data: '-' , c: Colors.white)),
              //                 ),
              //               ),
              //
              //             ],
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             crossAxisAlignment: CrossAxisAlignment.start
              //         ),
              //       ),
              //       width: 1000,
              //       height: 100,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(20),
              //       ),
              //     ),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Column(
                        children: [
                          Row(children: [
                            sizedBoxWidth(width: 20),
                            Expanded(
                                child: defultText(data: '#', c: Colors.white)),
                            Expanded(
                                child:
                                    defultText(data: 'Code', c: Colors.white)),
                            Expanded(
                                child:
                                    defultText(data: 'Name', c: Colors.white)),
                            Expanded(
                                child:
                                    defultText(data: 'Sex', c: Colors.white)),
                            Expanded(
                                child:
                                    defultText(data: 'Age', c: Colors.white)),
                            Expanded(
                                child:
                                    defultText(data: '...', c: Colors.white)),
                          ]),
                          Divider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                          Expanded(
                            child: Scrollable(
                              axisDirection: AxisDirection.down,
                              viewportBuilder: (BuildContext context,
                                  ViewportOffset offset) {
                                return Column(
                                  children: [
                                    SizedBox(height: offset.pixels),
                                    StreamBuilder(
                                      stream: selectedday == "all"
                                          ? MyDataBase.getAllPatientAdult()
                                          : MyDataBase.getAdultDash(
                                              selectedday),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasError) {
                                          return Center(
                                              child: Text(
                                            "something went wrong",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium,
                                          ));
                                        }
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return const Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        } // sania tb
                                        List<PatientAdultModel> patient =
                                            snapshot.data?.docs
                                                    .map((e) => e.data())
                                                    .toList() ??
                                                [];
                                        return patient.isNotEmpty
                                            ? Expanded(
                                                child: ListView.builder(
                                                  itemCount: patient.length,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    int displayNumber =
                                                        index + 1;
                                                    return SizedBox(
                                                      height: 40,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 30.0),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                    child: Text(
                                                                        "${displayNumber.toString()}")),
                                                                Expanded(
                                                                    child: Text(patient[
                                                                            index]
                                                                        .codeAdultPatient
                                                                        .toString())),
                                                                Expanded(
                                                                    child: Text(
                                                                        patient[index].nameAdultPatient ??
                                                                            "N/A")),
                                                                Expanded(
                                                                    child: Text(
                                                                        patient[index].sexAdultPatient ??
                                                                            "N/A")),
                                                                Expanded(
                                                                    child: Text(
                                                                        "${patient[index].agePatientAdult}")),
                                                                Expanded(
                                                                  child: Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child: IconButton(
                                                                            onPressed: () {
                                                                              showDialog(
                                                                                context: context,
                                                                                builder: (BuildContext context) {
                                                                                  return AlertDialog(
                                                                                    title: Text("Confirm Delete"),
                                                                                    content: Text("Are you sure you want to delete this Patient?"),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          Navigator.of(context).pop(); // Close the dialog
                                                                                        },
                                                                                        child: Text("No"),
                                                                                      ),
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          MyDataBase.deletePatient(patient[index].codeAdultPatient!);
                                                                                          Navigator.of(context).pop(); // Close the dialog
                                                                                        },
                                                                                        child: Text("Yes"),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                            icon: Icon(Icons.delete)),
                                                                      ),
                                                                      Expanded(
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                Navigator.pushNamed(context, adultCheckup.screenRoute, arguments: patient[index]);
                                                                              },
                                                                              icon: Icon(Icons.edit))),
                                                                      Expanded(
                                                                          child: IconButton(
                                                                              onPressed: () {
                                                                                Navigator.pushNamed(context, AdultSearch.screenRoute, arguments: patient[index]);
                                                                              },
                                                                              icon: Icon(Icons.smart_display))),
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 6,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          const Divider(
                                                            color: Colors.white,
                                                            thickness: 0.8,
                                                            height: 0,
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              )
                                            : Container(
                                                margin:
                                                    EdgeInsets.only(top: 220),
                                                child: Text(
                                                  textAlign: TextAlign.center,
                                                  "no patient yet ...",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                          color: Colors.green,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                              );
                                      },
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       child: Row(
              //           children:
              //           [
              //             Flexible(
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   color: Colors.grey,
              //                   borderRadius: BorderRadius.circular(20),
              //                 ),
              //                 height: 100,
              //                 width: 200,
              //                 child: Center(child: defultText(data: 'code' , c: Colors.white)),
              //               ),
              //             ),
              //             sizedBoxWidth(width: 20),
              //             Flexible(
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   color: Colors.grey,
              //                   borderRadius: BorderRadius.circular(20),
              //                 ),
              //                 height: 100,
              //                 width: 200,
              //                 child: Center(child: defultText(data: 'Name' , c: Colors.white)),
              //               ),
              //             ),
              //             sizedBoxWidth(width: 20),
              //             Flexible(
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   color: Colors.grey,
              //                   borderRadius: BorderRadius.circular(20),
              //                 ),
              //                 height: 100,
              //                 width: 200,
              //                 child: Center(child: defultText(data: 'Age' , c: Colors.white)),
              //               ),
              //             ),
              //             sizedBoxWidth(width: 20),
              //             Flexible(
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   color: Colors.grey,
              //                   borderRadius: BorderRadius.circular(20),
              //                 ),
              //                 height: 100,
              //                 width: 200,
              //                 child: Center(child: defultText(data: 'H.N' , c: Colors.white)),
              //               ),
              //             ),
              //             sizedBoxWidth(width: 20),
              //             Flexible(
              //               child: Container(
              //                 decoration: BoxDecoration(
              //                   color: Colors.green,
              //                   borderRadius: BorderRadius.circular(20),
              //                 ),
              //                 height: 100,
              //                 width: 200,
              //                 child: Center(child: Row(children: [
              //                   Flexible(child: SizedBox(width: 50, height:  40,
              //                       child: IconButton(onPressed: (){}, icon:Icon(Icons.edit))),),
              //                   sizedBoxWidth(width: 20),
              //                   Flexible(child:SizedBox(width: 50, height:  40,
              //                       child: IconButton(onPressed: (){}, icon:Icon(Icons.delete))),),
              //                   sizedBoxWidth(width: 20),
              //                   Flexible(child: SizedBox(width: 50, height:  40,
              //                       child: IconButton(onPressed: (){}, icon:Icon(Icons.smart_display))),),
              //                   sizedBoxWidth(width: 20),
              //
              //                 ],)),
              //               ),
              //             ),
              //
              //           ],
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           crossAxisAlignment: CrossAxisAlignment.start
              //       ),
              //       width: 1500,
              //       height: 120,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(20),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
