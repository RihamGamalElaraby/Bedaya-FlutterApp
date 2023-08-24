import 'package:bedaya/DateModels/pharmacy_model.dart';
import 'package:bedaya/screens/Labs/urine%20lab/UrineLab_screen.dart';

class PatientAdultModel {
  //folow up
  List<String>? IMfollowUPNEEDcheckup;
  List<String>? IMfollowUPNEEDdrugs;
  List<String>? IMfollowUPNEEDinvestigations;
  List<String>? pedfollowneedcheckup;
  List<String>? pedfollowneedinvestigations;
  List<String>? pedfollowneedoperations;
  List<String>? SurgeryFollowupNeeddesicion;
  List<String>? SurgeryFollowupdontNeeddesicion;
  List<String>? OphthalmologyFollowupNeeddesicion;
  List<String>? OphthalmologyFollowupdontNeeddesicion;
  List<String>? GynFollowupNeedinvestigations;
  List<String>? ENTFollowupNeedinvestigations;
  List<String>? ENTFollowupNeedoperations;
  String? OphthalmologyFollowneedglasses;

  String? OphthalmologyFollowneedivestigations;

  String? FollowerName;

  // adult data
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
  String? Menstruation; // done
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
  double? BP1Vital; // done
  double? mmHg1Vital; // done
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
  //adult end >>>>>>>>>>>>>>>>>>>>>52
  String? goHomeLabs;

  String? urlGynWomen;
  String? urlImSheet1;
  String? urlImSheet2;
  String? urlRickets;
  String? urlOpthalmia;
  String? urlBirthCertficate;
  String? urlSurgerySonar;
  String? urlSurgeryTicket1;
  String? urlSurgeryTicket2;

  String? urlUpperImage;
  String? urlLowerImage;
  String? urlTransImage;
  List<PharmacyModel>? drugsChecked;
  List<PharmacyModel>? drugsUnChecked;

  String? reportFollowUp;

  String? reportUrine;
  String? reportBlood;
  String? reportStool;
  String? reportPharma;

  String? reportCardiodiagnoses;
  String? reportDentaldiagnoses;
  String? reportDermadiagnoses;
  String? reportentdiagnoses;
  String? reportgyndiagnoses;
  String? reportimdiagnoses;
  String? reportophthadiagnoses;
  String? reportorthodiagnoses;
  String? reportpeddiagnoses;
  String? reportsurgerydiagnoses;

  //clinics start
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
  List<String>? orthodiagnoses;
  List<String>? orthoTreatment;
  List<String>? peddiagnoses;
  List<String>? pedTreatment;
  List<String>? surgerydiagnoses;
  List<String>? surgeryTreatment;

  //clinic end
  // checkin
  bool? urineCheckIn;
  bool? bloodCheckIn;
  bool? stoolCheckIn;

//
  // urine
  String? urineCasts;
  String? urineEggs;
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

  //String? urineChemicalExHemoglobin;
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

//stool
  String? consisteny;
  String? Stoollabblood;
  String? Stoollabmucus;
  String? Stoollabfasciola;
  String? Stoollabsch;
  String? Stoollabhnana;
  String? Stoollabtinea;
  String? StoollabAscaris;
  String? StoollabTtrichuria;
  String? Stoollabblastosyct;
  String? StoollabHpylori;
  String? Stoollabfecal;
  String? StoollabHookworm;
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

  //blood
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
    this.ENTFollowupNeedinvestigations,
    this.ENTFollowupNeedoperations,
    this.IMfollowUPNEEDcheckup,
    this.IMfollowUPNEEDdrugs,
    this.IMfollowUPNEEDinvestigations,
    this.pedfollowneedcheckup,
    this.pedfollowneedinvestigations,
    this.pedfollowneedoperations,
    this.SurgeryFollowupdontNeeddesicion,
    this.SurgeryFollowupNeeddesicion,
    this.OphthalmologyFollowneedglasses,
    this.OphthalmologyFollowneedivestigations,
    this.OphthalmologyFollowupNeeddesicion,
    this.OphthalmologyFollowupdontNeeddesicion,
    this.GynFollowupNeedinvestigations,
    this.FollowerName,
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
    this.Menstruation,
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
    this.BP1Vital,
    this.mmHg1Vital,
    this.hrVital,
    this.tempVital,
    this.randomBloodSugarVital,
    this.complexionGenerallExamination,
    this.o2Saturationvital,
    this.ReferralOfConvoyClinics,
    this.followUp,
    //personal data end
    this.goHomeLabs,
    this.reportFollowUp,
    this.reportPharma,
    this.reportBlood,
    this.reportStool,
    this.reportUrine,

