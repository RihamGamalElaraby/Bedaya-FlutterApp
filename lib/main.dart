import 'package:bedaya/login%20and%20register/registration_screen.dart';
import 'package:bedaya/reports/chosereporttday.dart';
import 'package:bedaya/reports/reportday1.dart';
import 'package:bedaya/reports/reportday2.dart';
import 'package:bedaya/reports/reportday3.dart';
import 'package:bedaya/reports/reportday4.dart';
import 'package:bedaya/reports/reportday5.dart';
import 'package:bedaya/reports/reporttotal.dart';
import 'package:bedaya/screens/Clinics/CardiologyClinicSreen.dart';
import 'package:bedaya/screens/Clinics/ClinicScreenChose.dart';
import 'package:bedaya/screens/Clinics/DentalClinicScreen.dart';
import 'package:bedaya/screens/Clinics/DremaClinic.Dart.dart';
import 'package:bedaya/screens/Clinics/ENTclinicScreen.dart';
import 'package:bedaya/screens/Clinics/GynClinicScreen.dart';
import 'package:bedaya/screens/Clinics/IMClinicScreen.dart';
import 'package:bedaya/screens/Clinics/OphthaClinicScreen.dart';
import 'package:bedaya/screens/Clinics/OrthoClinicScreen.dart';
import 'package:bedaya/screens/Clinics/PediatricsClinicScreen.dart';
import 'package:bedaya/screens/Clinics/SurgeryClinicScreen.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab_screen.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodlabScreen2.dart';
import 'package:bedaya/screens/Labs/SelectLab.dart';
import 'package:bedaya/screens/Labs/choselabs_screen.dart';
import 'package:bedaya/screens/Labs/labcheckin.dart';
import 'package:bedaya/screens/Labs/labcheckout.dart';
import 'package:bedaya/screens/Labs/urine%20lab/UrineLab_screen.dart';
import 'package:bedaya/screens/Search%20Screen/adult_search.dart';
import 'package:bedaya/screens/Search%20Screen/children_search.dart';
import 'package:bedaya/screens/Search%20Screen/search_screen.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_checkup.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_continue.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_continue3.dart';
import 'package:bedaya/screens/adult%20checkup/adult_dash.dart';
import 'package:bedaya/screens/chat%20screens/chat_screen.dart';
import 'package:bedaya/screens/children%20checkup/Children_checkup.dart';
import 'package:bedaya/screens/children%20checkup/Children_continue.dart';
import 'package:bedaya/screens/children%20checkup/child_dash.dart';
import 'package:bedaya/screens/chose%20sup%20team%20screen/chose2_screen.dart';
import 'package:bedaya/screens/chose%20team%20screen/chose1_screen.dart';
import 'package:bedaya/screens/dashboard/dashboard.dart';
import 'package:bedaya/screens/followUp_Screen.dart';
import 'package:bedaya/screens/pharmacy/PharmacyScreen.dart';
import 'package:bedaya/screens/pharmacy/pharamcyaddtreat.dart';
import 'package:bedaya/screens/welcome%20screen/welcomescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screening/AdultScreeningNephro.dart';
import 'Screening/AdultScreeningOGTT.dart';
import 'Screening/AdultScrenningUTI.dart';
import 'Screening/ChildScreeningAnemia.dart';
import 'Screening/ChildScreeningRickets.dart';
import 'Screening/ChildScreeningparaside.dart';
import 'Screening/ChoseScreningScreen.dart';
import 'firebase_options.dart';
import 'followup/ENTFollowUpScreen.dart';
import 'followup/Followupchoseclnic.dart';
import 'followup/GynecologyFollowUpscreen.dart';
import 'followup/Imfollowupscreen.dart';
import 'followup/OphthalmologyFollowup.dart';
import 'followup/PediatricFollowupscreen.dart';
import 'followup/SurgeryFollowupScreen.dart';
import 'login and register/signin_screen.dart';
import 'screens/Clinics/familyMedicine.dart';
import 'screens/Clinics/radiologyClinic.dart';
import 'screens/Labs/Blood lab/BloodLab2_Screen.dart';
import 'screens/Labs/stool lab/stool_lab.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _auth = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bedaya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: FollowUpScreen(),
      initialRoute: _auth.currentUser != null
          ? Chose1_Screen.screenRoute
          : WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
        SignInScreen.screenRoute: (context) => SignInScreen(),
        CahtScreen.screenRoute: (context) => CahtScreen(),
        Chose1_Screen.screenRoute: (context) => Chose1_Screen(),
        Chose2_Screen.screenRoute: (context) => Chose2_Screen(),
        ChoseLabsScreen.screenRoute: (context) => ChoseLabsScreen(),
        adultCheckup.screenRoute: (context) => adultCheckup(),
        continueCheckupAdult.screenRoute: (context) => continueCheckupAdult(),
        adultCheckThird.screenRoute: (context) => adultCheckThird(),
        childrenCheckup.screenRoute: (context) => childrenCheckup(),
        bloodLabScreen.screenRoute: (context) => bloodLabScreen(),
        childrenContinue.screenRoute: (context) => childrenContinue(),
        bloodLabContinueScreen.screenRoute: (context) =>
            bloodLabContinueScreen(),
        urineLabscreen.screenRoute: (context) => urineLabscreen(),
        stoolLab.screenRoute: (context) => stoolLab(),
        Bloodlaponecontiunue.screenRoute: (context) => Bloodlaponecontiunue(),
        ClinicScreen.screenRoute: (context) => ClinicScreen(),
        ClinicScreenChose.screenRoute: (context) => ClinicScreenChose(),
        EntClinicScreen.screenRoute: (context) => EntClinicScreen(),
        OrthoClinicScreen.screenRoute: (context) => OrthoClinicScreen(),
        CardioScreen.screenRoute: (context) => CardioScreen(),
        OphthaClinicScreen.screenRoute: (context) => OphthaClinicScreen(),
        GynClinicScreen.screenRoute: (context) => GynClinicScreen(),
        SurgeryClinicScreen.screenRoute: (context) => SurgeryClinicScreen(),
        PediatricsClinicScreen.screenRoute: (context) =>
            PediatricsClinicScreen(),
        DentalClinicScreen.screenRoute: (context) => DentalClinicScreen(),
        DermaClinicScreen.screenRoute: (context) => DermaClinicScreen(),
        FollowUpScreen.screenRoute: (context) => FollowUpScreen(),
        PharmacyScreen.screenRoute: (context) => PharmacyScreen(),
        SearchScreen.screenRoute: (context) => SearchScreen(),
        ChildrenSearch.screenRoute: (context) => ChildrenSearch(),
        AdultSearch.screenRoute: (context) => AdultSearch(),
        Addtreatment.screenRoute: (context) => Addtreatment(),
        DashboaedfirstScreen.screenRoute: (context) => DashboaedfirstScreen(),
        AdultDash.screenRoute: (context) => AdultDash(),
        ChildDash.screenRoute: (context) => ChildDash(),
        LabCheckin.screenRoute: (context) => LabCheckin(),
        LabCheckout.screenRoute: (context) => LabCheckout(),
        SelectLab.screenRoute: (context) => SelectLab(),
        FollowupchosseClinic.screenRoute: (context) => FollowupchosseClinic(),
        ImFollowupScreen.screenRoute: (context) => ImFollowupScreen(),
        SurgeryFollowUpscreen.screenRoute: (context) => SurgeryFollowUpscreen(),
        OphthalmologyFollowupScreen.screenRoute: (context) =>
            OphthalmologyFollowupScreen(),
        PediatricFollowupscreen.screenRoute: (context) =>
            PediatricFollowupscreen(),
        ENTFollowUpscreen.screenRoute: (context) => ENTFollowUpscreen(),
        GynecologyFollowUpscreen.screenRoute: (context) =>
            GynecologyFollowUpscreen(),
        reportday1.screenRoute: (context) => reportday1(),
        ChoseScreningScreen.screenRoute: (context) => ChoseScreningScreen(),
        AdultScreenigNephro.screenRoute: (context) => AdultScreenigNephro(),
        AdultScrenningUTI.screenRoute: (context) => AdultScrenningUTI(),
        AdultScreeningOGTT.screenRoute: (context) => AdultScreeningOGTT(),
        ChildScreeningAnemia.screenRoute: (context) => ChildScreeningAnemia(),
        ChildScreeningRickets.screenRoute: (context) => ChildScreeningRickets(),
        ChildScreeningParaside.screenRoute: (context) =>
            ChildScreeningParaside(),
        reportday2.screenRoute: (context) => reportday2(),
        reportday3.screenRoute: (context) => reportday3(),
        reportday4.screenRoute: (context) => reportday4(),
        reportday5.screenRoute: (context) => reportday5(),
        chosedayreport.screenRoute: (context) => chosedayreport(),
        reporttotal.screenRoute: (context) => reporttotal(),
        familyMedicineScreen.screenRoute: (context) => familyMedicineScreen(),
        RadiologyClinicScreen.screenRoute: (context) => RadiologyClinicScreen(),
      },
    );
  }
}
