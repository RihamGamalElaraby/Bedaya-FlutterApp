// import 'dart:js';
//
// import 'package:flutter/material.dart';
// import 'package:bedaya/screens/chose%20sup%20team%20screen/chose2_screen.dart';
//
// // put it here
// Widget appBardefult({
//   required String data,
//   required Icon icon,
//   required Function function,
// }) =>
//     AppBar(
//       backgroundColor: Colors.green,
//       title: Center(
//         child: Text(
//           '$data',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       leading: IconButton(
//         hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//         onPressed: () => function,
//         icon: icon,
//       ),
//       actions: [
//         IconButton(
//             hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//             onPressed: () {
//             },
//             icon: Icon(Icons.save)),
//         IconButton(
//             hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//             onPressed: () {
//             },
//             icon: Icon(Icons.add)),
//         IconButton(
//             hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//             onPressed: () {
//             },
//             icon: Icon(Icons.search)),
//         IconButton(
//             hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
//             onPressed: (){
//               Navigator.pushNamed(context as BuildContext, Chose2_Screen.screenRoute);
//             },
//             icon: Icon(Icons.close)),
// //               ),
//       ],
//     );
import 'package:flutter/material.dart';

Widget appBardefult({
  required String data,
  required Icon icon,
  Function? leadingFunction,
  Function? saveFunction,
  Function? addFunction,
  Function? searchFunction,
  Function? closeFunction,
}) =>
    AppBar(
      backgroundColor: Colors.green,
      title: Center(
        child: Text(
          '$data',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      leading:  IconButton(
              hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
              onPressed: () => leadingFunction!(),
              icon: icon,
            ),
      actions: [

          IconButton(
            hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
            onPressed: () => saveFunction!(),
            icon: Icon(Icons.save),
          ),

          IconButton(
            hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
            onPressed: () => addFunction!(),
            icon: Icon(Icons.add),
          ),

          IconButton(
            hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
            onPressed: () => searchFunction!(),
            icon: Icon(Icons.search),
          ),

          IconButton(
            hoverColor: Color.fromARGB(255, 31, 214, 71).withOpacity(0.3),
            onPressed: () => closeFunction!(),
            icon: Icon(Icons.close),
          ),
      ],
    );
