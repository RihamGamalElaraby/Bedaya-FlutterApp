class PatientAdultModel {
  String? idAdultPatient;
  String? chosenDay;      //done
  String? nameAdultPatient; //done
  int? codeAdultPatient; //done
  String? sexAdultPatient; //done
  int? houseNumberAdultPatient; //done
  int? mobileNumberAdultPatient; //done
  int? agePatientAdult; // done
  String? occupationAdultPatient; //done
  String? maritalStatus; //done
  int? childrenNumber; //done
  int? ageOfYoungChild; //done
  String? educationLevelAdultPatient; //done
  String? smokingAdultPatient; // done
  String? rateSmoking; // done
  String? typeSmoking; // done
  String? otherHabitsSmoking; // done
  String? smokingCessationsStatus; // done
  String? DurationSmokingCessations; // done
  String? smokingCessations; // done
  int? gravidaNumber; // done
  int? abortionNumber; // done
  String? contracebtion; // done
  String? methodContracebtion; // done
  String? othercontracebtion; // done
  List<ComplaintsModel>? complaintsList; //*******************important            --------->>>>>>> lesa mt3mlsh
  List<String>? medicalPastHistory; // done
  String? otherMedicalPastHistory; // done
  String? allergyPastHistory; // done
  String? specifyAllergyPastHistory; // done
  String? bloodTransfusionPastHistory; // done
  String? durationBloodTransfusionPastHistory; // done
  String? surgicalPastHistory; // done
  String? operationSurgicalPastHistory; // done
  List<String>? drugsOfChronicDiseases; // done
  String? othersDrugsOfChronicDiseases; // done
  List<String>? familyHistory; // done
  String? othersFamilyHistory; // done
  //VitalDataGeneralExamination? vitalDataGeneralExamination;// change that
  double? BP1Vital; // done
  double? BP2Vital; // done
  double? mmHg1Vital; // done
  double? mmHg2Vital; // done
  double? hrVital; // done
  double? tempVital; // done
  double? randomBloodSugarVital; // done
  double? o2Saturationvital; // done
  List<String>? complexionGenerallExamination; // done
  List<String>? ReferralOfConvoyClinics; // done
  String? followUp; // done
  String? goHome; // done
  String? communityDevelopment; // done
  List<String>? screening; // done

  PatientAdultModel({
    this.goHome,
    this.communityDevelopment,
    this.screening,
    this.idAdultPatient = "",
    this.chosenDay,
    this.nameAdultPatient,
    this.codeAdultPatient,
    this.sexAdultPatient,
    this.houseNumberAdultPatient,
    this.mobileNumberAdultPatient,
    this.agePatientAdult,
    this.occupationAdultPatient,
    this.maritalStatus,
    this.childrenNumber,
    this.ageOfYoungChild,
    this.educationLevelAdultPatient,
    this.smokingAdultPatient,
    this.rateSmoking,
    this.typeSmoking,
    this.otherHabitsSmoking,
    this.smokingCessationsStatus,
    this.DurationSmokingCessations,
    this.smokingCessations,
    this.gravidaNumber,
    this.abortionNumber,
    this.contracebtion,
    this.methodContracebtion,
    this.othercontracebtion,
    this.complaintsList,
    this.medicalPastHistory,
    this.otherMedicalPastHistory,
    this.allergyPastHistory,
    this.specifyAllergyPastHistory,
    this.bloodTransfusionPastHistory,
    this.durationBloodTransfusionPastHistory,
    this.surgicalPastHistory,
    this.operationSurgicalPastHistory,
    this.drugsOfChronicDiseases,
    this.othersDrugsOfChronicDiseases,
    this.familyHistory,
    this.othersFamilyHistory,
    // this.vitalDataGeneralExamination,
    this.BP1Vital,
    this.BP2Vital,
    this.mmHg1Vital,
    this.mmHg2Vital,
    this.hrVital,
    this.tempVital,
    this.randomBloodSugarVital,
    this.complexionGenerallExamination,
    this.o2Saturationvital,
    this.ReferralOfConvoyClinics,
    this.followUp,
  });

  PatientAdultModel.fromFireStore(Map<String, dynamic> json)
      : this(
    goHome: json["goHome"],
    communityDevelopment: json["communityDevelopment"],
    screening: json["screening"],
    idAdultPatient: json["idAdultPatient"],
    chosenDay: json["chosenDay"],
    nameAdultPatient: json["nameAdultPatient"],
    codeAdultPatient: json["codeAdultPatient"],
    sexAdultPatient: json["sexAdultPatient"],
    houseNumberAdultPatient: json["houseNumberAdultPatient"],
    mobileNumberAdultPatient: json["mobileNumberAdultPatient"],
    agePatientAdult: json["agePatientAdult"],
    occupationAdultPatient: json["occupationAdultPatient"],
    maritalStatus: json["maritalStatus"],
    childrenNumber: json["childrenNumber"],
    ageOfYoungChild: json["ageOfYoungChild"],
    educationLevelAdultPatient: json["educationLevelAdultPatient"],
    smokingAdultPatient: json["smokingAdultPatient"],
    rateSmoking: json["rateSmoking"],
    typeSmoking: json["typeSmoking"],
    otherHabitsSmoking: json["otherHabitsSmoking"],
    smokingCessationsStatus: json["smokingCessationsStatus"],
    DurationSmokingCessations: json["DurationSmokingCessations"],
    smokingCessations: json["smokingCessations"],
    gravidaNumber: json["gravidaNumber"],
    abortionNumber: json["abortionNumber"],
    contracebtion: json["contracebtion"],
    methodContracebtion: json["methodContracebtion"],
    othercontracebtion: json["othercontracebtion"],
    ///////////////////////////////////
    complaintsList: List<ComplaintsModel>.from(
        json["complaintsList"].map((e) => ComplaintsModel.fromFire(e))),
    /////////////////////////////////////
    medicalPastHistory: json["medicalPastHistory"],
    otherMedicalPastHistory: json["otherMedicalPastHistory"],
    allergyPastHistory: json["allergyPastHistory"],
    specifyAllergyPastHistory: json["specifyAllergyPastHistory"],
    bloodTransfusionPastHistory: json["bloodTransfusionPastHistory"],
    durationBloodTransfusionPastHistory:
    json["durationBloodTransfusionPastHistory"],
    surgicalPastHistory: json["surgicalPastHistory"],
    operationSurgicalPastHistory: json["operationSurgicalPastHistory"],
    drugsOfChronicDiseases: json["drugsOfChronicDiseases"],
    othersDrugsOfChronicDiseases: json["othersDrugsOfChronicDiseases"],
    familyHistory: json["familyHistory"],
    othersFamilyHistory: json["othersFamilyHistory"],
    // vitalDataGeneralExamination: json["vitalDataGeneralExamination"],
    BP1Vital: json["BP1Vital"] ,
    BP2Vital: json["BP2Vital"],
    mmHg1Vital: json["mmHg1Vital"],
    mmHg2Vital: json["mmHg2Vital"],
    hrVital: json["hrVital"],
    tempVital: json["tempVital"],
    randomBloodSugarVital : json["randomBloodSugarVital"],
    complexionGenerallExamination: json["complexionGenerallExamination"],
    o2Saturationvital:
    json["o2Saturationvital"],
    ReferralOfConvoyClinics: json["ReferralOfConvoyClinics"],
    followUp: json["followUp"],
  );

  Map<String, dynamic> toFireStore() {
    return {
      "goHome":goHome,
      "communityDevelopment":communityDevelopment,
      "screening":screening,
      "idAdultPatient": idAdultPatient,
      "chosenDay": chosenDay,
      "nameAdultPatient": nameAdultPatient,
      "codeAdultPatient": codeAdultPatient,
      "sexAdultPatient": sexAdultPatient,
      "houseNumberAdultPatient": houseNumberAdultPatient,
      "mobileNumberAdultPatient": mobileNumberAdultPatient,
      "agePatientAdult": agePatientAdult,
      "occupationAdultPatient": occupationAdultPatient,
      "maritalStatus": maritalStatus,
      "childrenNumber": childrenNumber,
      "ageOfYoungChild": ageOfYoungChild,
      "educationLevelAdultPatient": educationLevelAdultPatient,
      "smokingAdultPatient": smokingAdultPatient,
      "rateSmoking": rateSmoking,
      "typeSmoking": typeSmoking,
      "otherHabitsSmoking": otherHabitsSmoking,
      "smokingCessationsStatus": smokingCessationsStatus,
      "DurationSmokingCessations": DurationSmokingCessations,
      "smokingCessations": smokingCessations,
      "gravidaNumber": gravidaNumber,
      "abortionNumber": abortionNumber,
      "contracebtion": contracebtion,
      "methodContracebtion": methodContracebtion,
      "othercontracebtion": othercontracebtion,
      // "complaintsList": complaintsList,
      'complaintsList': complaintsList?.map((v) => v.toFire()).toList(),
      "medicalPastHistory": medicalPastHistory,
      "otherMedicalPastHistory": otherMedicalPastHistory,
      "allergyPastHistory": allergyPastHistory,
      "specifyAllergyPastHistory": specifyAllergyPastHistory,
      "bloodTransfusionPastHistory": bloodTransfusionPastHistory,
      "durationBloodTransfusionPastHistory":
      durationBloodTransfusionPastHistory,
      "surgicalPastHistory": surgicalPastHistory,
      "operationSurgicalPastHistory": operationSurgicalPastHistory,
      "drugsOfChronicDiseases": drugsOfChronicDiseases,
      "othersDrugsOfChronicDiseases": othersDrugsOfChronicDiseases,
      "familyHistory": familyHistory,
      "othersFamilyHistory": othersFamilyHistory,
      // "vitalDataGeneralExamination": vitalDataGeneralExamination,
      "BP1Vital": BP1Vital ,
      "BP2Vital" :  BP2Vital,
      "mmHg1Vital" :mmHg1Vital,
      "mmHg2Vital"  : mmHg2Vital,
      "hrVital" :hrVital,
      "tempVital":tempVital,
      "randomBloodSugarVital"  :randomBloodSugarVital,

      "complexionGenerallExamination": complexionGenerallExamination,
      "o2Saturationvital": o2Saturationvital,
      "ReferralOfConvoyClinics": ReferralOfConvoyClinics,
      "followUp": followUp,
    };
  }
}

