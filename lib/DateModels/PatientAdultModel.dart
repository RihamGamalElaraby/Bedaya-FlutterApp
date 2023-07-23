// class PatientAdultModel {
//   String idAdultPatient;
//   String chosenDay;
//   String nameAdultPatient;
//   int codeAdultPatient;
//   String sexAdultPatient;
//   int houseNumberAdultPatient;
//   int mobileNumberAdultPatient;
//   String occupationAdultPatient;
//   String maritalStatus;
//   int? childrenNumber;
//   int? ageOfYoungChild;
//   String educationLevelAdultPatient;
//   String smokingAdultPatient;
//   String? rateSmoking;
//   String? typeSmoking;
//   String? otherHabits;
//   String smokingCessationsStatus;
//   String? DurationSmokingCessations;
//   String smokingCessations;
//   int gravidaNumber;
//   int abortionNumber;
//   String contracebtion;
//   String? methodContracebtion;
//   String? othercontracebtion;
//   List<ComplaintsModel> complaintsList;
//   List<String> medicalPastHistory;
//   String? otherMedicalPastHistory;
//   List<String> allergyPastHistory;
//   String specifyAllergyPastHistory;
//   String bloodTransfusionPastHistory;
//   String durationBloodTransfusionPastHistory;
//   String surgicalPastHistory;
//   String? operationSurgicalPastHistory;
//   List<String> drugsOfChronicDiseases;
//   String? othersDrugsOfChronicDiseases;
//   List<String> familyHistory;
//   String? othersFamilyHistory;
//   VitalDataGeneralExamination vitalDataGeneralExamination;
//   List<String> complexionGenerallExamination;
//   String? o2SaturationGenerallExamination;
//   List<String> ReferralOfConvoyClinics;
//   String followUp;
//
//   PatientAdultModel({
//     this.idAdultPatient = "",
//     required this.chosenDay,
//     required this.nameAdultPatient,
//     required this.codeAdultPatient,
//     required this.sexAdultPatient,
//     required this.houseNumberAdultPatient,
//     required this.mobileNumberAdultPatient,
//     required this.occupationAdultPatient,
//     required this.maritalStatus,
//     this.childrenNumber,
//     this.ageOfYoungChild,
//     required this.educationLevelAdultPatient,
//     required this.smokingAdultPatient,
//     this.rateSmoking,
//     this.typeSmoking,
//     this.otherHabits,
//     required this.smokingCessationsStatus,
//     this.DurationSmokingCessations,
//     required this.smokingCessations,
//     required this.gravidaNumber,
//     required this.abortionNumber,
//     required this.contracebtion,
//     this.methodContracebtion,
//     this.othercontracebtion,
//     required this.complaintsList,
//     required this.medicalPastHistory,
//     this.otherMedicalPastHistory,
//     required this.allergyPastHistory,
//     required this.specifyAllergyPastHistory,
//     required this.bloodTransfusionPastHistory,
//     required this.durationBloodTransfusionPastHistory,
//     required this.surgicalPastHistory,
//     this.operationSurgicalPastHistory,
//     required this.drugsOfChronicDiseases,
//     this.othersDrugsOfChronicDiseases,
//     required this.familyHistory,
//     this.othersFamilyHistory,
//     required this.vitalDataGeneralExamination,
//     required this.complexionGenerallExamination,
//     this.o2SaturationGenerallExamination,
//     required this.ReferralOfConvoyClinics,
//     required this.followUp,
//   });
//
//   PatientAdultModel.fromFireStore(Map<String, dynamic> json)
//       : this(
//     idAdultPatient: json["id"],
//     chosenDay: json["chosenDay"],
//     nameAdultPatient: ,
//     codeAdultPatient: ,
//   sexAdultPatient: ,
//   houseNumberAdultPatient: ,
//   mobileNumberAdultPatient: ,
//   occupationAdultPatient: ,
//   maritalStatus: ,
//   childrenNumber: ,
//   ageOfYoungChild: ,
//   educationLevelAdultPatient: ,
//   smokingAdultPatient: ,
//   rateSmoking: ,
//   typeSmoking: ,
//   otherHabits: ,
//   smokingCessationsStatus: ,
//   DurationSmokingCessations: ,
//   smokingCessations: ,
//   gravidaNumber: ,
//   abortionNumber: ,
//   contracebtion: ,
//   methodContracebtion: ,
//   othercontracebtion: ,
//   complaintsList: ,
//   medicalPastHistory: ,
//   otherMedicalPastHistory: ,
//   allergyPastHistory: ,
//   specifyAllergyPastHistory: ,
//   bloodTransfusionPastHistory: ,
//   durationBloodTransfusionPastHistory: ,
//     surgicalPastHistory: ,
//     operationSurgicalPastHistory: ,
//     drugsOfChronicDiseases: ,
//     othersDrugsOfChronicDiseases: ,
//     familyHistory: ,
//     othersFamilyHistory: ,
//     vitalDataGeneralExamination: ,
//     complexionGenerallExamination: ,
//     o2SaturationGenerallExamination: ,
//     ReferralOfConvoyClinics: ,
//     followUp: ,
//   );
//
//   Map<String, dynamic> toFireStore(){
//     return{
//       "id":idAdultPatient,
//       "chosenDay":chosenDay,
//
//     };
//   }
// }
//
// class ComplaintsModel {
//   String complaintName;
//   String? symptom;
//   String? onset;
//   String? course;
//   String? duration;
//   String? site;
//   String? radiation;
//   String? increasedBy;
//   String? decreasedBy;
//   String? previous;
//
//   ComplaintsModel({
//     required this.complaintName,
//     this.symptom,
//     this.onset,
//     this.course,
//     this.duration,
//     this.site,
//     this.radiation,
//     this.increasedBy,
//     this.decreasedBy,
//     this.previous,
//   });
// }
//
// class VitalDataGeneralExamination {
//   double BP1;
//   double BP2;
//   double mmHg1;
//   double mmHg2;
//   double hr;
//   double temp;
//   double randomBloodSugar;
//
//   VitalDataGeneralExamination(
//       {required this.BP1,
//         required this.BP2,
//         required this.mmHg1,
//         required this.mmHg2,
//         required this.hr,
//         required this.randomBloodSugar,
//         required this.temp});
// }