    this.reportCardiodiagnoses,
    this.reportDentaldiagnoses,
    this.reportDermadiagnoses,
    this.reportentdiagnoses,
    this.reportgyndiagnoses,
    this.reportimdiagnoses,
    this.reportophthadiagnoses,
    this.reportorthodiagnoses,
    this.reportpeddiagnoses,
    this.reportsurgerydiagnoses,

    this.urlSurgeryTicket2,
    this.urlSurgeryTicket1,
    this.urlSurgerySonar,
    this.urlBirthCertficate,
    this.urlOpthalmia,
    this.urlRickets,
    this.urlImSheet2,
    this.urlImSheet1,
    this.urlGynWomen,


    this.urlTransImage,
    this.urlLowerImage,
    this.urlUpperImage,
    this.drugsUnChecked,
    this.drugsChecked,
    //blood start
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

    //blood
    this.urineEggs,
    this.urineCasts,
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
    // this.urineChemicalExHemoglobin,
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
    //urine end
    this.urineCheckIn = false,
    this.bloodCheckIn = false,
    this.stoolCheckIn = false,
    //check in end

    // clinic  start
    this.orthodiagnoses,
    this.orthoTreatment,
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
    // clinic end
    //stool start
    this.StoollabHpylori,
    this.Stoollabfecal,
    this.StoollabEhistoliticatrophozite,
    this.StoollabGiardiatrophozozite,
    this.StoollabStrongyloideslarvae,
    this.StoollabGiardia,
    this.StoollabEcoli,
    this.StoollabHookworm,
    this.Stoollabblastosyct,
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
    //stool end
  });

  // اشطر كتكوت في الكتاكيت كلهم ana matettt hn3ml eh tany

  PatientAdultModel.fromFireStore(Map<String, dynamic> json)
      : this(
    reportFollowUp: json["reportFollowUp"],
          reportsurgerydiagnoses: json["reportsurgerydiagnoses"],
          reportCardiodiagnoses: json["reportCardiodiagnoses"],
          reportDentaldiagnoses: json["reportDentaldiagnoses"],
          reportDermadiagnoses: json["reportDermadiagnoses"],
          reportentdiagnoses: json["reportentdiagnoses"],
          reportgyndiagnoses: json["reportgyndiagnoses"],
          reportimdiagnoses: json["reportimdiagnoses"],
          reportophthadiagnoses: json["reportophthadiagnoses"],
          reportorthodiagnoses: json["reportorthodiagnoses"],
          reportpeddiagnoses: json["reportpeddiagnoses"],

          reportUrine: json["reportUrine"],
          reportBlood: json["reportBlood"],
          reportPharma: json["reportPharma"],
          reportStool: json["reportStool"],
          //
          ENTFollowupNeedinvestigations:
              json["ENTFollowupNeedinvestigations"] == null
                  ? null
                  : List<String>.from(json["ENTFollowupNeedinvestigations"]),
          ENTFollowupNeedoperations: json["ENTFollowupNeedoperations"] == null
              ? null
              : List<String>.from(json["ENTFollowupNeedoperations"]),
          IMfollowUPNEEDcheckup: json["IMfollowUPNEEDcheckup"] == null
              ? null
              : List<String>.from(json["IMfollowUPNEEDcheckup"]),
          IMfollowUPNEEDdrugs: json["IMfollowUPNEEDdrugs"] == null
              ? null
              : List<String>.from(json["IMfollowUPNEEDdrugs"]),
          IMfollowUPNEEDinvestigations:
              json["IMfollowUPNEEDinvestigations"] == null
                  ? null
                  : List<String>.from(json["IMfollowUPNEEDinvestigations"]),
          pedfollowneedcheckup: json["pedfollowneedcheckup"] == null
              ? null
              : List<String>.from(json["pedfollowneedcheckup"]),
          pedfollowneedinvestigations:
              json["pedfollowneedinvestigations"] == null
                  ? null
                  : List<String>.from(json["pedfollowneedinvestigations"]),
          pedfollowneedoperations: json["pedfollowneedoperations"] == null
              ? null
              : List<String>.from(json["pedfollowneedoperations"]),
          SurgeryFollowupdontNeeddesicion:
              json["SurgeryFollowupdontNeeddesicion"] == null
                  ? null
                  : List<String>.from(json["SurgeryFollowupdontNeeddesicion"]),
          SurgeryFollowupNeeddesicion:
              json["SurgeryFollowupNeeddesicion"] == null
                  ? null
                  : List<String>.from(json["SurgeryFollowupNeeddesicion"]),
          OphthalmologyFollowupNeeddesicion:
              json["OphthalmologyFollowupNeeddesicion"] == null
                  ? null
                  : List<String>.from(
                      json["OphthalmologyFollowupNeeddesicion"]),
          OphthalmologyFollowupdontNeeddesicion:
              json["OphthalmologyFollowupdontNeeddesicion"] == null
                  ? null
                  : List<String>.from(
                      json["OphthalmologyFollowupdontNeeddesicion"]),
          GynFollowupNeedinvestigations:
              json["GynFollowupNeedinvestigations"] == null
                  ? null
                  : List<String>.from(json["GynFollowupNeedinvestigations"]),
          OphthalmologyFollowneedglasses:
              json["OphthalmologyFollowneedglasses"],
          OphthalmologyFollowneedivestigations:
              json["OphthalmologyFollowneedivestigations"],
          FollowerName: json["FollowerName"],
          goHomeLabs: json["goHomeLabs"],

          //
          BP1Vital: json["BP1Vital"],
          mmHg1Vital: json["mmHg1Vital"],
          hrVital: json["hrVital"],
          tempVital: json["tempVital"],
          randomBloodSugarVital: json["randomBloodSugarVital"],
          o2Saturationvital: json["o2Saturationvital"],
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
          goHome: json["goHome"],
          communityDevelopment: json["communityDevelopment"],
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
          Menstruation: json["Menstruation"],
          gravidaNumber: json["gravidaNumber"],
          abortionNumber: json["abortionNumber"],
          contracebtion: json["contracebtion"],
          methodContracebtion: json["methodContracebtion"],
          othercontracebtion: json["othercontracebtion"],
          complaintsList: json["complaintsList"] == null
              ? null
              : List<ComplaintsModel>.from(json["complaintsList"]
                  .map((e) => ComplaintsModel.fromFire(e))),
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
          followUp: json["followUp"],
          // drugs
          urlBirthCertficate: json["urlBirthCertficate"],
          urlGynWomen: json["urlGynWomen"],
          urlImSheet1: json["urlImSheet1"],
          urlImSheet2: json["urlImSheet2"],
          urlOpthalmia: json["urlOpthalmia"],
          urlRickets: json["urlRickets"],
          urlSurgerySonar: json["urlSurgerySonar"],
          urlSurgeryTicket1: json["urlSurgeryTicket1"],
          urlSurgeryTicket2: json["urlSurgeryTicket2"],

          urlLowerImage: json["urlLowerImage"],
          urlTransImage: json["urlTransImage"],
          urlUpperImage: json["urlUpperImage"],

          drugsChecked: json["drugsChecked"] == null
              ? null
              : List<PharmacyModel>.from(json["drugsChecked"]
                  .map((e) => PharmacyModel.fromFirebase(e))),

          drugsUnChecked: json["drugsUnChecked"] == null
              ? null
              : List<PharmacyModel>.from(json["drugsUnChecked"]
                  .map((e) => PharmacyModel.fromFirebase(e))),

          //blood start
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
          //blood end
          //urine start
          urineCasts: json["urineCasts"],
          urineEggs: json["urineEggs"],
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
          //urineChemicalExHemoglobin: json["urineChemicalExHemoglobin"],
          urineChemicalExGlucose: json["urineChemicalExGlucose"],
          urineChemicalExDensity: json["urineChemicalExDensity"],
          urineChemicalExBlood: json["urineChemicalExBlood"],
          urineChemicalExBilirubin: json["urineChemicalExBilirubin"],
          urineAlbumineCreat: json["urineAlbumineCreat"],
          urineAlbumineAlbumine: json["urineAlbumineAlbumine"],
          urineAlbumineAlbuminaCreateRatio:
              json["urineAlbumineAlbuminaCreateRatio"],
          urineAdittionalComments: json["urineAdittionalComments"],
          //urine end
          // screnning start
          bloodCheckIn: json["bloodCheckIn"],
          stoolCheckIn: json["stoolCheckIn"],
          urineCheckIn: json["urineCheckIn"],
          //screnning end
          // ***************
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
          consisteny: json["consisteny"],
          Stoollabblood: json["Stoollabblood"],
          Stoollabmucus: json["Stoollabmucus"],
          Stoollabfasciola: json["Stoollabfasciola"],
          Stoollabsch: json["Stoollabsch"],
          Stoollabhnana: json["Stoollabhnana"],
          Stoollabtinea: json["Stoollabtinea"],
          StoollabAscaris: json["StoollabAscaris"],
          Stoollabblastosyct: json["Stoollabblastosyct"],
          StoollabTtrichuria: json["StoolabTtrichuria"],
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
      "goHomeLabs":goHomeLabs,
      "reportFollowUp":reportFollowUp,
      "reportStool": reportStool,
      "reportPharma": reportPharma,
      "reportBlood": reportBlood,
      "reportUrine": reportUrine,

      "reportpeddiagnoses": reportpeddiagnoses,
      "reportorthodiagnoses": reportorthodiagnoses,
      "reportophthadiagnoses": reportophthadiagnoses,
      "reportimdiagnoses": reportimdiagnoses,
      "reportgyndiagnoses": reportgyndiagnoses,
      "reportentdiagnoses": reportentdiagnoses,
      "reportDermadiagnoses": reportDermadiagnoses,
      "reportDentaldiagnoses": reportDentaldiagnoses,
      "reportCardiodiagnoses": reportCardiodiagnoses,
      "reportsurgerydiagnoses": reportsurgerydiagnoses,

      "ENTFollowupNeedinvestigations": ENTFollowupNeedinvestigations,
      "ENTFollowupNeedoperations": ENTFollowupNeedoperations,
      "IMfollowUPNEEDcheckup": IMfollowUPNEEDcheckup,
      "IMfollowUPNEEDdrugs": IMfollowUPNEEDdrugs,
      "IMfollowUPNEEDinvestigations": IMfollowUPNEEDinvestigations,
      "pedfollowneedcheckup": pedfollowneedcheckup,
      "pedfollowneedinvestigations": pedfollowneedinvestigations,
      "pedfollowneedoperations": pedfollowneedoperations,
      "SurgeryFollowupNeeddesicion": SurgeryFollowupNeeddesicion,
      "SurgeryFollowupdontNeeddesicion": SurgeryFollowupdontNeeddesicion,
      "OphthalmologyFollowupNeeddesicion": OphthalmologyFollowupNeeddesicion,
      "OphthalmologyFollowupdontNeeddesicion":
          OphthalmologyFollowupdontNeeddesicion,
      "GynFollowupNeedinvestigations": GynFollowupNeedinvestigations,
      "OphthalmologyFollowneedglasses": OphthalmologyFollowneedglasses,
      "OphthalmologyFollowneedivestigations":
          OphthalmologyFollowneedivestigations,
      "FollowerName": FollowerName,
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
      "Menstruation": Menstruation,
      "gravidaNumber": gravidaNumber,
      "abortionNumber": abortionNumber,
      "contracebtion": contracebtion,
      "methodContracebtion": methodContracebtion,
      "othercontracebtion": othercontracebtion,
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
      "BP1Vital": BP1Vital,
      "mmHg1Vital": mmHg1Vital,
      "hrVital": hrVital,
      "tempVital": tempVital,
      "randomBloodSugarVital": randomBloodSugarVital,

      "complexionGenerallExamination": complexionGenerallExamination,
      "o2Saturationvital": o2Saturationvital,
      "ReferralOfConvoyClinics": ReferralOfConvoyClinics,
      "followUp": followUp,

// end >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    "urlSurgeryTicket2": urlSurgeryTicket2,
      "urlSurgeryTicket1":urlSurgeryTicket1,
      "urlSurgerySonar":urlSurgerySonar,
      "urlRickets":urlRickets,
      "urlOpthalmia":urlOpthalmia,
      "urlImSheet2":urlImSheet2,
      "urlImSheet1":urlImSheet1,
      "urlGynWomen":urlGynWomen,
      "urlBirthCertficate":urlBirthCertficate,

      "urlUpperImage": urlUpperImage,
      "urlTransImage": urlTransImage,
      "urlLowerImage": urlLowerImage,

      "drugsUnChecked": drugsUnChecked?.map((v) => v.toFirebase()).toList(),
      "drugsChecked": drugsChecked?.map((v) => v.toFirebase()).toList(),

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

      "urineEggs": urineEggs,
      "urineCasts": urineCasts,
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
      //"urineChemicalExHemoglobin": urineChemicalExHemoglobin,
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
      "Stoollabblastosyct": Stoollabblastosyct,
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