class ComplaintsModel {
  String? complaintName;
  String? symptom;
  String? onset;
  String? course;
  String? duration;
  String? site;
  String? radiation;
  String? increasedBy;
  String? decreasedBy;
  String? previous;

  ComplaintsModel({
    this.complaintName,
    this.symptom,
    this.onset,
    this.course,
    this.duration,
    this.site,
    this.radiation,
    this.increasedBy,
    this.decreasedBy,
    this.previous,
  });

  ComplaintsModel.fromFire(Map<String, dynamic> json)
      : this(
    complaintName: json["complaintName"],
    symptom: json["symptom"],
    onset: json["onset"],
    course: json["course"],
    duration: json["duration"],
    site: json["site"],
    radiation: json["radiation"],
    increasedBy: json["increasedBy"],
    decreasedBy: json["decreasedBy"],
    previous: json["previous"],
  );

  Map<String, dynamic> toFire() {
    return {
      "complaintName": complaintName,
      "symptom": symptom,
      "onset": onset,
      "course": course,
      "duration": duration,
      "site": site,
      "radiation": radiation,
      "increasedBy": increasedBy,
      "decreasedBy": decreasedBy,
      "previous": previous,
    };
  }
}

// class VitalDataGeneralExamination {


//   VitalDataGeneralExamination(
//       {
//         this.BP1,
//       this.BP2,
//       this.mmHg1,
//       this.mmHg2,
//       this.hr,
//       this.randomBloodSugar,
//       this.temp});

//   VitalDataGeneralExamination.fromFireStore(Map<String, dynamic> json)
//       : this(
//           BP1: json["BP1"],
//           BP2: json["BP2"],
//           mmHg1: json["mmHg1"],
//           mmHg2: json["mmHg2"],
//           hr: json["hr"],
//           randomBloodSugar: json["randomBloodSugar"],
//           temp: json["temp"],
//         );

//   Map<String, dynamic> toFireStore() {
//     return {
//       "BP1": BP1,
//       "BP2": BP2,
//       "mmHg1": mmHg1,
//       "mmHg2": mmHg2,
//       "hr": hr,
//       "randomBloodSugar": randomBloodSugar,
//       "temp": temp,
//     };
//   }
