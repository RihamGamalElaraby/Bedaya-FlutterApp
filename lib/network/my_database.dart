import 'package:bedaya/DateModels/PatientAdultModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyDataBase{

  static CollectionReference<PatientAdultModel> getCollection() { // done collection
    return FirebaseFirestore.instance
        .collection("AdultPatient")
        .withConverter<PatientAdultModel>(
      fromFirestore: (snapshot, _) =>
          PatientAdultModel.fromFireStore(snapshot.data()!),
      toFirestore: (PatientAdultModel, options) => PatientAdultModel.toFireStore(),
    );
  }

  static Future<void> addPatientAdult(PatientAdultModel patientAdultModel){
    var collectionRef=getCollection();
    // var doc = collectionRef.doc();
    var doc = collectionRef.doc(patientAdultModel.codeAdultPatient);
     // patientAdultModel.idAdultPatient = doc.id;
    return doc.set(patientAdultModel);
  }

  static Future<void> updatePatientAdult (PatientAdultModel patientAdultModel){
    var collectionRef = getCollection();
    return collectionRef.doc(patientAdultModel.codeAdultPatient).update(patientAdultModel.toFireStore());
  }

  static Stream<QuerySnapshot<PatientAdultModel>> getPatient(String code) {
    var collection = getCollection();
    return collection
        .where("codeAdultPatient", isEqualTo: code)
        .snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getListBlood(bool t) {
    var collection = getCollection();
    return collection
        .where("bloodCheckIn", isEqualTo: t)
        .snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getListUrine(bool t) {
    var collection = getCollection();
    return collection
        .where("urineCheckIn", isEqualTo: t)
        .snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getListStool(bool t) {
    var collection = getCollection();
    return collection
        .where("stoolCheckIn", isEqualTo: t)
        .snapshots();
  }
}