import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../widgets/appbar.dart';
import '../../widgets/my_button.dart';
import 'ClinicScreenChose.dart';

class DermaClinicScreen extends StatefulWidget {
  static const String screenRoute = 'DermaClinicScreen';

  const DermaClinicScreen({Key? key}) : super(key: key);

  @override
  State<DermaClinicScreen> createState() => _DermaClinicScreenState();
}

class _DermaClinicScreenState extends State<DermaClinicScreen> {
  List<String> CommondiagnosesforDerma= ['-',];
  String SelectedCommondiagnosesforDerma = '-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Derma Clinic',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxhight(hight: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                        ),),
                    ),
                  )
                ],),
              sizedBoxhight(hight: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      width: 1000,
                      height: 80,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 4,
                              child: defultText(
                                  data: "Patient’s Name:",
                                  c: Colors.black,
                                  x: 17),
                            ),
                            sizedBoxWidth(width: 300),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Code:', c: Colors.black, x: 17)),
                            sizedBoxWidth(width: 50),
                            Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Sex:', c: Colors.black, x: 17)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxhight(hight: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      padding: EdgeInsets.all(10),
                      height: 150,
                      width: 300,
                      child: Center(
                          child: Text('Derma Clinic:', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),)),
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 165, 162, 162)),
                        padding: EdgeInsets.all(10),
                        width: 1000,
                        height: 150,
                        child: Column(
                          children: [
                            Flexible(
                                flex: 1,
                                child: Container(
                                    width: 1000,
                                    height: 50,
                                    child: Center(
                                      child: defultText(
                                          data: 'Diagnoses:',
                                          c: Colors.white),
                                    ))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: 90,
                                    width: 350,
                                    child: Center(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Result',
                                          hoverColor: Colors.black,
                                          focusColor: Colors.green,
                                          fillColor: Colors.green,
                                          border: OutlineInputBorder(),
                                        ),
                                        maxLines: 14,
                                        minLines: 1,
                                        style: TextStyle(color: Colors.black, fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                  flex: 4 ,
                                  child: Container(
                                    height: 50,
                                    width: 300,
                                    child: Center(
                                      child: DropdownButton<String>(
                                        value: SelectedCommondiagnosesforDerma,
                                        items: CommondiagnosesforDerma.map((diagonoses) => DropdownMenuItem(
                                          value: diagonoses,
                                          child: Text(diagonoses ,style: TextStyle(
                                            color: Colors.black,),),),).toList(),
                                        onChanged: (diagonoses) => setState(() {
                                          SelectedCommondiagnosesforDerma =diagonoses!;
                                        },
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ))
                ],),
              sizedBoxhight(hight: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Add Another Clinic' , style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.white
                        ),),
                        sizedBoxWidth(width: 20),
                        IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, ClinicScreenChose.screenRoute);
                            }
                            , icon: Icon(Icons.add))
                      ],),
                  )

                ],
              ),
              sizedBoxhight(hight: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&Done',
                      size: 25,
                      onPressed: () => {
                        // Navigator.pushNamed(context, ChoseLabsScreen.screenRoute)
                      },
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&BacktoEdit',
                      size: 25,
                      onPressed: () => {
                        // Navigator.pushNamed(context, bloodLabScreen.screenRoute)
                      },
                    ),
                  ),
                  sizedBoxWidth(width: 20),
                  Flexible(
                    flex: 1,
                    child: mysignin(
                      color: Colors.green,
                      x: Colors.black,
                      title: 'Save&addNewOne',
                      size: 25,
                      onPressed: () => {
                        // Navigator.pushNamed(context, urineLabscreen.screenRoute)
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
