import 'package:bedaya/DateModels/patient_childmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/reports/chosereporttday.dart';

import '../DateModels/PatientAdultModel.dart';
import '../component/component.dart';
import '../network/my_database.dart';

class reportday1 extends StatefulWidget {
  static const String screenRoute = "reportday1";

  // const reportday1({super.key});

  @override
  State<reportday1> createState() => _reportday1State();
}

class _reportday1State extends State<reportday1> {


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
            'Reports day1',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading:   IconButton(onPressed: () {
          Navigator.pushNamed(context, chosedayreport.screenRoute);
        }, icon: Icon(Icons.close)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.print)),
          IconButton(onPressed: () {}, icon: Icon(Icons.file_download)),
          sizedBoxWidth(width: 60)
        ],
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.9,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.35,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.green,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        sizedBoxhight(hight: 5),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: defultText(data: "Day 1 ", c: Colors.black, x: 24),
                        ),
                        const Divider(
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
                                          style: Theme
                                              .of(context)
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
                                      style: Theme
                                          .of(context)
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
                        const Divider(
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
                                          style: Theme
                                              .of(context)
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
                                      style: Theme
                                          .of(context)
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
                        const Divider(
                          height: 2,
                          color: Colors.white,
                          thickness: 2,
                        ),
                        sizedBoxhight(hight: 10),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
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
                        const Divider(
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                        const Divider(
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                        const Divider(
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                        const Divider(
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                        const Divider(
                          height: 2,
                          color: Colors.white,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "Clinics", c: Colors.black, x: 22),
                        ),
                        const Divider(
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
                                          style: Theme
                                              .of(context)
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
                        const Divider(
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                                          style: Theme
                                              .of(context)
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
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "IM Diagnoses", c: Colors.black, x: 22),
                        ),
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
                                      data: "Anemia :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Anemia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Anemia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: "Diabetes Mellitus :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Diabetes Mellitus'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Diabetes Mellitus'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: "IBS :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'IBS'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'IBS'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: "Gout :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Gout'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Gout'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: "GERD :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'GERD'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'GERD'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: "UTI :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'UTI'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'UTI'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: "Parasitic infections :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Parasitic infections'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Parasitic infections'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: "Bronchial Asthm :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Bronchial Asthm'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Bronchial Asthm'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: "Diarrhea :", c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Diarrhea'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Diarrhea'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Renal Stone : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Renal Stone'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Renal Stone'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Headache : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Headache'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Headache'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Gastritis (H pylori) :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Gastritis (H pylori)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Gastritis (H pylori)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Hypertension : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'Hypertension'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'Hypertension'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'CKD : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultImDiagnoses(
                                    'CKD'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildImDiagnoses(
                                    'CKD'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "ENT Diagnoses", c: Colors.black, x: 22),
                        ),
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
                                      data: 'Tonsilitis : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Tonsilitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Tonsilitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Sinusitis : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Sinusitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Sinusitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Pharyngitis : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Pharyngitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Pharyngitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Otitis Media : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Otitis Media'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Otitis Media'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Otitis Externa : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Otitis Externa'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Otitis Externa'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Ear wax : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Ear wax'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Ear wax'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Epistaxis : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Epistaxis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Epistaxis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Allergic rhinitis : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Allergic rhinitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Allergic rhinitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Diarrhea : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultEntDiagnoses(
                                    'Diarrhea'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildEntDiagnoses(
                                    'Diarrhea'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "Ortho Diagnoses", c: Colors.black, x: 22),
                        ),
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
                                      data: 'Gout :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOrthoDiagnoses(
                                    'Gout'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOrthoDiagnoses(
                                    'Gout'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Joint Pain (low back/knee) :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOrthoDiagnoses(
                                    'Joint Pain (low back/knee)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOrthoDiagnoses(
                                    'Joint Pain (low back/knee)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Sciatica :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOrthoDiagnoses(
                                    'Sciatica'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOrthoDiagnoses(
                                    'Sciatica'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Slipped Disc :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOrthoDiagnoses(
                                    'Slipped Disc'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOrthoDiagnoses(
                                    'Slipped Disc'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Muscle Spasm :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOrthoDiagnoses(
                                    'Muscle Spasm'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOrthoDiagnoses(
                                    'Muscle Spasm'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Osteoarthritis :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOrthoDiagnoses(
                                    'Osteoarthritis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOrthoDiagnoses(
                                    'Osteoarthritis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "Cardio Diagnoses", c: Colors.black, x: 22),
                        ),
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
                                      data: 'Heart Failur :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultCardioDiagnoses(
                                    'Heart Failur'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildCardioDiagnoses(
                                    'Heart Failur'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Valvular Heart Disease (MR/AR) :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultCardioDiagnoses(
                                    'Valvular Heart Disease (MR/AR)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildCardioDiagnoses(
                                    'Valvular Heart Disease (MR/AR)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Sinus Tachycardia :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultCardioDiagnoses(
                                    'Sinus Tachycardia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildCardioDiagnoses(
                                    'Sinus Tachycardia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Chronic Coronary Syndrome :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultCardioDiagnoses(
                                    'Chronic Coronary Syndrome'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildCardioDiagnoses(
                                    'Chronic Coronary Syndrome'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Hypertension :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultCardioDiagnoses(
                                    'Hypertension'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildCardioDiagnoses(
                                    'Hypertension'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "Ophtha Diagnoses", c: Colors.black, x: 22),
                        ),
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
                                      data: 'Trichiasis :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOphthaDiagnoses(
                                    'Trichiasis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOphthaDiagnoses(
                                    'Trichiasis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Chalazion :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOphthaDiagnoses(
                                    'Chalazion'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOphthaDiagnoses(
                                    'Chalazion'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data:'Cataract :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOphthaDiagnoses(
                                    'Cataract'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOphthaDiagnoses(
                                    'Cataract'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Pterygium :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOphthaDiagnoses(
                                    'Pterygium'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOphthaDiagnoses(
                                    'Pterygium'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Bacterial Conjunctivitis :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOphthaDiagnoses(
                                    'Bacterial Conjunctivitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOphthaDiagnoses(
                                    'Bacterial Conjunctivitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Allergic conjunctivitis :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOphthaDiagnoses(
                                    'Allergic conjunctivitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOphthaDiagnoses(
                                    'Allergic conjunctivitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Errors of refraction :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOphthaDiagnoses(
                                    'Errors of refraction'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOphthaDiagnoses(
                                    'Errors of refraction'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Dry Eye :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultOphthaDiagnoses(
                                    'Dry Eye'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildOphthaDiagnoses(
                                    'Dry Eye'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "Gynecology Diagnoses", c: Colors.black, x: 22),
                        ),
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
                                      data: 'Endometrial Carcinoma :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'Endometrial Carcinoma'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'Endometrial Carcinoma'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Endometrial Hyperplasia :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'Endometrial Hyperplasia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'Endometrial Hyperplasia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'STDS Chlamydia : ', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'STDS Chlamydia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'STDS Chlamydia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Pelvic Inflammatory Disease (PID) :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'Pelvic Inflammatory Disease (PID)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'Pelvic Inflammatory Disease (PID)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Pelvic Organ Prolapse POP :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'Pelvic Organ Prolapse POP'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'Pelvic Organ Prolapse POP'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data:'Endometriosis :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'Endometriosis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'Endometriosis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Polycystic Ovary Syndrome (PCOS) :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'Polycystic Ovary Syndrome (PCOS)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'Polycystic Ovary Syndrome (PCOS)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Fibroid (Leiomyomas) :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'Fibroid (Leiomyomas)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'Fibroid (Leiomyomas)'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Vulvu-vaginitis :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultGynDiagnoses(
                                    'Vulvu-vaginitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildGynDiagnoses(
                                    'Vulvu-vaginitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "Surgery Diagnoses", c: Colors.black, x: 22),
                        ),
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
                                      data: 'Hernia :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultSurgeryDiagnoses(
                                    'Hernia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildSurgeryDiagnoses(
                                    'Hernia'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Thyroid goiter :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultSurgeryDiagnoses(
                                    'Thyroid goiter'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildSurgeryDiagnoses(
                                    'Thyroid goiter'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Cholecystitis :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultSurgeryDiagnoses(
                                    'Cholecystitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildSurgeryDiagnoses(
                                    'Cholecystitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Appendicitis :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultSurgeryDiagnoses(
                                    'Appendicitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildSurgeryDiagnoses(
                                    'Appendicitis'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Abscess :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultSurgeryDiagnoses(
                                    'Abscess'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildSurgeryDiagnoses(
                                    'Abscess'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Lipoma :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultSurgeryDiagnoses(
                                    'Lipoma'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildSurgeryDiagnoses(
                                    'Lipoma'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: defultText(data: "Pediatrics Diagnoses", c: Colors.black, x: 22),
                        ),
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
                                      data: 'BRONCHIAL ASTHMA :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'BRONCHIAL ASTHMA'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'BRONCHIAL ASTHMA'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'CONVULSIONS :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'CONVULSIONS'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'CONVULSIONS'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'CONGENITAL HEART DISEASE :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'CONGENITAL HEART DISEASE'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'CONGENITAL HEART DISEASE'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'DIABETES :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'DIABETES'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'DIABETES'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'RHEUMTIC FEVER :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'RHEUMTIC FEVER'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'RHEUMTIC FEVER'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'PNEUMONIA :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'PNEUMONIA'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'PNEUMONIA'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'UTI :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'UTI'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'UTI'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'TONSILITIS :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'TONSILITIS'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'TONSILITIS'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'PARASITES :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'PARASITES'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'PARASITES'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'GASTROENTERITIS :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultPedDiagnoses(
                                    'GASTROENTERITIS'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              StreamBuilder<int>(
                                stream: MyDataBase().getChildPedDiagnoses(
                                    'GASTROENTERITIS'),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print(snapshot.error);
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
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
                                      data: 'Nephropathy :', c: Colors.black, x: 18)),
                              StreamBuilder<int>(
                                stream: MyDataBase().getAdultnephropathy("DM","Nephropathy screening"),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Text("error");
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    // Handle loading state
                                    return CircularProgressIndicator();
                                  }

                                  int userCountWithDiagnosis = snapshot.data ?? 0;

                                  return Expanded(
                                      child: defultText(
                                          data: "$userCountWithDiagnosis",
                                          x: 18,
                                          c: Colors.black));
                                },
                              ),
                              // StreamBuilder<int>(
                              //   stream: MyDataBase().getChildPedDiagnoses(
                              //       'GASTROENTERITIS'),
                              //   builder: (context, snapshot) {
                              //     if (snapshot.hasError) {
                              //       print(snapshot.error);
                              //       return Text("error");
                              //     }
                              //     if (snapshot.connectionState ==
                              //         ConnectionState.waiting) {
                              //       // Handle loading state
                              //       return CircularProgressIndicator();
                              //     }
                              //
                              //     int userCountWithDiagnosis = snapshot.data ?? 0;
                              //
                              //     return Expanded(
                              //         child: defultText(
                              //             data: "$userCountWithDiagnosis",
                              //             x: 18,
                              //             c: Colors.black));
                              //   },
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}
