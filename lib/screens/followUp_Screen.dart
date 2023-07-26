import 'package:flutter/material.dart';
import '../component/component.dart';
import '../widgets/appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';


class FollowUpScreen extends StatefulWidget {
  static const String screenRoute = 'FollowUpScreen';

  const FollowUpScreen({Key? key}) : super(key: key);

  @override
  State<FollowUpScreen> createState() => _FollowUpScreenState();
}

class _FollowUpScreenState extends State<FollowUpScreen> {
  late File file ;
  var imagepicker = ImagePicker();
  // upLoadimage () async {
  //   var imgpicked = await imagepicker.pickImage(
  //     source: ImageSource.camera,);
  //   if (imgpicked != null){
  //       file = File(imgpicked.path);
  //       var nameimage = basename(imgpicked.path);
  //    //start uploading
  //     var refstorage = FirebaseStorage.instance.ref('nationalID/$nameimage');
  //     await refstorage.putFile(file);
  //     var url = refstorage.getDownloadURL();
  //     print(url);
  //   }
  //   else {
  //     SnackBar(
  //       content: Text('No file was selected'),
  //     );
  //     return  Text('please uplpad photo');
  //   }
  // }

  uploadImage() async{
    var imgpicked = await imagepicker.pickImage
  (source:ImageSource.camera);
    if(imgpicked!= null) {
  file = File(imgpicked.path);
  var nameimage = basename(imgpicked.path);
  //start upload
  var refstorge = FirebaseStorage.instance.ref("ID/$nameimage");
  await refstorge.putFile(file);
  //لمعرفة عنوان الصورة التي تم رفعها
  var url = await refstorge.getDownloadURL();
  print("url : $url");
  //end upload
  print("++++++++++++++++++++++++++");
  print(nameimage);
  } else {
  print("please choose image");
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBardefult(
          data: 'Adult Checkup',
          icon: Icon(Icons.menu),
        ),
        preferredSize: Size(100, 50),
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
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
        sizedBoxhight(hight: 30),
          Text(
            'صورة البطاقة', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),) ,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell( onTap: (){},  child: Container( padding: const EdgeInsets.all(10 ),
                child: Row(
                  children: [
                    Icon(Icons.photo_album),
                    SizedBox(width: 20,),
                    Text('Frome Gallery', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
               SizedBox(width: 200,),

              InkWell(onTap: ()async{
             await  uploadImage();
              }, child: Container( padding: const EdgeInsets.all(10 ),
                child:  Row(
                  children: [
                    Icon(Icons.photo_camera),
                    SizedBox(width: 20,),
                    Text('Frome Camera', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
            ],
          ) ,
          sizedBoxhight(hight: 30),
          Text(
            'صورة شهادة الميلاد', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),) ,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell( onTap: (){},  child: Container( padding: const EdgeInsets.all(10 ),
                child:  Row(
                  children: [
                    Icon(Icons.photo_album),
                    SizedBox(width: 20,),
                    Text('Frome Gallery', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
              SizedBox(width: 200,),

              InkWell(onTap: (){}, child: Container( padding: const EdgeInsets.all(10 ),
                child:  Row(
                  children: [
                    Icon(Icons.photo_camera),
                    SizedBox(width: 20,),
                    Text('Frome Camera', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
            ],
          ) ,
          sizedBoxhight(hight: 30),
          Text(
            'صورة كشف الرمد', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),) ,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell( onTap: (){},  child: Container( padding: const EdgeInsets.all(10 ),
                child:  Row(
                  children: [
                    Icon(Icons.photo_album),
                    SizedBox(width: 20,),
                    Text('Frome Gallery', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
              SizedBox(width: 200,),

              InkWell(onTap: (){}, child: Container( padding: const EdgeInsets.all(10 ),
                child:  Row(
                  children: [
                    Icon(Icons.photo_camera),
                    SizedBox(width: 20,),
                    Text('Frome Camera', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
            ],
          ) ,
          sizedBoxhight(hight: 30),
          Text(
            'صورة ورقة التحويل', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),) ,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell( onTap: (){},  child: Container( padding: const EdgeInsets.all(10 ),
                child:  Row(
                  children: [
                    Icon(Icons.photo_album),
                    SizedBox(width: 20,),
                    Text('Frome Gallery', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
              SizedBox(width: 200,),
              InkWell(onTap: (){}, child: Container( padding: const EdgeInsets.all(10 ),
                child:  Row(
                  children: [
                    Icon(Icons.photo_camera),
                    SizedBox(width: 20,),
                    Text('Frome Camera', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
            ],
          ) ,
          sizedBoxhight(hight: 30),
          Text(
            'صورة الشيت كامل', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),) ,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: InkWell( onTap: (){},  child: Container( padding: const EdgeInsets.all(10 ),
                  child:  Row(
                    children: [
                      Icon(Icons.photo_album),
                      SizedBox(width: 20,),
                      Text('Frome Gallery', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),),
                    ],),),),
              ),
              SizedBox(width: 200,),
              InkWell(onTap: (){}, child: Container( padding: const EdgeInsets.all(10 ),
                child:  Row(
                  children: [
                    Icon(Icons.photo_camera),
                    SizedBox(width: 20,),
                    Text('Frome Camera', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],),),),
            ],
          ) ,

        ],
        ),
      ),
    );
  }
}
