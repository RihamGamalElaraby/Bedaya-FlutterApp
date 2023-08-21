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
  // Future<List<String>> getCountedDiagnoses(String day) async {
  //   Map<String, int> diagnosisCounter = {};
  //
  //   // Fetch all patient data
  //   QuerySnapshot<PatientAdultModel> snapshot = await getCollectionAdult().where("chosenDay",isEqualTo: day).get();
  //
  //   // Count diagnoses
  //   snapshot.docs.forEach((doc) {
  //     List<String>? diagnoses = doc.data().imdiagnoses;
  //     for (String diagnosis in diagnoses!) {
  //       diagnosisCounter[diagnosis] = (diagnosisCounter[diagnosis] ?? 0) + 1;
  //     }
  //   });
  //
  //   // Convert diagnosisCounter to the desired format
  //   List<String> formattedDiagnoses = diagnosisCounter.entries.map((entry) {
  //     return '${entry.value} : "${entry.key}"';
  //   }).toList();
  //
  //   return formattedDiagnoses;
  // }

  int getDiagnosisCountAdultIm(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientAdultModel patientData = userSnapshot.data() as PatientAdultModel;

      List<String>? diagnoses = patientData.imdiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getAdultImDiagnoses(String targetDiagnosis) {
    return getCollectionAdult()
        .snapshots()
        .map((snapshot) => getDiagnosisCountAdultIm(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountAdultEnt(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientAdultModel patientData = userSnapshot.data() as PatientAdultModel;

      List<String>? diagnoses = patientData.entdiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getAdultEntDiagnoses(String targetDiagnosis) {
    return getCollectionAdult()
        .snapshots()
        .map((snapshot) => getDiagnosisCountAdultEnt(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountAdultOrtho(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientAdultModel patientData = userSnapshot.data() as PatientAdultModel;

      List<String>? diagnoses = patientData.orthodiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getAdultOrthoDiagnoses(String targetDiagnosis) {
    return getCollectionAdult()
        .snapshots()
        .map((snapshot) => getDiagnosisCountAdultOrtho(snapshot, targetDiagnosis));
  }


  int getDiagnosisCountAdultCardio(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientAdultModel patientData = userSnapshot.data() as PatientAdultModel;

      List<String>? diagnoses = patientData.Cardiodiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getAdultCardioDiagnoses(String targetDiagnosis) {
    return getCollectionAdult()
        .snapshots()
        .map((snapshot) => getDiagnosisCountAdultCardio(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountAdultOphtha(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientAdultModel patientData = userSnapshot.data() as PatientAdultModel;

      List<String>? diagnoses = patientData.ophthadiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getAdultOphthaDiagnoses(String targetDiagnosis) {
    return getCollectionAdult()
        .snapshots()
        .map((snapshot) => getDiagnosisCountAdultOphtha(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountAdultGyn(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientAdultModel patientData = userSnapshot.data() as PatientAdultModel;

      List<String>? diagnoses = patientData.gyndiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getAdultGynDiagnoses(String targetDiagnosis) {
    return getCollectionAdult()
        .snapshots()
        .map((snapshot) => getDiagnosisCountAdultGyn(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountAdultSurg(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientAdultModel patientData = userSnapshot.data() as PatientAdultModel;

      List<String>? diagnoses = patientData.surgerydiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getAdultSurgeryDiagnoses(String targetDiagnosis) {
    return getCollectionAdult()
        .snapshots()
        .map((snapshot) => getDiagnosisCountAdultSurg(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountAdultPed(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientAdultModel patientData = userSnapshot.data() as PatientAdultModel;

      List<String>? diagnoses = patientData.peddiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getAdultPedDiagnoses(String targetDiagnosis) {
    return getCollectionAdult()
        .snapshots()
        .map((snapshot) => getDiagnosisCountAdultPed(snapshot, targetDiagnosis));
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

  static Stream<QuerySnapshot<PatientAdultModel>> getAdultDash(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).snapshots();
  }

  static Stream<QuerySnapshot<PatientAdultModel>> getAdultDentalReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportDentaldiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultSurgeryReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportsurgerydiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultPedReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportpeddiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultOpthaReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportophthadiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultIMReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportimdiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultGynReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportgyndiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultEntReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportentdiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultDermaReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportDermadiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultCardioReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportCardiodiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultOrthoReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportorthodiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultFollowUoReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportFollowUp", isEqualTo: "done").snapshots();
  }


  static Stream<QuerySnapshot<PatientAdultModel>> getAdultUrineReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportUrine", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultBloodReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportBlood", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultStoolReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportStool", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientAdultModel>> getAdultPharmacyReport(String day) {
    var collection = getCollectionAdult();
    return collection.where("chosenDay", isEqualTo: day).where("reportPharma", isEqualTo: "done").snapshots();
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

  static Stream<QuerySnapshot<PatientChildModel>> getChildDash(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).snapshots();
  }
  int getDiagnosisCountChildIm(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientChildModel patientData = userSnapshot.data() as PatientChildModel;

      List<String>? diagnoses = patientData.imdiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getChildImDiagnoses(String targetDiagnosis) {
    return getCollectionChild()
        .snapshots()
        .map((snapshot) => getDiagnosisCountChildIm(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountChildENT(QuerySnapshot snapshot, String targetDiagnosis,) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientChildModel patientData = userSnapshot.data() as PatientChildModel;

      List<String>? diagnoses = patientData.entdiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getChildEntDiagnoses(String targetDiagnosis) {
    return getCollectionChild()
        .snapshots()
        .map((snapshot) => getDiagnosisCountChildENT(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountChildOrtho(QuerySnapshot snapshot, String targetDiagnosis,) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientChildModel patientData = userSnapshot.data() as PatientChildModel;

      List<String>? diagnoses = patientData.orthodiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getChildOrthoDiagnoses(String targetDiagnosis) {
    return getCollectionChild()
        .snapshots()
        .map((snapshot) => getDiagnosisCountChildOrtho(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountChildCardio(QuerySnapshot snapshot, String targetDiagnosis,) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientChildModel patientData = userSnapshot.data() as PatientChildModel;

      List<String>? diagnoses = patientData.Cardiodiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getChildCardioDiagnoses(String targetDiagnosis) {
    return getCollectionChild()
        .snapshots()
        .map((snapshot) => getDiagnosisCountChildCardio(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountChildOphtha(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientChildModel patientData = userSnapshot.data() as PatientChildModel;

      List<String>? diagnoses = patientData.ophthadiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getChildOphthaDiagnoses(String targetDiagnosis) {
    return getCollectionChild()
        .snapshots()
        .map((snapshot) => getDiagnosisCountChildOphtha(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountChildGyn(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientChildModel patientData = userSnapshot.data() as PatientChildModel;

      List<String>? diagnoses = patientData.gyndiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getChildGynDiagnoses(String targetDiagnosis) {
    return getCollectionChild()
        .snapshots()
        .map((snapshot) => getDiagnosisCountChildGyn(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountChildSurg(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientChildModel patientData = userSnapshot.data() as PatientChildModel;

      List<String>? diagnoses = patientData.surgerydiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getChildSurgeryDiagnoses(String targetDiagnosis) {
    return getCollectionChild()
        .snapshots()
        .map((snapshot) => getDiagnosisCountChildSurg(snapshot, targetDiagnosis));
  }

  int getDiagnosisCountChildPed(QuerySnapshot snapshot, String targetDiagnosis) {
    int count = 0;
    for (QueryDocumentSnapshot userSnapshot in snapshot.docs) {
      PatientChildModel patientData = userSnapshot.data() as PatientChildModel;

      List<String>? diagnoses = patientData.peddiagnoses;
      if (diagnoses != null && diagnoses.contains(targetDiagnosis)) {
        count++;
      }
    }
    return count;
  }

  Stream<int> getChildPedDiagnoses(String targetDiagnosis) {
    return getCollectionChild()
        .snapshots()
        .map((snapshot) => getDiagnosisCountChildPed(snapshot, targetDiagnosis));
  }




  static Stream<QuerySnapshot<PatientChildModel>> getChildDentalReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportDentaldiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildSurgeryReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportsurgerydiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildPedReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportpeddiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildOpthaReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportophthadiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildIMReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportimdiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildGynReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportgyndiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildEntReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportentdiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildDermaReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportDermadiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildCardioReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportCardiodiagnoses", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildOrthoReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportorthodiagnoses", isEqualTo: "done").snapshots();
  }

  static Stream<QuerySnapshot<PatientChildModel>> getChildFollowUoReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportFollowUp", isEqualTo: "done").snapshots();
  }



  static Stream<QuerySnapshot<PatientChildModel>> getChildUrineReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportUrine", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildBloodReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportBlood", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildStoolReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportStool", isEqualTo: "done").snapshots();
  }
  static Stream<QuerySnapshot<PatientChildModel>> getChildPharmacyReport(String day) {
    var collection = getCollectionChild();
    return collection.where("chosenDay", isEqualTo: day).where("reportPharma", isEqualTo: "done").snapshots();
  }

  static Stream<QuerySnapshot<PatientChildModel>> getAllPatientChild() {
    var collectionRef = getCollectionChild();

    return collectionRef.snapshots();
  }

  static Future<void> deleteChild(String code) {
    var collectionRef = getCollectionChild();
    return collectionRef.doc(code).delete();
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
          toFirestore: (PharmacyModel, options) => PharmacyModel.toFirebase(),
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

    int drugs = querySnapshot.docs.map((doc) => doc.data()).toList().length;

    return drugs;
  }
}
//