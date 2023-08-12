import 'package:bedaya/DateModels/PatientAdultModel.dart';
import 'package:bedaya/DateModels/patient_childmodel.dart';
import 'package:bedaya/DateModels/pharmacy_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyDataBase {
  static CollectionReference<PatientAdultModel> getCollectionAdult() {
    // done collection
    return FirebaseFirestore.instance
        .collection("AdultPatient")
        .withConverter<PatientAdultModel>(
          fromFirestore: (snapshot, _) =>
              PatientAdultModel.fromFireStore(snapshot.data()!),
          toFirestore: (PatientAdultModel, options) =>
              PatientAdultModel.toFireStore(),
        );
  }

  static Future<void> addPatientAdult(PatientAdultModel patientAdultModel) {
    var collectionRef = getCollectionAdult();
    // var doc = collectionRef.doc();
    var doc = collectionRef.doc(patientAdultModel.codeAdultPatient);
    // patientAdultModel.idAdultPatient = doc.id;
    return doc.set(patientAdultModel);
  }

  static Future<void> updatePatientAdult(PatientAdultModel patientAdultModel) {
    var collectionRef = getCollectionAdult();
    return collectionRef
        .doc(patientAdultModel.codeAdultPatient)
        .update(patientAdultModel.toFireStore());
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAllPatientAdult() {
    var collectionRef = getCollectionAdult();

    return collectionRef.snapshots();
  }

  static Future<void> deletePatient(String code) {
    var collectionRef = getCollectionAdult();
    return collectionRef.doc(code).delete();
  }


  static Stream<QuerySnapshot<PatientAdultModel>> getPatientAdult(String code) {
    var collection = getCollectionAdult();
    return collection.where("codeAdultPatient", isEqualTo: code).snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultDash(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).snapshots();
  }


  static Stream<QuerySnapshot<PatientAdultModel>> getListBlood(bool t) {
    var collection = getCollectionAdult();
    return collection.where("bloodCheckIn", isEqualTo: t).snapshots();
  }

  static Stream<QuerySnapshot<PatientAdultModel>> getListUrine(bool t) {
    var collection = getCollectionAdult();
    return collection.where("urineCheckIn", isEqualTo: t).snapshots();
  }

  static Stream<QuerySnapshot<PatientAdultModel>> getListStool(bool t) {
    var collection = getCollectionAdult();
    return collection.where("stoolCheckIn", isEqualTo: t).snapshots();
  }

  // children >>>>>>>>>>>>>>>>>>>>>>>

  static CollectionReference<PatientChildModel> getCollectionChild() {
    // done collection
    return FirebaseFirestore.instance
        .collection("ChildPatient")
        .withConverter<PatientChildModel>(
          fromFirestore: (snapshot, _) =>
              PatientChildModel.fromFireStore(snapshot.data()!),
          toFirestore: (PatientChildModel, options) =>
              PatientChildModel.toFireStore(),
        );
  }

  static Future<void> addPatientChild(PatientChildModel patientChildModel) {
    var collectionRef = getCollectionChild();
    var doc = collectionRef.doc(patientChildModel.codeChildPatient);
    return doc.set(patientChildModel);
  }

  static Future<void> updatePatientChild(PatientChildModel patientChildModel) {
    var collectionRef = getCollectionChild();
    return collectionRef
        .doc(patientChildModel.codeChildPatient)
        .update(patientChildModel.toFireStore());
  }

  static Stream<QuerySnapshot<PatientChildModel>> getPatientChild(String code) {
    var collection = getCollectionChild();
    return collection.where("codeChildPatient", isEqualTo: code).snapshots();
  }

  static Stream<QuerySnapshot<PatientChildModel>> getChildListBlood(bool t) {
    var collection = getCollectionChild();
    return collection.where("bloodCheckIn", isEqualTo: t).snapshots();
  }

  static Stream<QuerySnapshot<PatientChildModel>> getChildListUrine(bool t) {
    var collection = getCollectionChild();
    return collection.where("urineCheckIn", isEqualTo: t).snapshots();
  }

  static Stream<QuerySnapshot<PatientChildModel>> getChildListStool(bool t) {
    var collection = getCollectionChild();
    return collection.where("stoolCheckIn", isEqualTo: t).snapshots();
  }

  // pharmacy >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  static CollectionReference<PharmacyModel> getCollectionPharma() {
    return FirebaseFirestore.instance
        .collection("PharmacyDrug")
        .withConverter<PharmacyModel>(
      fromFirestore: (snapshot, _) =>
          PharmacyModel.fromFirebase(snapshot.data()!),
      toFirestore: (PharmacyModel, options) =>
          PharmacyModel.toFirebase(),
    );
  }

  static Future<void> addDrug(PharmacyModel pharmacyModel) {
    var collectionRef = getCollectionPharma();
    var doc = collectionRef.doc(pharmacyModel.codeDrug);
    return doc.set(pharmacyModel);
  }

  static Future<void> updateDrug(PharmacyModel pharmacyModel) {
    var collectionRef = getCollectionPharma();
    return collectionRef
        .doc(pharmacyModel.codeDrug)
        .update(pharmacyModel.toFirebase());
  }
  static Future<void> deleteDrug(String drugCode) {
    var collectionRef = getCollectionPharma();
    return collectionRef.doc(drugCode).delete();
  }

  static Stream<QuerySnapshot<PharmacyModel>> getDrug(String code) {
    var collection = getCollectionPharma();
    return collection.where("codeDrug", isEqualTo: code).snapshots();
  }
  static Stream<QuerySnapshot<PharmacyModel>> getUnCheckDrugList() {
    var collection = getCollectionPharma();
    return collection.where("numberDrug", isLessThan: 1).snapshots();
  }

  static Stream<QuerySnapshot<PharmacyModel>> showDrugList(bool t) {
    var collection = getCollectionPharma();
    return collection.where("expiry", isEqualTo: t).snapshots();
  }
  static Future<int> getAllDrugs() async {
    var collectionRef = getCollectionPharma();
    var querySnapshot = await collectionRef.get();

    int drugs = querySnapshot.docs
        .map((doc) => doc.data())
        .toList().length;

    return drugs;
  }


}
