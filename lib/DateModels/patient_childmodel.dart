class PatientChildModel {
  // List<String> >>>  screening
  String? idChildPatient;
  String? nameChildPatient;
  String? codeChildPatient;
  String? sexChildPatient;
  int? houseNuChildPatient;
  int? ageChildPatient;
  int? mobileNuChildPatient;
  String? fatherCccubationChild;
  String? fatherEduChild;
  String? motherEduChild;
  String? orderOfBirthChild;
  String? birthTermChild;
  String? pretermEduChild;
  String? weekBirthMode;
  String? consanguinityChild;
  String? nicuChild;

  // Complaaaiinnnttsss >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  List<ComplaintsModel>? complaintsList;
  String? familyHistoryDMchild;
  String? similarConditionChild;
  List<String>? familyHistoryChild; //checkbox ma4y

  List<String>? pastHistoryChild;
  String? pastHistMedicalChild;
  String? pastHistAllergyChild;
  String? pastHistIcuChild;
  String? pastHistSurgicalChild;
  String? pastHistBloodTransChild;

  // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>second screen
  String? immunizationHistChild;

  String? dieteticHistChild;

  String? developmentalHistGross;
  String? developmentalHistFine;
  String? developmentalHistLanguage;
  String? developmentalHistSocial;
  String? developmentalHistSphincters;

  String? antenatalHistStorch;
  String? antenatalHistDisease;
  String? antenatalHistirradiation;
  String? antenatalHistTeratogenic;
  String? antenatalHistHospitalization;

  String? natalHistChild;

  List<String>? neonNatalHistChild;

  String? vitalHrChild;
  String? vitalRrChild;
  String? vitalBpChild;
  String? vitalSpo2Child;
  String? vitalHbChild;
  String? vitalTempChild;
  String? vitalCrtChild;
  String? vitalRbsChild;

  List<String>? complextionsChild;

  String? localExamChild;
  String? cardiacExamChild;
  String? chestExamChild;
  String? abdominalExamChild;
  List<String>? referralClinicsChild;
  List<String>? screeningChild;
  String? followUpChild;
  String? goHomeChild;

  PatientChildModel({
    this.goHomeChild,
    this.screeningChild,
    this.complextionsChild,
    this.antenatalHistStorch,
    this.antenatalHistDisease,
    this.antenatalHistirradiation,
    this.antenatalHistTeratogenic,
    this.antenatalHistHospitalization,
    this.pastHistoryChild,
    this.complaintsList,
    this.birthTermChild,
    this.abdominalExamChild,
    this.nameChildPatient,
    this.codeChildPatient,
    this.sexChildPatient,
    this.houseNuChildPatient,
    this.ageChildPatient,
    this.mobileNuChildPatient,
    this.fatherCccubationChild,
    this.fatherEduChild,
    this.motherEduChild,
    this.orderOfBirthChild,
    this.pretermEduChild,
    this.weekBirthMode,
    this.nicuChild,
    this.consanguinityChild,
    this.familyHistoryChild,
    this.familyHistoryDMchild,
    this.similarConditionChild,
    this.pastHistMedicalChild,
    this.pastHistAllergyChild,
    this.pastHistIcuChild,
    this.pastHistSurgicalChild,
    this.pastHistBloodTransChild,
    this.immunizationHistChild,
    this.dieteticHistChild,
    this.developmentalHistGross,
    this.developmentalHistFine,
    this.developmentalHistLanguage,
    this.developmentalHistSocial,
    this.developmentalHistSphincters,
    this.natalHistChild,
    this.neonNatalHistChild,
    this.vitalHrChild,
    this.vitalRrChild,
    this.vitalBpChild,
    this.vitalSpo2Child,
    this.vitalHbChild,
    this.vitalTempChild,
    this.vitalCrtChild,
    this.vitalRbsChild,
    this.localExamChild,
    this.cardiacExamChild,
    this.chestExamChild,
    this.idChildPatient = "",
    this.referralClinicsChild,
    this.followUpChild,
  });

  PatientChildModel.fromFireStore(Map<String, dynamic> json)
      : this(
          screeningChild: json["screeningChild"] == null
              ? null
              : List<String>.from(json["screeningChild"]),
          complextionsChild: json["complextionsChild"] == null
              ? null
              : List<String>.from(json["complextionsChild"]),
          neonNatalHistChild: json["neonNatalHistChild"] == null
              ? null
              : List<String>.from(json["neonNatalHistChild"]),
          pastHistoryChild: json["pastHistoryChild"] == null
              ? null
              : List<String>.from(json["pastHistoryChild"]),
          familyHistoryChild: json["familyHistoryChild"] == null
              ? null
              : List<String>.from(json["familyHistoryChild"]),
          referralClinicsChild: json["referralClinicsChild"] == null
              ? null
              : List<String>.from(json["referralClinicsChild"]),
          goHomeChild: json["goHomeChild"],
          antenatalHistDisease: json["antenatalHistDisease"],
          antenatalHistHospitalization: json["antenatalHistHospitalization"],
          antenatalHistirradiation: json["antenatalHistirradiation"],
          antenatalHistStorch: json["antenatalHistStorch"],
          antenatalHistTeratogenic: json["antenatalHistTeratogenic"],
          developmentalHistFine: json["developmentalHistFine"],
          developmentalHistGross: json["developmentalHistGross"],
          developmentalHistLanguage: json["developmentalHistLanguage"],
          developmentalHistSocial: json["developmentalHistSocial"],
          developmentalHistSphincters: json["developmentalHistSphincters"],
          complaintsList: json["complaintsList"],
          abdominalExamChild: json["abdominalExamChild"],
          birthTermChild: json["birthTermChild"],
          ageChildPatient: json["ageChildPatient"],
          cardiacExamChild: json["cardiacExamChild"],
          chestExamChild: json["chestExamChild"],
          codeChildPatient: json["codeChildPatient"],
          consanguinityChild: json["consanguinityChild"],
          dieteticHistChild: json["dieteticHistChild"],
          familyHistoryDMchild: json["familyHistoryDMchild"],
          fatherCccubationChild: json["fatherCccubationChild"],
          fatherEduChild: json["fatherEduChild"],
          followUpChild: json["followUpChild"],
          houseNuChildPatient: json["houseNuChildPatient"],
          idChildPatient: json["idChildPatient"],
          immunizationHistChild: json["immunizationHistChild"],
          localExamChild: json["localExamChild"],
          mobileNuChildPatient: json["mobileNuChildPatient"],
          motherEduChild: json["motherEduChild"],
          nameChildPatient: json["nameChildPatient"],
          natalHistChild: json["natalHistChild"],
          nicuChild: json["nicuChild"],
          orderOfBirthChild: json["orderOfBirthChild"],
          pastHistAllergyChild: json["pastHistAllergyChild"],
          pastHistBloodTransChild: json["pastHistBloodTransChild"],
          pastHistIcuChild: json["pastHistIcuChild"],
          pastHistMedicalChild: json["pastHistMedicalChild"],
          pastHistSurgicalChild: json["pastHistSurgicalChild"],
          pretermEduChild: json["pretermEduChild"],
          sexChildPatient: json["sexChildPatient"],
          similarConditionChild: json["similarConditionChild"],
          vitalBpChild: json["vitalBpChild"],
          vitalCrtChild: json["vitalCrtChild"],
          vitalHbChild: json["vitalHbChild"],
          vitalHrChild: json["vitalHrChild"],
          vitalRbsChild: json["vitalRbsChild"],
          vitalRrChild: json["vitalRrChild"],
          vitalSpo2Child: json["vitalSpo2Child"],
          vitalTempChild: json["vitalTempChild"],
          weekBirthMode: json["weekBirthMode"],
        );

  Map<String, dynamic> toFireStore() {
    return {
      "goHomeChild" : goHomeChild,
      "screeningChild" : screeningChild,
      "complextionsChild": complextionsChild,
      "antenatalHistTeratogenic": antenatalHistTeratogenic,
      "antenatalHistStorch": antenatalHistStorch,
      "antenatalHistirradiation": antenatalHistirradiation,
      "antenatalHistHospitalization": antenatalHistHospitalization,
      "antenatalHistDisease": antenatalHistDisease,
      "developmentalHistGross": developmentalHistGross,
      "developmentalHistFine": developmentalHistFine,
      "developmentalHistLanguage": developmentalHistLanguage,
      "developmentalHistSocial": developmentalHistSocial,
      "developmentalHistSphincters": developmentalHistSphincters,
      "pastHistoryChild": pastHistoryChild,
      "complaintsList": complaintsList,
      "birthTermChild": birthTermChild,
      "abdominalExamChild": abdominalExamChild,
      "nameChildPatient": nameChildPatient,
      "codeChildPatient": codeChildPatient,
      "sexChildPatient": sexChildPatient,
      "houseNuChildPatient": houseNuChildPatient,
      "ageChildPatient": ageChildPatient,
      "mobileNuChildPatient": mobileNuChildPatient,
      "fatherCccubationChild": fatherCccubationChild,
      "fatherEduChild": fatherEduChild,
      "motherEduChild": motherEduChild,
      "orderOfBirthChild": orderOfBirthChild,
      "pretermEduChild": pretermEduChild,
      "weekBirthMode": weekBirthMode,
      "nicuChild": nicuChild,
      "consanguinityChild": consanguinityChild,
      "familyHistoryChild": familyHistoryChild,
      "familyHistoryDMchild": familyHistoryDMchild,
      "similarConditionChild": similarConditionChild,
      "pastHistMedicalChild": pastHistMedicalChild,
      "pastHistAllergyChild": pastHistAllergyChild,
      "pastHistIcuChild": pastHistIcuChild,
      "pastHistSurgicalChild": pastHistSurgicalChild,
      "pastHistBloodTransChild": pastHistBloodTransChild,
      "immunizationHistChild": immunizationHistChild,
      "dieteticHistChild": dieteticHistChild,
      "natalHistChild": natalHistChild,
      "neonNatalHistChild": neonNatalHistChild,
      "vitalHrChild": vitalHrChild,
      "vitalRrChild": vitalRrChild,
      "vitalBpChild": vitalBpChild,
      "vitalSpo2Child": vitalSpo2Child,
      "vitalHbChild": vitalHbChild,
      "vitalTempChild": vitalTempChild,
      "vitalCrtChild": vitalCrtChild,
      "vitalRbsChild": vitalRbsChild,
      "localExamChild": localExamChild,
      "cardiacExamChild": cardiacExamChild,
      "chestExamChild": chestExamChild,
      "idChildPatient": idChildPatient,
      "referralClinicsChild": referralClinicsChild,
      "followUpChild": followUpChild,
    };
  }
}

class ComplaintsModel {
  String? complaintName;
  String? complaintDescription;

  ComplaintsModel({this.complaintName, this.complaintDescription});

  ComplaintsModel.fromFire(Map<String, dynamic> json)
      : this(
          complaintName: json["complaintName"],
          complaintDescription: json["complaintDescription"],
        );

  Map<String, dynamic> toFire() {
    return {
      "complaintName": complaintName,
      "complaintDescription": complaintDescription,
    };
  }
}
