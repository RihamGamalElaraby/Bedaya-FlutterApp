import 'package:bedaya/component/component.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_continue3.dart';
import 'package:bedaya/widgets/text_Filed.dart';
import 'package:flutter/material.dart';
import 'package:bedaya/widgets/my_button.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:bedaya/widgets/appbar.dart';

class continueCheckupAdult extends StatefulWidget {
  static const String screenRoute = 'continueCheckupAdult';


  const continueCheckupAdult({super.key});

  @override
  State<continueCheckupAdult> createState() => _continueCheckupAdultState();
}

class _continueCheckupAdultState extends State<continueCheckupAdult> {
  bool isVisible = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Adult Checkup',
          icon: Icon(Icons.menu),
          function: () => {},
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            sizedBoxhight(hight: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child:
                                defultText(data: 'Complaint', c: Colors.white))
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: defultText(
                                      data: 'History of Present Illness',
                                      c: Color.fromARGB(
                                        255,
                                        1,
                                        70,
                                        2,
                                      ))),
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Container(
                          height: 30,
                          width: 1500,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: defultText(
                                    data: 'Symptom',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Onset',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 2,
                                child: defultText(
                                    data: 'Course',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 2,
                                child: defultText(
                                    data: 'Duration',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Site',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 2,
                                child: defultText(
                                    data: 'Radiation',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 2,
                                child: defultText(
                                    data: 'Increased by',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 2,
                                child: defultText(
                                    data: 'Decreased By',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                flex: 1,
                                child: defultText(
                                    data: 'Previous',
                                    c: Color.fromARGB(255, 1, 70, 2),
                                    x: 13),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                    height: 420,
                    width: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 280,
                          height: 50,
                          child: Center(
                              child: defultText(
                                  data: 'Complaint 1:', c: Colors.white)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(10)),
                          width: 280,
                          height: 350,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'C1',
                              hoverColor: Colors.black,
                              focusColor: Colors.green,
                              fillColor: Colors.green,

                              border: OutlineInputBorder(),

                              // contentPadding:
                              // EdgeInsets.symmetric(vertical: 150),
                            ),
                            maxLines: 14,
                            minLines: 1,
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10),
                      height: 420,
                      width: 1500,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Symptom:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Symptom', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Onset:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Onset', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Course:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Course', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Duration:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Duration', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Site:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Site', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Radiation:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Radiation', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(
                                            data: 'Increased by :'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Increased by ', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child:
                                            defultText(data: 'Decreased By:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Decreased By', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Previous:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Previous', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                        ],
                      ),
                    ))
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
                    height: 420,
                    width: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 280,
                          height: 50,
                          child: Center(
                              child: defultText(
                                  data: 'Complaint 2:', c: Colors.white)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(10)),
                          width: 280,
                          height: 350,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'C2',
                              hoverColor: Colors.black,
                              focusColor: Colors.green,
                              fillColor: Colors.green,

                              border: OutlineInputBorder(),

                              // contentPadding:
                              // EdgeInsets.symmetric(vertical: 150),
                            ),
                            maxLines: 14,
                            minLines: 1,
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10),
                      height: 420,
                      width: 1500,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Symptom:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Symptom', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Onset:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Onset', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Course:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Course', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Duration:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Duration', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Site:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Site', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Radiation:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Radiation', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(
                                            data: 'Increased by :'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Increased by ', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child:
                                            defultText(data: 'Decreased By:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Decreased By', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Previous:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Previous', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                        ],
                      ),
                    ))
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
                    height: 420,
                    width: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 280,
                          height: 50,
                          child: Center(
                              child: defultText(
                                  data: 'Complaint 3:', c: Colors.white)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 5),
                              borderRadius: BorderRadius.circular(10)),
                          width: 280,
                          height: 350,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'C3',
                              hoverColor: Colors.black,
                              focusColor: Colors.green,
                              fillColor: Colors.green,

                              border: OutlineInputBorder(),

                              // contentPadding:
                              // EdgeInsets.symmetric(vertical: 150),
                            ),
                            maxLines: 14,
                            minLines: 1,
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxWidth(width: 20),
                Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10),
                      height: 420,
                      width: 1500,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Symptom:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Symptom', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Onset:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Onset', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Course:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Course', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Duration:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Duration', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Site:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Site', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Radiation:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Radiation', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(
                                            data: 'Increased by :'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Increased by ', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child:
                                            defultText(data: 'Decreased By:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Decreased By', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: SizedBox(
                                        width: 80,
                                        child: defultText(data: 'Previous:'))),
                                sizedBoxWidth(width: 10),
                                Flexible(
                                    flex: 5,
                                    child: defultTextField(
                                        text: 'Previous', width: 550))
                              ],
                            ),
                          ),
                          sizedBoxhight(hight: 10),
                        ],
                      ),
                    ))
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
                  height: 420,
                  width: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 280,
                        height: 50,
                        child: Center(
                            child: defultText(
                                data: 'Complaint 4:', c: Colors.white)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 5),
                            borderRadius: BorderRadius.circular(10)),
                        width: 280,
                        height: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'C1',
                            hoverColor: Colors.black,
                            focusColor: Colors.green,
                            fillColor: Colors.green,

                            border: OutlineInputBorder(),

                            // contentPadding:
                            // EdgeInsets.symmetric(vertical: 150),
                          ),
                          maxLines: 14,
                          minLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              sizedBoxWidth(width: 20),
              Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(10),
                    height: 420,
                    width: 1500,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child: defultText(data: 'Symptom:'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Symptom', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child: defultText(data: 'Onset:'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Onset', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child: defultText(data: 'Course:'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Course', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child: defultText(data: 'Duration:'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Duration', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child: defultText(data: 'Site:'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Site', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child: defultText(data: 'Radiation:'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Radiation', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child: defultText(
                                          data: 'Increased by :'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Increased by ', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child:
                                      defultText(data: 'Decreased By:'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Decreased By', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: SizedBox(
                                      width: 80,
                                      child: defultText(data: 'Previous:'))),
                              sizedBoxWidth(width: 10),
                              Flexible(
                                  flex: 5,
                                  child: defultTextField(
                                      text: 'Previous', width: 550))
                            ],
                          ),
                        ),
                        sizedBoxhight(hight: 10),
                      ],
                    ),
                  ))
            ],
          ),
            sizedBoxhight(hight: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: mysignin(
                    color: Color.fromARGB(255, 4, 59, 6),
                    title: 'Save&Continue',
                    onPressed: () => {
                      Navigator.pushNamed(context, adultCheckThird.screenRoute)
                    },
                    x: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );



  }



  Widget Complain() =>  Row(
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
  height: 420,
  width: 300,
  child: Column(
  children: [
  SizedBox(
  width: 280,
  height: 50,
  child: Center(
  child: defultText(
  data: 'Complaint 1:', c: Colors.white)),
  ),
  Container(
  decoration: BoxDecoration(
  border: Border.all(width: 5),
  borderRadius: BorderRadius.circular(10)),
  width: 280,
  height: 350,
  child: TextField(
  decoration: InputDecoration(
  labelText: 'C1',
  hoverColor: Colors.black,
  focusColor: Colors.green,
  fillColor: Colors.green,

  border: OutlineInputBorder(),

  // contentPadding:
  // EdgeInsets.symmetric(vertical: 150),
  ),
  maxLines: 14,
  minLines: 1,
  style: TextStyle(color: Colors.white, fontSize: 13),
  ),
  ),
  ],
  ),
  ),
  ),
  sizedBoxWidth(width: 20),
  Flexible(
  flex: 1,
  child: Container(
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: Colors.white,
  ),
  padding: EdgeInsets.all(10),
  height: 420,
  width: 1500,
  child: Column(
  children: [
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child: defultText(data: 'Symptom:'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Symptom', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child: defultText(data: 'Onset:'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Onset', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child: defultText(data: 'Course:'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Course', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child: defultText(data: 'Duration:'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Duration', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child: defultText(data: 'Site:'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Site', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child: defultText(data: 'Radiation:'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Radiation', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child: defultText(
  data: 'Increased by :'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Increased by ', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child:
  defultText(data: 'Decreased By:'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Decreased By', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  Expanded(
  child: Row(
  children: [
  Flexible(
  flex: 1,
  child: SizedBox(
  width: 80,
  child: defultText(data: 'Previous:'))),
  sizedBoxWidth(width: 10),
  Flexible(
  flex: 5,
  child: defultTextField(
  text: 'Previous', width: 550))
  ],
  ),
  ),
  sizedBoxhight(hight: 10),
  ],
  ),
  ))
  ],
  );


}
