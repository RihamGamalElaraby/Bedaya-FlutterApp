import 'package:bedaya/reports/chosereporttday.dart';
import 'package:flutter/material.dart';

import '../component/component.dart';
class reporttotal extends StatefulWidget {
  static const String screenRoute = "reporttotal";

  const reporttotal({super.key});

  @override
  State<reporttotal> createState() => _reporttotalState();
}

class _reporttotalState extends State<reporttotal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Total',
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
      body: Center(
        child: Text('not yet' , style: TextStyle(
          fontSize: 25,
        ),),
      ),
    );
  }
}
