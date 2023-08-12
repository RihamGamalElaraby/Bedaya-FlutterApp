// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// class PharmacyScreen extends StatefulWidget {
//   static const String screenRoute = 'PharmacyScreen';
//   const PharmacyScreen({Key? key}) : super(key: key);
//
//   @override
//   State<PharmacyScreen> createState() => _PharmacyScreenState();
// }
//
// class _PharmacyScreenState extends State<PharmacyScreen> {
//   String _scanBarcode = 'Unknown';
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   Future<void> startBarcodeScanStream() async {
//     FlutterBarcodeScanner.getBarcodeStreamReceiver(
//         '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
//         .listen((barcode) => print(barcode));
//   }
//
//   Future<void> scanQR() async {
//     String barcodeScanRes;
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.QR);
//       print(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }
// //barcode scanner flutter ant
//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }
//
//   Future<void> scanBarcodeNormal() async {
//     String barcodeScanRes;
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.BARCODE);
//       print(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }
//
//     if (!mounted) return;
//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         alignment: Alignment.center,
//         child: Flex(
//             direction: Axis.vertical,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                   onPressed: () => scanBarcodeNormal(),
//                   child: const Text('Barcode scan')),
//               ElevatedButton(
//                   onPressed: () => scanQR(),
//                   child: const Text('QR scan')),
//               ElevatedButton(
//                   onPressed: () => startBarcodeScanStream(),
//                   child: const Text('Barcode scan stream')),
//               Text('Scan result : $_scanBarcode\n',
//                   style: const TextStyle(fontSize: 20))
//             ]));
//   }
// }
import 'dart:io';

import 'package:bedaya/DateModels/pharmacy_model.dart';
import 'package:bedaya/screens/pharmacy/pharamcyaddtreat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
 import 'package:syncfusion_flutter_xlsio/xlsio.dart' as xcl;
import '../../DateModels/PatientAdultModel.dart';
import '../../component/component.dart';
import '../../network/my_database.dart';
import '../../widgets/appbar.dart';
import '../../widgets/my_button.dart';
import '../../widgets/text_Filed.dart';


class PharmacyScreen extends StatefulWidget {
  static const String screenRoute = 'PharmacyScreen';

  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  TextEditingController numberDrug = TextEditingController();
  TextEditingController nameDrug = TextEditingController();
  TextEditingController codeDrug = TextEditingController();
  DateTime selectedDate = DateUtils.dateOnly(DateTime.now());
  String scanBarcode = 'BarCode Number';

