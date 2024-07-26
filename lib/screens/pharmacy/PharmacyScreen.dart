import 'package:bedaya/DateModels/pharmacy_model.dart';
import 'package:bedaya/screens/pharmacy/pharamcyaddtreat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

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
  TextEditingController stripCount = TextEditingController();

  DateTime selectedDate = DateUtils.dateOnly(DateTime.now());
  String scanBarcode = 'BarCode Number';

  @override
  Widget build(BuildContext context) {
    PatientAdultModel patient = PatientAdultModel();
    late List<PharmacyModel> drug;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  defultTextField(
                      width: 150, text: '$scanBarcode', controller: codeDrug),
                  sizedBoxhight(hight: 10),
                  defultTextField(
                      width: 150, text: 'Name', controller: nameDrug),
                  sizedBoxhight(hight: 10),
                  defultTextField(
                      width: 150, text: 'Quantity', controller: numberDrug),
                  sizedBoxhight(hight: 10),
                  defultTextField(
                      width: 150, text: 'Strip Count', controller: stripCount),
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
                        addDrug();
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child:
                          defultText(data: 'Total of Medicine is $drugCount'))
                ],
              );
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
                        Expanded(child: defultText(data: '#', c: Colors.white)),
                        Expanded(
                            child:
                                defultText(data: 'Quantity', c: Colors.white)),
                        Expanded(
                            child: defultText(data: 'Name', c: Colors.white)),
                        Expanded(
                            child: defultText(data: 'code', c: Colors.white)),
                        Expanded(
                            child: defultText(
                                data: 'All Strips count', c: Colors.white)),
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
                                    drug = snapshot.data?.docs
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
                                                            Expanded(
                                                                child: Text(
                                                                    "${displayNumber.toString()}")),
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
                                                                child: Text(drug[
                                                                            index]
                                                                        .allStrips
                                                                        .toString() ??
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
            ],
          ),
          sizedBoxhight(hight: 20),
          ElevatedButton(
              onPressed: () {
                createPdf(drug);
              },
              child: Text("Show pdf sheet")),
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
    setState(() {
      selectedDate = DateUtils.dateOnly(chosenDate!);
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

  void addDrug() {
    int? numberD = int.tryParse(numberDrug.text);
    int? strip = int.tryParse(stripCount.text);
    if (numberD != null && strip != null) {
      int allCOUNT = numberD * strip;
      PharmacyModel drug = PharmacyModel(
        nameDrug: nameDrug.text,
        codeDrug: codeDrug.text,
        numberDrug: numberD,
        strip: strip,
        allStrips: allCOUNT,
        expiryDateDrug: selectedDate,
      );
      MyDataBase.addDrug(drug);
      nameDrug.clear();
      codeDrug.clear();
      numberDrug.clear();
      stripCount.clear();
      print(drug.codeDrug);
    } else {
      // Handle error for invalid input
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                'Please enter valid numbers for Quantity and Strip Count')),
      );
    }
  }

  void createPdf(List<PharmacyModel> drugData) async {
    final doc = pw.Document();
    doc.addPage(
      pw.MultiPage(
        build: (pw.Context context) {
          return <pw.Widget>[
            pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.Row(children: [
                  pw.SizedBox(width: 10),
                  pw.Expanded(
                      child: pw.Text('#',
                          style: pw.TextStyle(color: PdfColors.white))),
                  pw.Expanded(
                      child: pw.Text('Quantity',
                          style: pw.TextStyle(color: PdfColors.white))),
                  pw.Expanded(
                      child: pw.Text('Name',
                          style: pw.TextStyle(color: PdfColors.white))),
                  pw.Expanded(
                      child: pw.Text('code',
                          style: pw.TextStyle(color: PdfColors.white))),
                  pw.Expanded(
                      child: pw.Text('All Strips count',
                          style: pw.TextStyle(color: PdfColors.white))),
                  pw.Expanded(
                      child: pw.Text('Exp. date',
                          style: pw.TextStyle(color: PdfColors.white))),
                ]),
                pw.Divider(
                  color: PdfColors.white,
                  thickness: 2,
                ),
                pw.ListView.builder(
                  itemCount: drugData
                      .length, // Assuming you have fetched and stored this data
                  itemBuilder: (pw.Context context, int index) {
                    int displayNumber = index + 1;
                    return pw.Container(
                      height: 40,
                      child: pw.Column(
                        children: [
                          pw.Padding(
                            padding: pw.EdgeInsets.only(left: 30.0),
                            child: pw.Row(
                              children: [
                                pw.Expanded(
                                    child:
                                        pw.Text("${displayNumber.toString()}")),
                                pw.Expanded(
                                    child: pw.Text(
                                        drugData[index].numberDrug.toString())),
                                pw.Expanded(
                                    child: pw.Text(
                                        drugData[index].nameDrug ?? "N/A")),
                                pw.Expanded(
                                    child: pw.Text(
                                        drugData[index].codeDrug ?? "N/A")),
                                pw.Expanded(
                                    child: pw.Text(
                                        drugData[index].allStrips?.toString() ??
                                            "N/A")),
                                pw.Expanded(
                                    child: pw.Text(
                                        MyDatetimeUtilies.formateDate(
                                            drugData[index].expiryDateDrug!))),
                                pw.SizedBox(width: 6),
                              ],
                            ),
                          ),
                          pw.Divider(
                            color: PdfColors.white,
                            thickness: 0.8,
                            height: 0,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            )
          ];
        },
        pageFormat: PdfPageFormat.a4,
      ),
    );

    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}
