import 'package:bedaya/component/component.dart';
import 'package:flutter/material.dart';
import '../screens/chose sup team screen/chose2_screen.dart';
import 'AdultScreeningNephro.dart';
import '../../widgets/my_button.dart';
import 'AdultScreeningOGTT.dart';
import 'AdultScrenningUTI.dart';
import 'ChildScreeningAnemia.dart';
import 'ChildScreeningRickets.dart';
import 'ChildScreeningparaside.dart';
class ChoseScreningScreen extends StatefulWidget {
  static const String screenRoute = 'ChoseScreningScreen';
  const ChoseScreningScreen({Key? key}) : super(key: key);

  @override
  State<ChoseScreningScreen> createState() => _ChoseScreningScreenState();
}

class _ChoseScreningScreenState extends State<ChoseScreningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Screening',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading:          IconButton(onPressed: () {
          Navigator.pushNamed(context, Chose2_Screen.screenRoute) ;
        }, icon: Icon(Icons.close)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.print)),
          IconButton(onPressed: () {}, icon: Icon(Icons.file_download)),
          sizedBoxWidth(width: 60)
        ],
      ),
      body:   SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(25),
                      ),
                        child: Center(child: defultText(data: 'Adult', c: Colors.white)),),
                    sizedBoxWidth(width: 30),

                    Flexible(
                      child: mysignin(
                        color: Color.fromARGB(255, 1, 70, 2),
                        size: 25,
                        x: Colors.white,
                        title: 'Nephropthy',
                        onPressed: () {
                          Navigator.pushNamed(context, AdultScreenigNephro.screenRoute);
                        },
                      ),
                    ),
                    sizedBoxWidth(width: 30),

                    Flexible(
                      child: mysignin(
                        color: Color.fromARGB(255, 1, 70, 2),
                        size: 25,
                        x: Colors.white,
                        title: 'UTI',
                        onPressed: () {
                   Navigator.pushNamed(context, AdultScrenningUTI.screenRoute);
                        },
                      ),
                    ),
                    sizedBoxWidth(width: 30),

                    Flexible(
                      child: mysignin(
                        color: Color.fromARGB(255, 1, 70, 2),
                        size: 25,
                        x: Colors.white,
                        title: 'OGTT',
                        onPressed: () {
                        Navigator.pushNamed(context, AdultScreeningOGTT.screenRoute);
                        },
                      ),
                    ),
                    sizedBoxWidth(width: 30),

                  ],
                ),
                sizedBoxhight(hight: 30),
                Divider(
                  height: 1,
                  thickness: 3,
                ),
                sizedBoxhight(hight: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(child: defultText(data: 'Child', c: Colors.white)),),
                    sizedBoxWidth(width: 30),

                    Flexible(
                      child: mysignin(
                        color: Color.fromARGB(255, 1, 70, 2),
                        size: 25,
                        x: Colors.white,
                        title: 'Anemia',
                        onPressed: () {
                       Navigator.pushNamed(context, ChildScreeningAnemia.screenRoute);
                        },
                      ),
                    ),
                    sizedBoxWidth(width: 30),

                    Flexible(
                      child: mysignin(
                        color: Color.fromARGB(255, 1, 70, 2),
                        size: 25,
                        x: Colors.white,
                        title: 'Parasite',
                        onPressed: () {
                     Navigator.pushNamed(context, ChildScreeningParaside.screenRoute);
                        },
                      ),
                    ),
                    sizedBoxWidth(width: 30),

                    Flexible(
                      child: mysignin(
                        color: Color.fromARGB(255, 1, 70, 2),
                        size: 25,
                        x: Colors.white,
                        title: 'Rickets',
                        onPressed: () {
                          Navigator.pushNamed(context, ChildScreeningRickets.screenRoute);
                        },
                      ),
                    ),
                    sizedBoxWidth(width: 30),


                  ],
                )
              ],),
          ),
        ),
      ),
    );
  }
}
