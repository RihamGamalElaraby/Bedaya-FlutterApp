
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';

late File file ;
var imagepicker = ImagePicker();

uploadImagepersonalIDupperc() async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/personal ID upper/$nameimage");
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
uploadImagepersonalIDupperg() async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/personal ID upper/$nameimage");
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

uploadImagepersonalIDLowerc() async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/personal ID lower/$nameimage");
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
uploadImagepersonalIDLowerg() async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/personal ID lower/$nameimage");
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


uploadImagepersonalIDTransc() async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/transformation paper/$nameimage");
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
uploadImagepersonalIDTransg() async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/transformation paper/$nameimage");
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


uploadImageImSheet1C() async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/IM sheet 1/$nameimage");
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
uploadImageImSheet1G() async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/IM sheet 1/$nameimage");
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


uploadImageImSheet2C() async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/IM sheet 2/$nameimage");
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
uploadImageImSheet2G() async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/IM sheet 2/$nameimage");
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




