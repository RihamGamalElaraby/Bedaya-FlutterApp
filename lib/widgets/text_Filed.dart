import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

Widget defultTextField(
        {required String text,
        double width = 70,
        double hight = 50,
        int max = 1}) =>
    Container(
      child: Container(
        width: width,
        height: hight,
        child: TextFormField(
          maxLines: max,
          decoration: InputDecoration(
            hintText: text,
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.0),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
          ),
        ),
      ),
    ); 





// Widget defultTextFiled(String hintstring) => Container(
//         child: TextFormField(
//       decoration: const InputDecoration(
//         hintText: $hintstring,
//         filled: true,
//         contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(10))),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.green, width: 1.0),
//           borderRadius: BorderRadius.all(
//             Radius.circular(10),
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//             borderSide:
//                 BorderSide(color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
//             borderRadius: BorderRadius.all(
//               Radius.circular(10),
//             )),
//       ),
//     ));

// class textField extends StatelessWidget {

//   textField({required this.color , required this.title , required this.onPressed});
//    final Color color;
//   final String title;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: TextFormField(
//       decoration: const InputDecoration(
//         hintText: title,
//         contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(10))),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.green, width: 1.0),
//           borderRadius: BorderRadius.all(
//             Radius.circular(10),
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//             borderSide:
//                 BorderSide(color: Color.fromARGB(255, 9, 10, 9), width: 2.0),
//             borderRadius: BorderRadius.all(
//               Radius.circular(10),
//             )),
//       ),
//     ));
//   }
// }
