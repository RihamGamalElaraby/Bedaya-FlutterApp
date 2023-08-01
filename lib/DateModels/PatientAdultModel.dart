class PatientAdultModel {
  String? idAdultPatient;
  String? chosenDay; //done
  String? nameAdultPatient; //done
  String? codeAdultPatient; //done
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
  List<ComplaintsModel>?
      complaintsList; //*******************important            --------->>>>>>> lesa mt3mlsh
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
  List<String>? Cardiodiagnoses;
  List<String>? CardioTreatment;
  List<String>? Dentaldiagnoses;
  List<String>? DentalTreatment;
  List<String>? Dermadiagnoses;
  List<String>? DermaTreatment;
  List<String>? entdiagnoses;
  List<String>? entTreatment;
  List<String>? gyndiagnoses;
  List<String>? gynTreatment;
  List<String>? imdiagnoses;
  List<String>? imTreatment;
  List<String>? ophthadiagnoses;
  List<String>? ophthaTreatment;
  List<String>? orthodiagnoses; // ehna 3mlna dol s7 ?
  List<String>? orthoTreatment;
  List<String>? peddiagnoses;
  List<String>? pedTreatment;
  List<String>? surgerydiagnoses;
  List<String>? surgeryTreatment;
  bool? urineCheckIn;
  bool? bloodCheckIn;
  bool? stoolCheckIn;

  String? urinePhysicalExColour;
  String? urinePhysicalExAspect;
  String? urineChemicalExBlood; //1
  String? urineChemicalExUrobilingen;
  String? urineChemicalExBilirubin;
  String? urineChemicalExProtien;
  String? urineChemicalExNitrite;
  String? urineChemicalExPH;
  String? urineChemicalExGlucose;
  String? urineChemicalExKetone;
  String? urineChemicalExHemoglobin;
  String? urineChemicalExLeukocyte;
  String? urineChemicalExSpecificgravity;
  String? urineChemicalExDensity; //12
  String? urineMicroscopicExRBCs;
  String? urineMicroscopicExPuscells;
  String? urineMicroscopicExEpithelialcells;
  String? urineMicroscopicExCalciumOxalate;
  String? urineMicroscopicExUricacid;
  String? urineMicroscopicExTriplephosphate;
  String? urineMicroscopicExAmorphous;
  String? urineAlbumineAlbumine;
  String? urineAlbumineCreat;
  String? urineAlbumineAlbuminaCreateRatio;

  List<String>? urineAbnormalFindings; // lissttttt
  String? urineAdittionalComments;

  String? consisteny;
  String? Stoollabblood;
  String? Stoollabmucus;
  String? Stoollabfasciola;
  String? Stoollabsch;
  String? Stoollabhnana;
  String? Stoollabtinea;
  String? StoollabAscaris;
  String? StoollabTtrichuria;
  String? StoollabHookworm;
  String? StoollabHpylori;
  String? Stoollabfecal;
  String? StoollabEntrobious;
  String? StoollabEcoli;
  String? StoollabEhistolitica;
  String? StoollabGiardia;
  String? StoollabStrongyloideslarvae;
  String? StoollabGiardiatrophozozite;
  String? StoollabEhistoliticatrophozite;
  String? StoolColor;
  String? StoolWorm;
  String? StoolOdour;
  String? wbcscontroller;
  String? Rbcscontroller;
  String? bloodCbcWbs; //1
  String? bloodCbcLymph;

  String? bloodCbcMid;

  String? bloodCbcGran;

  String? bloodCbcLymphH;

  String? bloodCbcGranL;

  String? bloodCbcMidPercent;

  String? bloodCbcRbc;

  String? bloodCbcHgbl;

  String? bloodCbcHctl;

  String? bloodCbcMcvl;
  String? bloodCbcMchl;

  String? bloodCbcMchc;

  String? bloodCbcRdwcv;

  String? bloodCbcRdwsdl;
  String? bloodCbcPlth;

  String? bloodCbcMpv;

  String? bloodCbcPdw;

  String? bloodCbcPct;

  String? bloodCbcPlccl;

  String? bloodCbcPlcrl; //21
  String? bloodEsr;

  String? bloodLipidLdl;

  String? bloodLipidTg;

  String? bloodLipidHdl;

  String? bloodLipidCholesterol;

  String? cbcPttresult; //1
  String? cbcptpercentage;

  String? cbcptTime;

  String? cbcptINR;

  String? cbcliverDirectbilirubin; //1

  String? cbcliverTotalbilirubin;

  String? cbcliverAlbumin;

  String? cbcliverAlkalinephosphatase;

  String? cbcliverAST;

  String? cbcliverALTGPT; // finish


  String? bloodkidneyCreatinine;
  String? bloodkidneyurea;
  String? bloodkidneyUricacid;
  String? bloodionsK;
  String? bloodionsCa;
  String? bloodionsNa;
  String? bloodglucoseRandom;
  String? bloodglucoseFasting;
  String? bloodglucoseHbA1C;
  String? bloodglucosePostPrandial;
  String? bloodotherBHCG;
  String? bloodotherHBV;
  String? bloodotherHCV;
  String? bloodotherAlfafetoprotein;
  String? bloodotherPSA;
  String? bloodotherAntiD;
  String? bloodotherRheumatoidfactor;
  String? bloodotherCRP;
  String? bloodotherASOT;

  PatientAdultModel({
    this.bloodotherCRP,
    this.bloodotherASOT,
    this.bloodotherAlfafetoprotein,
    this.bloodotherAntiD,
    this.bloodotherBHCG,
    this.bloodotherHBV,
    this.bloodotherHCV,
    this.bloodotherPSA,
    this.bloodotherRheumatoidfactor,
    this.bloodkidneyCreatinine,
    this.bloodkidneyurea,
    this.bloodkidneyUricacid,
    this.bloodionsCa,
    this.bloodionsK,
    this.bloodionsNa,
    this.bloodglucoseFasting,
    this.bloodglucoseHbA1C,
    this.bloodglucosePostPrandial,
    this.bloodglucoseRandom,
    this.cbcliverAlbumin,
    this.cbcliverAlkalinephosphatase,
    this.cbcliverALTGPT,
    this.cbcliverAST,
    this.cbcliverDirectbilirubin,
    this.cbcliverTotalbilirubin,
    this.cbcptINR,
    this.cbcptpercentage,
    this.cbcptTime,
    this.cbcPttresult,
    this.bloodEsr,
    this.bloodLipidCholesterol,
    this.bloodLipidHdl,
    this.bloodLipidLdl,
    this.bloodLipidTg,
    this.bloodCbcPlcrl, //1
    this.bloodCbcPlccl,
    this.bloodCbcPct,
    this.bloodCbcMchc,
    this.bloodCbcPdw,
    this.bloodCbcMpv,
    this.bloodCbcWbs,
    this.bloodCbcHgbl,
    this.bloodCbcHctl,
    this.bloodCbcMcvl,
    this.bloodCbcRdwsdl,
    this.bloodCbcGran,
    this.bloodCbcGranL,
    this.bloodCbcLymph,
    this.bloodCbcLymphH, // 15
    this.bloodCbcMchl,
    this.bloodCbcMid,
    this.bloodCbcMidPercent,
    this.bloodCbcPlth,
    this.bloodCbcRbc,
    this.bloodCbcRdwcv,
    this.urinePhysicalExAspect,
    this.urinePhysicalExColour,
    this.urineChemicalExBlood,
    this.urineChemicalExUrobilingen,
    this.urineChemicalExBilirubin,
    this.urineChemicalExProtien,
    this.urineChemicalExNitrite,
    this.urineChemicalExPH,
    this.urineChemicalExGlucose,
    this.urineChemicalExKetone,
    this.urineChemicalExHemoglobin,
    this.urineChemicalExLeukocyte,
    this.urineChemicalExSpecificgravity,
    this.urineChemicalExDensity,
    this.urineMicroscopicExAmorphous,
    this.urineMicroscopicExCalciumOxalate,
    this.urineMicroscopicExEpithelialcells,
    this.urineMicroscopicExPuscells,
    this.urineMicroscopicExRBCs,
    this.urineMicroscopicExTriplephosphate,
    this.urineMicroscopicExUricacid,
    this.urineAlbumineAlbuminaCreateRatio,
    this.urineAlbumineAlbumine,
    this.urineAlbumineCreat,
    this.urineAbnormalFindings,
    this.urineAdittionalComments,
    this.urineCheckIn = false,
    this.bloodCheckIn = false,
    this.stoolCheckIn = false,
    this.orthodiagnoses,
    this.orthoTreatment,
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
    this.Cardiodiagnoses,
    this.CardioTreatment,
    this.Dentaldiagnoses,
    this.DentalTreatment,
    this.Dermadiagnoses,
    this.DermaTreatment,
    this.entdiagnoses,
    this.entTreatment,
    this.gyndiagnoses,
    this.gynTreatment,
    this.imdiagnoses,
    this.imTreatment,
    this.ophthadiagnoses,
    this.ophthaTreatment,
    this.peddiagnoses,
    this.pedTreatment,
    this.surgerydiagnoses,
    this.surgeryTreatment,
    this.StoollabHpylori,
    this.Stoollabfecal,
    this.StoollabEhistoliticatrophozite,
    this.StoollabGiardiatrophozozite,
    this.StoollabStrongyloideslarvae,
    this.StoollabGiardia,
    this.StoollabEcoli,
    this.StoollabHookworm,
    this.StoollabTtrichuria,
    this.StoollabAscaris,
    this.Stoollabtinea,
    this.Stoollabhnana,
    this.Stoollabsch,
    this.Stoollabfasciola,
    this.consisteny,
    this.Rbcscontroller,
    this.StoolColor,
    this.Stoollabblood,
    this.StoollabEhistolitica,
    this.StoollabEntrobious,
    this.Stoollabmucus,
    this.StoolOdour,
    this.StoolWorm,
    this.wbcscontroller,
  });

  // اشطر كتكوت في الكتاكيت كلهم ana matettt hn3ml eh tany

  PatientAdultModel.fromFireStore(Map<String, dynamic> json)
      : this(
          bloodotherAlfafetoprotein: json["bloodotherAlfafetoprotein"],
          bloodotherAntiD: json["bloodotherAntiD"],
          bloodotherBHCG: json["bloodotherBHCG"],
          bloodotherHBV: json["bloodotherHBV"],
          bloodotherHCV: json["bloodotherHCV"],
          bloodotherPSA: json["bloodotherPSA"],
          bloodotherRheumatoidfactor: json["bloodotherRheumatoidfactor"],
          bloodglucoseFasting: json["bloodglucoseFasting"],
          bloodglucoseHbA1C: json["bloodglucoseHbA1C"],
          bloodglucosePostPrandial: json["bloodglucosePostPrandial"],
          bloodglucoseRandom: json["bloodglucoseRandom"],
          bloodionsCa: json["bloodionsCa"],
          bloodionsK: json["bloodionsK"],
          bloodionsNa: json["bloodionsNa"],
          bloodkidneyCreatinine: json["bloodkidneyCreatinine"],
          bloodkidneyurea: json["bloodkidneyurea"],
          bloodkidneyUricacid: json["bloodkidneyUricacid"],
          bloodotherASOT: json["bloodotherASOT"],
          bloodotherCRP: json["bloodotherCRP"],
          cbcliverAlbumin: json["cbcliverAlbumin"],
          cbcliverAlkalinephosphatase: json["cbcliverAlkalinephosphatase"],
          cbcliverALTGPT: json["cbcliverALTGPT"],
          cbcliverAST: json["cbcliverAST"],
          cbcliverDirectbilirubin: json["cbcliverDirectbilirubin"],
          cbcliverTotalbilirubin: json["cbcliverTotalbilirubin"],
          cbcptINR: json["cbcptINR"],
          cbcptpercentage: json["cbcptpercentage"],
          cbcptTime: json["cbcptTime"],
          cbcPttresult: json["cbcPttresult"],

          bloodEsr: json["bloodEsr"],
          bloodLipidCholesterol: json["bloodLipidCholesterol"],
          bloodLipidHdl: json["bloodLipidHdl"],
          bloodLipidLdl: json["bloodLipidLdl"],
          bloodLipidTg: json["bloodLipidTg"],

          bloodCbcGran: json["bloodCbcGran"],
          bloodCbcGranL: json["bloodCbcGranL"],
          bloodCbcHctl: json["bloodCbcHctl"],
          bloodCbcHgbl: json["bloodCbcHgbl"],
          bloodCbcLymph: json["bloodCbcLymph"],
          bloodCbcLymphH: json["bloodCbcLymphH"],
          bloodCbcMchc: json["bloodCbcMchc"],
          bloodCbcMchl: json["bloodCbcMchl"],
          bloodCbcMcvl: json["bloodCbcMcvl"],
          bloodCbcMid: json["bloodCbcMid"],
          bloodCbcMidPercent: json["bloodCbcMidPercent"],
          bloodCbcMpv: json["bloodCbcMpv"],
          bloodCbcPct: json["bloodCbcPct"],
          bloodCbcPdw: json["bloodCbcPdw"],
          bloodCbcPlccl: json["bloodCbcPlccl"],
          bloodCbcPlcrl: json["bloodCbcPlcrl"],
          bloodCbcPlth: json["bloodCbcPlth"],
          bloodCbcRbc: json["bloodCbcRbc"],
          bloodCbcRdwcv: json["bloodCbcRdwcv"],
          bloodCbcRdwsdl: json["bloodCbcRdwsdl"],
          bloodCbcWbs: json["bloodCbcWbs"],

          urineAbnormalFindings: json["urineAbnormalFindings"] == null
              ? null
              : List<String>.from(json["urineAbnormalFindings"]),
          urinePhysicalExColour: json["urinePhysicalExColour"],
          urinePhysicalExAspect: json["urinePhysicalExAspect"],
          urineMicroscopicExUricacid: json["urineMicroscopicExUricacid"],
          urineMicroscopicExTriplephosphate:
              json["urineMicroscopicExTriplephosphate"],
          urineMicroscopicExRBCs: json["urineMicroscopicExRBCs"],
          urineMicroscopicExPuscells: json["urineMicroscopicExPuscells"],
          urineMicroscopicExEpithelialcells:
              json["urineMicroscopicExEpithelialcells"],
          urineMicroscopicExCalciumOxalate:
              json["urineMicroscopicExCalciumOxalate"],
          urineMicroscopicExAmorphous: json["urineMicroscopicExAmorphous"],
          urineChemicalExUrobilingen: json["urineChemicalExUrobilingen"],
          urineChemicalExSpecificgravity:
              json["urineChemicalExSpecificgravity"],
          urineChemicalExProtien: json["urineChemicalExProtien"],
          urineChemicalExPH: json["urineChemicalExPH"],
          urineChemicalExNitrite: json["urineChemicalExNitrite"],
          urineChemicalExLeukocyte: json["urineChemicalExLeukocyte"],
          urineChemicalExKetone: json["urineChemicalExKetone"],
          urineChemicalExHemoglobin: json["urineChemicalExHemoglobin"],
          urineChemicalExGlucose: json["urineChemicalExGlucose"],
          urineChemicalExDensity: json["urineChemicalExDensity"],
          urineChemicalExBlood: json["urineChemicalExBlood"],
          urineChemicalExBilirubin: json["urineChemicalExBilirubin"],
          urineAlbumineCreat: json["urineAlbumineCreat"],
          urineAlbumineAlbumine: json["urineAlbumineAlbumine"],
          urineAlbumineAlbuminaCreateRatio:
              json["urineAlbumineAlbuminaCreateRatio"],
          urineAdittionalComments: json["urineAdittionalComments"],
          bloodCheckIn: json["bloodCheckIn"],
          stoolCheckIn: json["stoolCheckIn"],
          urineCheckIn: json["urineCheckIn"],
          // ***************
          familyHistory: json["familyHistory"] == null
              ? null
              : List<String>.from(json["familyHistory"]),
          drugsOfChronicDiseases: json["drugsOfChronicDiseases"] == null
              ? null
              : List<String>.from(json["drugsOfChronicDiseases"]),
          complexionGenerallExamination:
              json["complexionGenerallExamination"] == null
                  ? null
                  : List<String>.from(json["complexionGenerallExamination"]),
          ReferralOfConvoyClinics: json["ReferralOfConvoyClinics"] == null
              ? null
              : List<String>.from(json["ReferralOfConvoyClinics"]),
          medicalPastHistory: json["medicalPastHistory"] == null
              ? null
              : List<String>.from(json["medicalPastHistory"]),
          screening: json["screening"] == null
              ? null
              : List<String>.from(json["screening"]),
          orthodiagnoses: json["orthodiagnoses"] == null
              ? null
              : List<String>.from(json["orthodiagnoses"]),
          orthoTreatment: json["orthoTreatment"] == null
              ? null
              : List<String>.from(json["orthoTreatment"]),
          Cardiodiagnoses: json["Cardiodiagnoses"] == null
              ? null
              : List<String>.from(json["Cardiodiagnoses"]),
          // meya meya
          CardioTreatment: json["CardioTreatment"] == null
              ? null
              : List<String>.from(json["CardioTreatment"]),
          Dentaldiagnoses: json["Dentaldiagnoses"] == null
              ? null
              : List<String>.from(json["Dentaldiagnoses"]),
          DentalTreatment: json["DentalTreatment"] == null
              ? null
              : List<String>.from(json["DentalTreatment"]),
          Dermadiagnoses: json["Dermadiagnoses"] == null
              ? null
              : List<String>.from(json["Dermadiagnoses"]),
          DermaTreatment: json["DermaTreatment"] == null
              ? null
              : List<String>.from(json["DermaTreatment"]),
          entdiagnoses: json["entdiagnoses"] == null
              ? null
              : List<String>.from(json["entdiagnoses"]),
          entTreatment: json["entTreatment"] == null
              ? null
              : List<String>.from(json["entTreatment"]),
          gyndiagnoses: json["gyndiagnoses"] == null
              ? null
              : List<String>.from(json["gyndiagnoses"]),
          gynTreatment: json["gynTreatment"] == null
              ? null
              : List<String>.from(json["gynTreatment"]),
          imdiagnoses: json["imdiagnoses"] == null
              ? null
              : List<String>.from(json["imdiagnoses"]),
          imTreatment: json["imTreatment"] == null
              ? null
              : List<String>.from(json["imTreatment"]),
          ophthadiagnoses: json["ophthadiagnoses"] == null
              ? null
              : List<String>.from(json["ophthadiagnoses"]),
          ophthaTreatment: json["ophthaTreatment"] == null
              ? null
              : List<String>.from(json["ophthaTreatment"]),
          peddiagnoses: json["peddiagnoses"] == null
              ? null
              : List<String>.from(json["peddiagnoses"]),
          pedTreatment: json["pedTreatment"] == null
              ? null
              : List<String>.from(json["pedTreatment"]),
          surgerydiagnoses: json["surgerydiagnoses"] == null
              ? null
              : List<String>.from(json["surgerydiagnoses"]),
          surgeryTreatment: json["surgeryTreatment"] == null
              ? null
              : List<String>.from(json["surgeryTreatment"]),
          // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^6

          goHome: json["goHome"],
          communityDevelopment: json["communityDevelopment"],
          // screening: json["screening"],
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
          complaintsList: json["complaintsList"] == null
              ? null
              : List<ComplaintsModel>.from(json["complaintsList"]
                  .map((e) => ComplaintsModel.fromFire(e))),
          /////////////////////////////////////
          //medicalPastHistory: json["medicalPastHistory"] ,
          otherMedicalPastHistory: json["otherMedicalPastHistory"],
          allergyPastHistory: json["allergyPastHistory"],
          specifyAllergyPastHistory: json["specifyAllergyPastHistory"],
          bloodTransfusionPastHistory: json["bloodTransfusionPastHistory"],
          durationBloodTransfusionPastHistory:
              json["durationBloodTransfusionPastHistory"],
          surgicalPastHistory: json["surgicalPastHistory"],
          operationSurgicalPastHistory: json["operationSurgicalPastHistory"],
          othersDrugsOfChronicDiseases: json["othersDrugsOfChronicDiseases"],
          othersFamilyHistory: json["othersFamilyHistory"],
          // vitalDataGeneralExamination: json["vitalDataGeneralExamination"],
          BP1Vital: json["BP1Vital"],
          BP2Vital: json["BP2Vital"],
          mmHg1Vital: json["mmHg1Vital"],
          mmHg2Vital: json["mmHg2Vital"],
          hrVital: json["hrVital"],
          tempVital: json["tempVital"],
          randomBloodSugarVital: json["randomBloodSugarVital"],
          o2Saturationvital: json["o2Saturationvital"],
          //ReferralOfConvoyClinics: json["ReferralOfConvoyClinics"],
          followUp: json["followUp"],
          consisteny: json["consisteny"],
          Stoollabblood: json["Stoollabblood"],
          Stoollabmucus: json["Stoollabmucus"],
          Stoollabfasciola: json["Stoollabfasciola"],
          Stoollabsch: json["Stoollabsch"],
          Stoollabhnana: json["Stoollabhnana"],
          Stoollabtinea: json["Stoollabtinea"],
          StoollabAscaris: json["StoollabAscaris"],
          StoollabTtrichuria: json["StoollabTtrichuria"],
          StoollabHookworm: json["StoollabHookworm"],
          StoollabHpylori: json["StoollabHpylori"],
          Stoollabfecal: json["Stoollabfecal"],
          StoollabEntrobious: json["StoollabEntrobious"],
          StoollabEcoli: json["StoollabEcoli"],
          StoollabEhistolitica: json["StoollabEhistolitica"],
          StoollabGiardia: json["StoollabGiardia"],
          StoollabStrongyloideslarvae: json["StoollabStrongyloideslarvae"],
          StoollabGiardiatrophozozite: json["StoollabGiardiatrophozozite"],
          StoollabEhistoliticatrophozite:
              json["StoollabEhistoliticatrophozite"],
          StoolColor: json["StoolColor"],
          StoolWorm: json["StoolWorm"],
          StoolOdour: json["StoolOdour"],
          wbcscontroller: json["wbcscontroller"],
          Rbcscontroller: json["Rbcscontroller"],
        );

  Map<String, dynamic> toFireStore() {
    return {
      "bloodotherBHCG": bloodotherBHCG,
      "bloodotherHBV": bloodotherHBV,
      "bloodotherHCV": bloodotherHCV,
      "bloodotherAlfafetoprotein": bloodotherAlfafetoprotein,
      "bloodotherPSA": bloodotherPSA,
      "bloodotherAntiD": bloodotherAntiD,
      "bloodotherRheumatoidfactor": bloodotherRheumatoidfactor,

      "bloodotherCRP": bloodotherCRP,
      "bloodotherASOT": bloodotherASOT,
      "bloodkidneyCreatinine": bloodkidneyCreatinine,
      "bloodkidneyurea": bloodkidneyurea,
      "bloodkidneyUricacid": bloodkidneyUricacid,
      "bloodionsK": bloodionsK,
      "bloodionsCa": bloodionsCa,
      "bloodionsNa": bloodionsNa,
      "bloodglucoseRandom": bloodglucoseRandom,
      "bloodglucoseFasting": bloodglucoseFasting,
      "bloodglucoseHbA1C": bloodglucoseHbA1C,
      "bloodglucosePostPrandial": bloodglucosePostPrandial,
      "cbcliverAlbumin": cbcliverAlbumin,
      "cbcliverAlkalinephosphatase": cbcliverAlkalinephosphatase,
      "cbcliverALTGPT": cbcliverALTGPT,
      "cbcliverAST": cbcliverAST,
      "cbcliverDirectbilirubin": cbcliverDirectbilirubin,
      "cbcliverTotalbilirubin": cbcliverTotalbilirubin,
      "cbcptINR": cbcptINR,
      "cbcptpercentage": cbcptpercentage,
      "cbcptTime": cbcptTime,
      "cbcPttresult": cbcPttresult,

      "bloodEsr": bloodEsr,
      "bloodLipidCholesterol": bloodLipidCholesterol,
      "bloodLipidHdl": bloodLipidHdl,
      "bloodLipidLdl": bloodLipidLdl,
      "bloodLipidTg": bloodLipidTg,
      "bloodCbcGran": bloodCbcGran,
      "bloodCbcGranL": bloodCbcGranL,
      "bloodCbcHctl": bloodCbcHctl,
      "bloodCbcHgbl": bloodCbcHgbl,
      "bloodCbcLymph": bloodCbcLymph,
      "bloodCbcLymphH": bloodCbcLymphH,
      "bloodCbcMchc": bloodCbcMchc,
      "bloodCbcMchl": bloodCbcMchl,
      "bloodCbcMcvl": bloodCbcMcvl,
      "bloodCbcMid": bloodCbcMid,
      "bloodCbcMidPercent": bloodCbcMidPercent,
      "bloodCbcMpv": bloodCbcMpv,
      "bloodCbcPct": bloodCbcPct,
      "bloodCbcPdw": bloodCbcPdw,
      "bloodCbcPlccl": bloodCbcPlccl,
      "bloodCbcPlcrl": bloodCbcPlcrl,
      "bloodCbcPlth": bloodCbcPlth,
      "bloodCbcRbc": bloodCbcRbc,
      "bloodCbcRdwcv": bloodCbcRdwcv,
      "bloodCbcRdwsdl": bloodCbcRdwsdl,
      "bloodCbcWbs": bloodCbcWbs,
      "urineAbnormalFindings": urineAbnormalFindings,
      "urinePhysicalExColour": urinePhysicalExColour,
      "urinePhysicalExAspect": urinePhysicalExAspect,
      "urineMicroscopicExUricacid": urineMicroscopicExUricacid,
      "urineMicroscopicExTriplephosphate": urineMicroscopicExTriplephosphate,
      "urineMicroscopicExRBCs": urineMicroscopicExRBCs,
      "urineMicroscopicExPuscells": urineMicroscopicExPuscells,
      "urineMicroscopicExEpithelialcells": urineMicroscopicExEpithelialcells,
      "urineMicroscopicExCalciumOxalate": urineMicroscopicExCalciumOxalate,
      "urineMicroscopicExAmorphous": urineMicroscopicExAmorphous,
      "urineChemicalExUrobilingen": urineChemicalExUrobilingen,
      "urineChemicalExSpecificgravity": urineChemicalExSpecificgravity,
      "urineChemicalExProtien": urineChemicalExProtien,
      "urineChemicalExPH": urineChemicalExPH,
      "urineChemicalExNitrite": urineChemicalExNitrite,
      "urineChemicalExLeukocyte": urineChemicalExLeukocyte,
      "urineChemicalExKetone": urineChemicalExKetone,
      "urineChemicalExHemoglobin": urineChemicalExHemoglobin,
      "urineChemicalExGlucose": urineChemicalExGlucose,
      "urineChemicalExDensity": urineChemicalExDensity,
      "urineChemicalExBlood": urineChemicalExBlood,
      "urineChemicalExBilirubin": urineChemicalExBilirubin,
      "urineAlbumineCreat": urineAlbumineCreat,
      "urineAlbumineAlbumine": urineAlbumineAlbumine,
      "urineAlbumineAlbuminaCreateRatio": urineAlbumineAlbuminaCreateRatio,
      "urineAdittionalComments": urineAdittionalComments,
      "bloodCheckIn": bloodCheckIn,
      "stoolCheckIn": stoolCheckIn,
      "urineCheckIn": urineCheckIn,
      "urineCheckIn": urineCheckIn,
      "bloodCheckIn": bloodCheckIn,
      "stoolCheckIn": stoolCheckIn,
      "orthoTreatment": orthoTreatment,
      "orthodiagnoses": orthodiagnoses,
      "goHome": goHome,
      "communityDevelopment": communityDevelopment,
      "screening": screening,
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
      "BP1Vital": BP1Vital,
      "BP2Vital": BP2Vital,
      "mmHg1Vital": mmHg1Vital,
      "mmHg2Vital": mmHg2Vital,
      "hrVital": hrVital,
      "tempVital": tempVital,
      "randomBloodSugarVital": randomBloodSugarVital,

      "complexionGenerallExamination": complexionGenerallExamination,
      "o2Saturationvital": o2Saturationvital,
      "ReferralOfConvoyClinics": ReferralOfConvoyClinics,
      "followUp": followUp,

      "Cardiodiagnoses": Cardiodiagnoses,
      "CardioTreatment": CardioTreatment,
      "Dentaldiagnoses": Dentaldiagnoses,
      "DentalTreatment": DentalTreatment,
      "Dermadiagnoses": Dermadiagnoses,
      "DermaTreatment": DermaTreatment,
      "entdiagnoses": entdiagnoses,
      "entTreatment": entTreatment,
      "gyndiagnoses": gyndiagnoses,
      "gynTreatment": gynTreatment,
      "imdiagnoses": imdiagnoses,
      "imTreatment": imTreatment,
      "ophthadiagnoses": ophthadiagnoses,
      "ophthaTreatment": ophthaTreatment,
      "peddiagnoses": peddiagnoses,
      "pedTreatment": pedTreatment,
      "surgerydiagnoses": surgerydiagnoses,
      "surgeryTreatment": surgeryTreatment,

      "StoollabHpylori": StoollabHpylori,
      "Stoollabfecal": Stoollabfecal,
      "StoollabEhistoliticatrophozite": StoollabEhistoliticatrophozite,
      "StoollabGiardiatrophozozite": StoollabGiardiatrophozozite,
      "StoollabStrongyloideslarvae": StoollabStrongyloideslarvae,
      "StoollabGiardia": StoollabGiardia,
      "StoollabEcoli": StoollabEcoli,
      "StoollabHookworm": StoollabHookworm,
      "StoollabTtrichuria": StoollabTtrichuria,
      "StoollabAscaris": StoollabAscaris,
      "Stoollabtinea": Stoollabtinea,
      "Stoollabhnana": Stoollabhnana,
      "Stoollabsch": Stoollabsch,
      "Stoollabfasciola": Stoollabfasciola,
      "consisteny": consisteny,
      "Rbcscontroller": Rbcscontroller,
      "StoolColor": StoolColor,
      "Stoollabblood": Stoollabblood,
      "StoollabEhistolitica": StoollabEhistolitica,
      "StoollabEntrobious": StoollabEntrobious,
      "Stoollabmucus": Stoollabmucus,
      "StoolOdour": StoolOdour,
      "StoolWorm": StoolWorm,
      "wbcscontroller": wbcscontroller,
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
