import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../widgets/my_button.dart';
import 'package:bedaya/screens/children checkup/Children_checkup.dart';

class ChildDash extends StatefulWidget {
  static const String screenRoute = 'childdash';
  const ChildDash({super.key});


  @override
  State<ChildDash> createState() => _ChildDashState();
}

class _ChildDashState extends State<ChildDash> {
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
      body: Column(
     children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          mysignin(color: Colors.grey, title: 'Add new Patient',
              onPressed:() =>  Navigator.pushNamed(context, childrenCheckup.screenRoute)
          )
        ],),
        ],
      ),
    );
  }
}
