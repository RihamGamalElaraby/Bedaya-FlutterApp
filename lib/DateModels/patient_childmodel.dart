import 'package:bedaya/DateModels/pharmacy_model.dart';

class PatientChildModel {
  String? idChildPatient;
  String? chosenDay;
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
  List<ComplaintsChildModel>? complaintsList;
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

  String? placeChild;

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

  String? anthropometryWeight;
  String? anthropometryHeight;
  String? anthropometryOfc;
  String? anthropometryWeightForAge;
  String? anthropometryHeightForAge;
  String? anthropometryWeightForHeight;
  String? anthropometryDeformity;

  String? localExamChild;
  String? cardiacExamChild;
  String? chestExamChild;
  String? abdominalExamChild;
  List<String>? referralClinicsChild;
  List<String>? screeningChild;
  String? followUpChild;
  String? goHomeChild;

  List<PharmacyModel>? drugsChecked;
  List<PharmacyModel>? drugsUnChecked;

  //start clinics and labs
  String? urlUpperImage;
  String? urlLowerImage;
  String? urlTransImage;

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
  String? Stoollabblastosyct;
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

  PatientChildModel({
    this.chosenDay,
    this.placeChild,
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
    this.drugsUnChecked,
    this.drugsChecked,

    // start clinics and labs

    this.urlTransImage,
    this.urlLowerImage,
    this.urlUpperImage,
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
    //this.urineChemicalExHemoglobin,
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
    this.Stoollabblastosyct,
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
    //stool end
  });

  PatientChildModel.fromFireStore(Map<String, dynamic> json)
      : this(
          chosenDay: json["chosenDay"],
          complaintsList: json["complaintsList"] == null
              ? null
              : List<ComplaintsChildModel>.from(json["complaintsList"]
                  .map((e) => ComplaintsChildModel.fromFire(e))),
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
          placeChild: json["placeChild"],
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

          drugsChecked: json["drugsChecked"] == null
              ? null
              : List<PharmacyModel>.from(json["drugsChecked"]
                  .map((e) => PharmacyModel.fromFirebase(e))),
          drugsUnChecked: json["drugsUnChecked"] == null
              ? null
              : List<PharmacyModel>.from(json["drugsUnChecked"]
                  .map((e) => PharmacyModel.fromFirebase(e))),
          // start clinics and labs >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

          urlLowerImage: json["urlLowerImage"],
          urlTransImage: json["urlTransImage"],
          urlUpperImage: json["urlUpperImage"],

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
          StoollabTtrichuria: json["StoollabTtrichuria"],
          StoollabHookworm: json["StoollabHookworm"],
          StoollabHpylori: json["StoollabHpylori"],
          Stoollabfecal: json["Stoollabfecal"],
          StoollabEntrobious: json["StoollabEntrobious"],
          StoollabEcoli: json["StoollabEcoli"],
          StoollabEhistolitica: json["StoollabEhistolitica"],
          StoollabGiardia: json["StoollabGiardia"],
          Stoollabblastosyct: json["Stoollabblastosyct"],
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
      "chosenDay": chosenDay,
      'complaintsList': complaintsList?.map((v) => v.toFire()).toList(),
      "placeChild": placeChild,
      "goHomeChild": goHomeChild,
      "screeningChild": screeningChild,
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

      "drugsUnChecked": drugsUnChecked?.map((v) => v.toFirebase()).toList(),
      "drugsChecked": drugsChecked?.map((v) => v.toFirebase()).toList(),

      // start clinics and labs >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      "urlUpperImage": urlUpperImage,
      "urlTransImage": urlTransImage,
      "urlLowerImage": urlLowerImage,

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
      "Stoollabblastosyct": Stoollabblastosyct,
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

class ComplaintsChildModel {
  String? complaintName;
  String? complaintDescription;

  ComplaintsChildModel({this.complaintName, this.complaintDescription});

  ComplaintsChildModel.fromFire(Map<String, dynamic> json)
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
