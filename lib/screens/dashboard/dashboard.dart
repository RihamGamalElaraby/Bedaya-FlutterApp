import 'package:bedaya/component/component.dart';
import 'package:flutter/material.dart';

class DashboaedfirstScreen extends StatefulWidget {
  static const String screenRoute = 'DashboaedfirstScreen';

  const DashboaedfirstScreen({super.key});

  @override
  State<DashboaedfirstScreen> createState() => _DashboaedfirstScreenState();
}

class _DashboaedfirstScreenState extends State<DashboaedfirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
          IconButton(onPressed: (){}, icon:Icon(Icons.print)),
          IconButton(onPressed: (){}, icon:Icon(Icons.file_download)),
          sizedBoxWidth(width: 60)
        ],
      ),

    );
  }
}
