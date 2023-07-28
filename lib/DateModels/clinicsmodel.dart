// // class ClinicsModel {
// //
// //   List<String> CommondiagnosesforCardio;
// //   List<String> CommondiagnosesforDental;
// //   List<String> CommondiagnosesforIM;
// //   List<String> CommondiagnosesforOphthalmology;
// //   List<String> CommondiagnosesforDerma;
// //   List<String> CommondiagnosesforENT;
// //   List<String> CommondiagnosesforGyn;
// //   List<String> CommondiagnosesforOrtho;
// //   List<String> CommondiagnosesforPediatrics;
// //   List<String> CommondiagnosesforSurgery;
// //
// //   ClinicsModel({
// //     this.CommondiagnosesforCardio = [
// //       'Hypertension',
// //       'Chronic Coronary Syndrome',
// //       'Sinus Tachycardia',
// //       'Valvular Heart Disease (MR/AR)',
// //       'Heart Failure',
// //     ],
// //     this.CommondiagnosesforDental = ['-'],
// //     this.CommondiagnosesforDerma = ['-'],
// //     this.CommondiagnosesforENT = [
// //       'Tonsillitis',
// //       'Sinusitis',
// //       'Pharyngitis',
// //       'Otitis Media',
// //       'Otitis Externa',
// //       'Ear wax',
// //       'Epistaxis',
// //       'Allergic rhinitis',
// //       'Diarrhea',
// //     ],
// //     this.CommondiagnosesforGyn = [
// //       'Vulvu-vaginitis',
// //       'Fibroid (Leiomyomas)',
// //       'Polycystic Ovary Syndrome (PCOS)',
// //       'Endometriosis',
// //       'Pelvic Organ Prolapse POP',
// //       'Pelvic Inflammatory Disease (PID)',
// //       'STDS Chlamydia',
// //       'Endometrial Hyperplasia',
// //       'Endometrial Carcinoma',
// //     ],
// //     this.CommondiagnosesforIM = [
// //       'Anemia',
// //       'Diabetes Mellitus',
// //       'GERD',
// //       'UTI',
// //       'IBS',
// //       'Gout',
// //       'Parasitic infections',
// //       'Bronchial Asthma',
// //       'Diarrhea',
// //       'Renal Stone',
// //       'Headache',
// //       'Gastritis (H pylori)',
// //       'Hypertension',
// //       'CKD',
// //     ],
// //     this.CommondiagnosesforOphthalmology = [
// //       'Dry Eye',
// //       'Errors of refraction',
// //       'Allergic conjunctivitis',
// //       'Bacterial Conjunctivitis',
// //       'Pterygium',
// //       'Pterygium',
// //       'Chalazion',
// //       'Trichiasis',
// //     ],
// //     this.CommondiagnosesforOrtho = [
// //       'Osteoarthritis',
// //       'Muscle Spasm',
// //       'Slipped Disc',
// //       'Sciatica',
// //       'Joint Pain (low back/knee)',
// //       'Gout',
// //     ],
// //     this.CommondiagnosesforPediatrics = [
// //       'GASTROENTERITIS',
// //       'PARASITES',
// //       'TONSILLITIS',
// //       'UTI',
// //       'PNEUMONIA',
// //       'RHEUMTIC FEVER',
// //       'DIABETES',
// //       'CONGENITAL HEART DISEASE',
// //       'CONGENITAL HEART DISEASE',
// //       'BRONCHIAL ASTHMA',
// //     ],
// //     this.CommondiagnosesforSurgery = [
// //       'Lipoma',
// //       'Abscess',
// //       'Appendicitis',
// //       'Cholecystitis',
// //       'Hernia',
// //       'Thyroid goiter',
// //     ],
// //   });
// //
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// // Step 1: Initialize Firebase
// void initializeFirebase() async {
//   await Firebase.initializeApp();
// }
//
// // Step 2: Access Firestore instance
// final FirebaseFirestore firestore = FirebaseFirestore.instance;
//
// // Step 3: Retrieve data from the "IM" document in the "clinics" collection
// Future<void> fetchClinicData() async {
//   try {
//     DocumentSnapshot documentSnapshot = await firestore.collection('clinics').doc('IM').get();
//
//     // Check if the document exists
//     if (documentSnapshot.exists) {
//       // Cast data to Map<String, dynamic>
//       Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
//
//       String name = data['name']; // Clinic name
//       List<dynamic> diagnosesList = data['commonDiagnose']; // List of diagnoses
//       print('Clinic Name: $name');
//       print('Diagnoses List: $diagnosesList');
//     } else {
//       print('Document does not exist');
//     }
//   } catch (e) {
//     print('Error fetching data: $e');
//   }
// }
//
// // ... (updateClinicData() function remains unchanged)
//
// void main() async {
//   await initializeFirebase(); // Make sure to call this before accessing Firestore
//   await fetchClinicData(); // Read data from the "IM" document
//   //await updateClinicData(); // Update data in the "IM" document
// }
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// // Step 1: Initialize Firebase
// void initializeFirebase() async {
//   await Firebase.initializeApp();
// }
//
// // Step 2: Access Firestore instance
// final FirebaseFirestore firestore = FirebaseFirestore.instance;
//
// // Step 3: Retrieve data from the "IM" document in the "clinics" collection
// Future<void> fetchClinicData() async {
//   try {
//     DocumentSnapshot documentSnapshot = await firestore.collection('clinics').doc('IM').get();
//
//     // Check if the document exists
//     if (documentSnapshot.exists) {
//       // Access the data inside the "IM" document
//       Map<String, dynamic> data = documentSnapshot.data();
//       String name = data['name']; // Clinic name
//       List<dynamic> diagnosesList = data['diagnoses']; // List of diagnoses
//       print('Clinic Name: $name');
//       print('Diagnoses List: $diagnosesList');
//     } else {
//       print('Document does not exist');
//     }
//   } catch (e) {
//     print('Error fetching data: $e');
//   }
// }
//
// // Step 4: Update data in the "IM" document in the "clinics" collection
// Future<void> updateClinicData() async {
//   try {
//     // Reference to the "IM" document in the "clinics" collection
//     DocumentReference docRef = firestore.collection('clinics').doc('IM');
//
//     // Define the new data you want to update
//     Map<String, dynamic> newData = {
//       'name': 'Updated Clinic Name', // New clinic name
//       'diagnoses': ['Diagnosis 1', 'Diagnosis 2', 'Diagnosis 3'], // New list of diagnoses
//     };
//
//     // Perform the update
//     await docRef.update(newData);
//     print('Document updated successfully');
//   } catch (e) {
//     print('Error updating data: $e');
//   }
// }
//
// void main() async {
//   await fetchClinicData(); // Read data from the "IM" document
//   await updateClinicData(); // Update data in the "IM" document
// }