  @override
  Widget build(BuildContext context) {
    PatientAdultModel patient = PatientAdultModel();

    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          context: context,
          data: 'Pharmacy',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          sizedBoxhight(hight: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defultText(
                  data: 'Click here to add all treatment to the patient'),
              Icon(Icons.arrow_downward_rounded),
            ],
          ),
          sizedBoxhight(hight: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mysignin(
                  color: Colors.grey,
                  title: 'Patient Treatment',
                  size: 16,
                  onPressed: () {
                    Navigator.pushNamed(context, Addtreatment.screenRoute);
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defultText(data: 'Start to add New medicine to the List'),
              Icon(Icons.arrow_downward_rounded),
            ],
          ),
          sizedBoxhight(hight: 20),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     mysignin(
          //         color: Colors.green,
          //         title: 'Bar Code Scan',
          //         size: 16,
          //         onPressed: () {
          //           scanBarcodeNormal();
          //           codeDrug.text = scanBarcode;
          //         })
          //   ],
          // ),
          sizedBoxhight(hight: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  defultTextField(width: 150, text: '$scanBarcode',controller: codeDrug),
                  sizedBoxhight(hight: 10),
                  defultTextField(
                      width: 150, text: 'Name', controller: nameDrug),
                  sizedBoxhight(hight: 10),
                  defultTextField(
                      width: 150, text: 'Quantity', controller: numberDrug),
                  sizedBoxhight(hight: 10),
                  Row(children: [
                    Text("Select Expiry Date :"),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        showBottomDatePicker();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            //selectedDate.toString().substring(0, 10),
                            MyDatetimeUtilies.formateDate(selectedDate),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  mysignin(
                      color: Colors.green,
                      title: 'Add Drug',
                      size: 16,
                      onPressed: () {
                        int? numberD = int.tryParse(numberDrug.text);
                        PharmacyModel drug = PharmacyModel(
                          nameDrug: nameDrug.text,
                          codeDrug: codeDrug.text,
                          numberDrug: numberD,
                          expiryDateDrug: selectedDate,
                        );
                        MyDataBase.addDrug(drug);
                        nameDrug.clear();
                        codeDrug.clear();
                        numberDrug.clear();
                        print(drug.codeDrug);
                      })
                ],
              )
            ],
          ),
          sizedBoxhight(hight: 20),
          FutureBuilder<int>(
            future: MyDataBase.getAllDrugs(),
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }

              int drugCount = snapshot.data ?? 0;

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
                Center(child: defultText(data: 'Total of Medicine is $drugCount'))
              ],);
            },
          ),
          sizedBoxhight(hight: 20),
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
                  height: 450,
                  child: Column(
                    children: [
                      Row(children: [
                        sizedBoxWidth(width: 10),
                        Expanded(
                            child:
                            defultText(data: '#', c: Colors.white)),
                        Expanded(
                            child:
                                defultText(data: 'Quantity', c: Colors.white)),
                        Expanded(
                            child: defultText(data: 'Name', c: Colors.white)),
                        Expanded(
                            child: defultText(data: 'code', c: Colors.white)),
                        Expanded(
                            child: defultText(
                                data: 'Expiry Date', c: Colors.white)),
                      ]),
                      Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      Expanded(
                        child: Scrollable(
                          axisDirection: AxisDirection.down,
                          viewportBuilder:
                              (BuildContext context, ViewportOffset offset) {
                            return Column(
                              children: [
                                SizedBox(height: offset.pixels),
                                StreamBuilder(
                                  stream: MyDataBase.showDrugList(false),
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
                                    List<PharmacyModel> drug = snapshot
                                            .data?.docs
                                            .map((e) => e.data())
                                            .toList() ??
                                        [];
                                    drug.sort((a, b) => (a.numberDrug ?? 0)
                                        .compareTo(b.numberDrug ?? 0));
                                    return drug.isNotEmpty
                                        ? Expanded(
                                            child: ListView.builder(
                                              itemCount: drug.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                    int displayNumber = index + 1;
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
                                                            Expanded(child: Text("${displayNumber.toString()}")),
                                                            Expanded(
                                                                child: Text(drug[
                                                                        index]
                                                                    .numberDrug
                                                                    .toString())),
                                                            Expanded(
                                                                child: Text(drug[
                                                                            index]
                                                                        .nameDrug ??
                                                                    "N/A")),
                                                            Expanded(
                                                                child: Text(drug[
                                                                            index]
                                                                        .codeDrug ??
                                                                    "N/A")),
                                                            Expanded(
                                                                child: Text(MyDatetimeUtilies
                                                                    .formateDate(
                                                                        drug[index]
                                                                            .expiryDateDrug!))),
                                                            IconButton(
                                                                onPressed: () {
                                                                  showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (BuildContext
                                                                            context) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            "Confirm Delete"),
                                                                        content:
                                                                            Text("Are you sure you want to delete this medicine?"),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.of(context).pop(); // Close the dialog
                                                                            },
                                                                            child:
                                                                                Text("No"),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                                MyDataBase.deleteDrug(drug[index].codeDrug!);
                                                                              Navigator.of(context).pop(); // Close the dialog
                                                                            },
                                                                            child:
                                                                                Text("Yes"),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                                icon: Icon(Icons
                                                                    .delete)),
                                                            SizedBox(width: 6,),
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
                                            margin: EdgeInsets.only(top: 220),
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              "no drug yet ...",
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
              // Flexible(
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.green,
              //         borderRadius: BorderRadius.circular(10)),
              //     width: 300,
              //     height: 300,
              //     child: Column(
              //       children: [
              //         defultText(data: 'Drugs Name', c: Colors.white),
              //         Divider(
              //           color: Colors.white,
              //           thickness: 1.5,
              //         ),
              //         Expanded(
              //           child: Scrollable(
              //             axisDirection: AxisDirection.down,
              //             viewportBuilder:
              //                 (BuildContext context, ViewportOffset offset) {
              //               return Column(
              //                 children: [
              //                   SizedBox(height: offset.pixels),
              //                   StreamBuilder(
              //                     stream: MyDataBase.showDrugList(false),
              //                     builder: (context, snapshot) {
              //                       if (snapshot.hasError) {
              //                         return Center(
              //                             child: Text(
              //                           "something went wrong",
              //                           style: Theme.of(context)
              //                               .textTheme
              //                               .headlineMedium,
              //                         ));
              //                       }
              //                       if (snapshot.connectionState ==
              //                           ConnectionState.waiting) {
              //                         return const Center(
              //                           child: CircularProgressIndicator(),
              //                         );
              //                       } // sania tb
              //                       List<PharmacyModel> drug =
              //                           snapshot.data?.docs
              //                                   .map((e) => e.data())
              //                                   .toList() ??
              //                               [];
              //                       drug.sort((a, b) => (a.numberDrug ?? 0).compareTo(b.numberDrug ?? 0));
              //                       return drug.isNotEmpty
              //                           ? Expanded(
              //                               child: ListView.builder(
              //                                 itemCount: drug.length,
              //                                 itemBuilder:
              //                                     (BuildContext context,
              //                                         int index) {
              //                                   return Container(
              //                                     height: 40,
              //                                     child: Center(
              //                                         child: Text(drug[
              //                                                     index]
              //                                                 .nameDrug ??
              //                                             "")),
              //                                   );
              //                                 },
              //                               ),
              //                             )
              //                           : Container(
              //                               margin: EdgeInsets.only(top: 220),
              //                               child: Text(
              //                                 textAlign: TextAlign.center,
              //                                 "no drug yet ...",
              //                                 style: Theme.of(context)
              //                                     .textTheme
              //                                     .bodyMedium
              //                                     ?.copyWith(
              //                                         color: Colors.green,
              //                                         fontWeight:
              //                                             FontWeight.bold),
              //                               ),
              //                             );
              //                     },
              //                   ),
              //                 ],
              //               );
              //             },
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // sizedBoxWidth(width: 20),
              // Flexible(
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.green,
              //         borderRadius: BorderRadius.circular(10)),
              //     width: 300,
              //     height: 300,
              //     child: Column(
              //       children: [
              //         defultText(data: 'Code', c: Colors.white),
              //         Divider(
              //           color: Colors.white,
              //           thickness: 1.5,
              //         ),
              //         Expanded(
              //           child: Scrollable(
              //             axisDirection: AxisDirection.down,
              //             viewportBuilder:
              //                 (BuildContext context, ViewportOffset offset) {
              //               return Column(
              //                 children: [
              //                   SizedBox(height: offset.pixels),
              //                   StreamBuilder(
              //                     stream: MyDataBase.showDrugList(false),
              //                     builder: (context, snapshot) {
              //                       if (snapshot.hasError) {
              //                         return Center(
              //                             child: Text(
              //                           "something went wrong",
              //                           style: Theme.of(context)
              //                               .textTheme
              //                               .headlineMedium,
              //                         ));
              //                       }
              //                       if (snapshot.connectionState ==
              //                           ConnectionState.waiting) {
              //                         return const Center(
              //                           child: CircularProgressIndicator(),
              //                         );
              //                       } // sania tb
              //                       List<PharmacyModel> drug =
              //                           snapshot.data?.docs
              //                                   .map((e) => e.data())
              //                                   .toList() ??
              //                               [];
              //                       drug.sort((a, b) => (a.numberDrug ?? 0).compareTo(b.numberDrug ?? 0));
              //                       return drug.isNotEmpty
              //                           ? Expanded(
              //                               child: ListView.builder(
              //                                 itemCount: drug.length,
              //                                 itemBuilder:
              //                                     (BuildContext context,
              //                                         int index) {
              //                                   return Container(
              //                                     height: 40,
              //                                     child: Center(
              //                                         child: Text(drug[
              //                                                     index]
              //                                                 .codeDrug ??
              //                                             "")),
              //                                   );
              //                                 },
              //                               ),
              //                             )
              //                           : Container(
              //                               margin: EdgeInsets.only(top: 220),
              //                               child: Text(
              //                                 textAlign: TextAlign.center,
              //                                 "no drug yet ...",
              //                                 style: TextStyle(
              //                                     color: Colors.white),
              //                               ),
              //                             );
              //                     },
              //                   ),
              //                 ],
              //               );
              //             },
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
          sizedBoxhight(hight: 20),
          //ElevatedButton(onPressed: () {createExceel();}, child: Text("Show Exceel sheet")),
          SizedBox(height: 20,),

          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     StreamBuilder(
          //       stream: MyDataBase.showDrugList(false),
          //       builder: (context, snapshot) {
          //         if (snapshot.hasError) {
          //           return Center(
          //             child: Text(
          //               "something went wrong",
          //               style: Theme.of(context).textTheme.headlineMedium,
          //             ),
          //           );
          //         }
          //         if (snapshot.connectionState == ConnectionState.waiting) {
          //           return const Center(
          //             child: CircularProgressIndicator(),
          //           );
          //         }
          //
          //         List<PharmacyModel> drugList = snapshot.data?.docs.map((e) => e.data()).toList() ?? [];
          //         drugList.sort((a, b) => (a.numberDrug ?? 0).compareTo(b.numberDrug ?? 0));
          //
          //         if (drugList.isEmpty) {
          //           return Center(
          //             child: Text(
          //               "no drug yet ...",
          //               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          //                 color: Colors.green,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //           );
          //         }
          //
          //         return Expanded(
          //           child: SingleChildScrollView(
          //             child: ListView.builder(
          //               itemCount: drugList.length,
          //               itemBuilder: (BuildContext context, int index) {
          //                 PharmacyModel drug = drugList[index];
          //
          //                 return Column(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: [
          //                     Container(
          //                       height: 40,
          //                       child: Row(
          //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Text(drug.numberDrug?.toString() ?? ""),
          //                           Text(drug.nameDrug ?? ""),
          //                           Text(drug.codeDrug ?? ""),
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 );
          //               },
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //   ],
          // )
        ],
      )),
    );
  }

  void showBottomDatePicker() async {
    DateTime? chosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 7650)));
    if (chosenDate == null) return;
    setState(() {
      selectedDate = DateUtils.dateOnly(chosenDate);
    });
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;
    setState(() {
      scanBarcode = barcodeScanRes;
    });
  }

  // Future<void> createExceel() async{
  //
  //   final xcl.Workbook workbook = xcl.Workbook();
  //   final List<int> bytes = workbook.saveAsStream();
  //   workbook.dispose();
  //
  //   final String path=(await getApplicationSupportDirectory()).path;
  //   final String fileName = "$path/Output.xlsx" ;
  //   final File file = File(fileName,);
  //   await file.writeAsBytes(bytes,flush: true);
  //   OpenFile.open(fileName);
  // }
}
