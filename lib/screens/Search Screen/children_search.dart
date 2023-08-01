import 'package:bedaya/screens/Search%20Screen/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChildrenSearch extends StatelessWidget {
  static const String screenRoute = 'ChildrenSearch';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 83, 16),
          title: Row(
            children: [
              Image.asset('images/logo png.png', height: 50),
              SizedBox(
                width: 10,
              ),
              Text(
                'Great Job',
                style: TextStyle(color: Colors.black),
              ),
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
    );
  }
}
