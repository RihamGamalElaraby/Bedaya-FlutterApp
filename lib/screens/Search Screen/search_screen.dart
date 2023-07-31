import 'package:bedaya/screens/Search%20Screen/adult_search.dart';
import 'package:bedaya/screens/Search%20Screen/children_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_button.dart';

class SearchScreen extends StatelessWidget {
  static const String screenRoute = 'search screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 83, 16),
          title: Row(
            children: [
              Image.asset('images/logo png.png', height: 75),
              SizedBox(
                width: 10,
              ),
              Text(
                'Great Job',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       // _auth.signOut();
          //       Navigator.pushNamed(context, WelcomeScreen.screenRoute);
          //     },
          //     icon: Icon(Icons.close),
          //   )
          // ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                Container(
                  child: Image.asset('images/logo png.png'),
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Choose Your Patient Type to search for',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 30,
            ),
            Expanded(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                size: 25,
                x: Colors.white,
                title: 'Patient Adult',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdultSearch(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
            ),
            Expanded(
              child: mysignin(
                color: Color.fromARGB(255, 1, 70, 2),
                size: 25,
                x: Colors.white,
                title: 'Patient Children',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChildrenSearch(),
                    ),
                  );
                },
              ),
            ),
          ]),
        ));;
  }
}
