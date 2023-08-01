class PatientChildModel {
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
  String? pretermEduChild;
  String? weekBirthMode;
  String? consanguinityChild;
  String? nicuChild;

  // Complaaaiinnnttsss >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  String? familyHistoryHTNchild;
  String? familyHistoryDMchild;
  String? similarConditionChild;
  String? geneticDiseaseChild;
  String? pastHistMedicalChild;
  String? pastHistAllergyChild;
  String? pastHistIcuChild;
  String? pastHistSurgicalChild;
  String? pastHistBloodTransChild;
  String? immunizationHistChild;
  String? dieteticHistChild;
  String? developmentalHistChild;
  String? antenatalHistChild;
  String? natalHistChild;
  String? neonNatalHistChild;
  String? vitalHrChild;
  String? vitalRrChild;
  String? vitalBpChild;
  String? vitalSpo2Child;
  String? vitalHbChild;
  String? vitalTempChild;
  String? vitalCrtChild;
  String? vitalRbsChild;
  String? localExamChild;
  String? cardiacExamChild;
  String? chestExamChild;
  String? abdominalExamChild;
  List<String>? referralClinicsChild;
  String? followUpChild;

  PatientChildModel({
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
    this.familyHistoryHTNchild,
    this.familyHistoryDMchild,
    this.similarConditionChild,
    this.geneticDiseaseChild,
    this.pastHistMedicalChild,
    this.pastHistAllergyChild,
    this.pastHistIcuChild,
    this.pastHistSurgicalChild,
    this.pastHistBloodTransChild,
    this.immunizationHistChild,
    this.dieteticHistChild,
    this.developmentalHistChild,
    this.antenatalHistChild,
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
          referralClinicsChild: json["referralClinicsChild"] == null
              ? null
              : List<String>.from(json["referralClinicsChild"]),
          abdominalExamChild: json["abdominalExamChild"],
          ageChildPatient: json["ageChildPatient"],
          antenatalHistChild: json["antenatalHistChild"],
          cardiacExamChild: json["cardiacExamChild"],
          chestExamChild: json["chestExamChild"],
          codeChildPatient: json["codeChildPatient"],
          consanguinityChild: json["consanguinityChild"],
          developmentalHistChild: json["developmentalHistChild"],
          dieteticHistChild: json["dieteticHistChild"],
          familyHistoryDMchild: json["familyHistoryDMchild"],
          familyHistoryHTNchild: json["familyHistoryHTNchild"],
          fatherCccubationChild: json["fatherCccubationChild"],
          fatherEduChild: json["fatherEduChild"],
          followUpChild: json["followUpChild"],
          geneticDiseaseChild: json["geneticDiseaseChild"],
          houseNuChildPatient: json["houseNuChildPatient"],
          idChildPatient: json["idChildPatient"],
          immunizationHistChild: json["immunizationHistChild"],
          localExamChild: json["localExamChild"],
          mobileNuChildPatient: json["mobileNuChildPatient"],
          motherEduChild: json["motherEduChild"],
          nameChildPatient: json["nameChildPatient"],
          natalHistChild: json["natalHistChild"],
          neonNatalHistChild: json["neonNatalHistChild"],
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
      "familyHistoryHTNchild": familyHistoryHTNchild,
      "familyHistoryDMchild": familyHistoryDMchild,
      "similarConditionChild": similarConditionChild,
      "geneticDiseaseChild": geneticDiseaseChild,
      "pastHistMedicalChild": pastHistMedicalChild,
      "pastHistAllergyChild": pastHistAllergyChild,
      "pastHistIcuChild": pastHistIcuChild,
      "pastHistSurgicalChild": pastHistSurgicalChild,
      "pastHistBloodTransChild": pastHistBloodTransChild,
      "immunizationHistChild": immunizationHistChild,
      "dieteticHistChild": dieteticHistChild,
      "developmentalHistChild": developmentalHistChild,
      "antenatalHistChild": antenatalHistChild,
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
