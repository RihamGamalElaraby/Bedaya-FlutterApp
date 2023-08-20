import 'package:bedaya/DateModels/patient_childmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DateModels/PatientAdultModel.dart';
import '../component/component.dart';
import '../network/my_database.dart';

class ReportsScreen extends StatefulWidget {
  static const String screenRoute = "reportsscreen";

  // const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  // List<String> diagnosisCounts = [];
  //
  // @override
  // void initState() {
  //   super.initState();
  //   fetchDiagnosisCounts();
  // }
  //
  // Future<void> fetchDiagnosisCounts() async {
  //   diagnosisCounts = await
  //   setState(
  //       () {}); // Trigger a rebuild to update the UI with the fetched counts
  // }

  var formKey = GlobalKey<FormState>();
  late List<PatientAdultModel> patientAd;

  List<PatientChildModel>? patientCh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Reports',
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width * 0.35,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    sizedBoxhight(hight: 5),
                    defultText(data: "Day 1 ", c: Colors.black, x: 24),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defultText(data: "Adult :", c: Colors.black, x: 18),
                          sizedBoxWidth(width: 15),
                          StreamBuilder(
                            stream: MyDataBase.getAdultDash("Day 1"),
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
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? defultText(
                                      data: " ${patientAd.length}",
                                      x: 18,
                                      c: Colors.black)
                                  : Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "no patient yet ...",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    );
                            },
                          ),
                        ],
                      ),
                    ),
                    sizedBoxhight(hight: 5),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          defultText(
                              data: "Children : ", c: Colors.black, x: 18),
                          sizedBoxWidth(width: 15),
                          StreamBuilder(
                            stream: MyDataBase.getChildDash("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? defultText(
                                      data: " ${patientCh!.length}",
                                      x: 18,
                                      c: Colors.black)
                                  : Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "no patient yet ...",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    );
                            },
                          ),
                        ],
                      ),
                    ),
                    sizedBoxhight(hight: 10),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 2,
                    ),
                    sizedBoxhight(hight: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "#", c: Colors.black, x: 15)),
                          Expanded(
                              child: defultText(
                                  data: "Adult ", c: Colors.black, x: 20)),
                          Expanded(
                              child: defultText(
                                  data: "Children ", c: Colors.black, x: 20)),
                        ],
                      ),
                    ),
                    sizedBoxhight(hight: 5),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Urine :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultUrineReport("Day 1"),
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
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              // hi ?
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildUrineReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    sizedBoxhight(hight: 5),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Blood :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultBloodReport("Day 1"),
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
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              print(patientAd);
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildBloodReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    sizedBoxhight(hight: 5),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Stool :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultStoolReport("Day 1"),
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
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildStoolReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    sizedBoxhight(hight: 5),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Pharmacy :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultPharmacyReport("Day 1"),
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
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildPharmacyReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 2,
                    ),
                    defultText(data: "Clinics", c: Colors.black, x: 22),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "IM :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultIMReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildIMReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Cardio :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultCardioReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildCardioReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Surgery :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultSurgeryReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildSurgeryReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Optha :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultOpthaReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildOpthaReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Obs. & Gyn :",
                                  c: Colors.black,
                                  x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultGynReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildGynReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "ENT :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultEntReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildEntReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Pediatrics :",
                                  c: Colors.black,
                                  x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultPedReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildPedReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Derma :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultDermaReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildDermaReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Ortho :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultOrthoReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildOrthoReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Dental :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultDentalReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildDentalReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sizedBoxWidth(width: 15),
                          Expanded(
                              child: defultText(
                                  data: "Follow up :", c: Colors.black, x: 18)),
                          StreamBuilder(
                            stream: MyDataBase.getAdultFollowUoReport("Day 1"),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                print(snapshot.error);
                                return Center(
                                    child: Text(
                                  "something went wrong",
                                ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } // sania tb
                              patientAd = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientAd.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientAd.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                          StreamBuilder(
                            stream: MyDataBase.getChildFollowUoReport("Day 1"),
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
                              patientCh = snapshot.data?.docs
                                      .map((e) => e.data())
                                      .toList() ??
                                  [];
                              return patientCh!.isNotEmpty
                                  ? Expanded(
                                      child: defultText(
                                          data: " ${patientCh!.length}",
                                          x: 18,
                                          c: Colors.black))
                                  : Expanded(
                                      child: defultText(
                                          data: " No patient yet",
                                          x: 18,
                                          c: Colors.black));
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    StreamBuilder<int>(
                      stream: MyDataBase().getUserCountWithDiagnosisStream('Diabetes Mellitus'),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Text("error");

                        }
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          // Handle loading state
                          return CircularProgressIndicator();
                        }

                        int userCountWithDiagnosis = snapshot.data ?? 0;

                        return Expanded(
                          child: Text(
                            "Users with Diagnosis: $userCountWithDiagnosis",
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      },
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
