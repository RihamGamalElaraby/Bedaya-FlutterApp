import 'package:bedaya/network/my_database.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../DateModels/PatientAdultModel.dart';
import '../DateModels/patient_childmodel.dart';

late File file ;
var imagepicker = ImagePicker();
// PatientAdultModel? patientAd = PatientAdultModel();
// PatientChildModel? patientCh = PatientChildModel();

uploadImagepersonalIDupperc(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
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
    patientAd?.urlUpperImage=url;
    patientCh?.urlUpperImage=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImagepersonalIDupperg(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
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
    patientAd?.urlUpperImage=url;
    patientCh?.urlUpperImage=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}

uploadImagepersonalIDLowerc(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
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
    patientAd?.urlLowerImage=url;
    patientCh?.urlLowerImage=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImagepersonalIDLowerg(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
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
    patientAd?.urlLowerImage=url;
    patientCh?.urlLowerImage=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}

uploadImagepersonalIDTransc(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

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
    patientAd?.urlTransImage=url;
    patientCh?.urlTransImage=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImagepersonalIDTransg(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
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
    patientAd?.urlTransImage=url;
    patientCh?.urlTransImage=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}

uploadImageRicketc(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/Rickets/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlRickets=url;
    patientCh?.urlRickets=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImageRicketG(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/Rickets/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlRickets=url;
    patientCh?.urlRickets=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}

uploadImageImSheet1C(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

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
    patientAd?.urlImSheet1=url;
    patientCh?.urlImSheet1=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImageImSheet1G(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
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
    patientAd?.urlImSheet1=url;
    patientCh?.urlImSheet1=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}


uploadImageImSheet2C(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

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
    patientAd?.urlImSheet2=url;
    patientCh?.urlImSheet2=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImageImSheet2G(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
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
    patientAd?.urlImSheet2=url;
    patientCh?.urlImSheet2=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}


uploadImagebirthcertificateC(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/birth certificate/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlBirthCertficate=url;
    patientCh?.urlBirthCertficate=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImagebirthcertificateG(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/birth certificate/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlBirthCertficate=url;
    patientCh?.urlBirthCertficate=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}


uploadImageSurgeryTicket1C(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/surgery ticket1/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlSurgeryTicket1=url;
    patientCh?.urlSurgeryTicket1=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImageSurgeryTicket1G(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/surgery ticket1/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlSurgeryTicket1=url;
    patientCh?.urlSurgeryTicket1=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}


uploadImageSurgeryTicket2C(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/surgery ticket 2/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlSurgeryTicket2=url;
    patientCh?.urlSurgeryTicket2=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImageSurgeryTicket2G(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/surgery ticket 2/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlSurgeryTicket2=url;
    patientCh?.urlSurgeryTicket2=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}


uploadImagesurgerysonarreportC(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/surgery sonar report/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlSurgerySonar=url;
    patientCh?.urlSurgerySonar=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImagesurgerysonarreportG(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/surgery sonar report/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlSurgerySonar=url;
    patientCh?.urlSurgerySonar=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}



uploadImageOphthalmiarevealedophthalmiaC(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/Ophthalmia revealed ophthalmia/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlOpthalmia=url;
    patientCh?.urlOpthalmia=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImageOphthalmiarevealedophthalmiaG(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/Ophthalmia revealed ophthalmia/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlOpthalmia=url;
    patientCh?.urlOpthalmia=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}




uploadImagGYNWomensreportC(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{

  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.camera);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/GYNWomen's report/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlGynWomen=url;
    patientCh?.urlGynWomen=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}
uploadImagGYNWomensreportG(PatientAdultModel? patientAd,PatientChildModel? patientCh) async{
  var imgpicked = await imagepicker.pickImage
    (source:ImageSource.gallery);
  if(imgpicked!= null) {
    file = File(imgpicked.path);
    var nameimage = basename(imgpicked.path);
    //start upload
    var refstorge = FirebaseStorage.instance.ref("/GYNWomen's report/$nameimage");
    await refstorge.putFile(file);
    //لمعرفة عنوان الصورة التي تم رفعها
    var url = await refstorge.getDownloadURL();
    patientAd?.urlGynWomen=url;
    patientCh?.urlGynWomen=url;
    MyDataBase.updatePatientAdult(patientAd!);
    MyDataBase.updatePatientChild(patientCh!);

    print("url : $url");
    //end upload
    print("++++++++++++++++++++++++++");
    print(nameimage);
  } else {
    print("please choose image");
  }
}