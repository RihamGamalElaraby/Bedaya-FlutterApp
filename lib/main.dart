import 'package:bedaya/screens/Clinics/CardiologyClinicSreen.dart';
import 'package:bedaya/screens/Clinics/DentalClinicScreen.dart';
import 'package:bedaya/screens/Clinics/DremaClinic.Dart.dart';
import 'package:bedaya/screens/Clinics/GynClinicScreen.dart';
import 'package:bedaya/screens/Clinics/OphthaClinicScreen.dart';
import 'package:bedaya/screens/Clinics/PediatricsClinicScreen.dart';
import 'package:bedaya/screens/Clinics/SurgeryClinicScreen.dart';
import 'package:bedaya/screens/Labs/SelectLab.dart';
import 'package:bedaya/screens/Labs/labcheckin.dart';
import 'package:bedaya/screens/Labs/labcheckout.dart';
import 'package:bedaya/screens/Search%20Screen/adult_search.dart';
import 'package:bedaya/screens/Search%20Screen/children_search.dart';
import 'package:bedaya/screens/Search%20Screen/search_screen.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_checkup.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_continue.dart';
import 'package:bedaya/screens/adult%20checkup/Adult_continue3.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodLab_screen.dart';
import 'package:bedaya/screens/Labs/Blood%20lab/BloodlabScreen2.dart';
import 'package:bedaya/screens/children%20checkup/Children_checkup.dart';
import 'package:bedaya/screens/children%20checkup/Children_continue.dart';
import 'package:bedaya/screens/Clinics/ClinicScreenChose.dart';
import 'package:bedaya/screens/Clinics/ENTclinicScreen.dart';
import 'package:bedaya/screens/Clinics/IMClinicScreen.dart';
import 'package:bedaya/screens/Clinics/OrthoClinicScreen.dart';
import 'package:bedaya/screens/Labs/urine%20lab/UrineLab_screen.dart';
import 'package:bedaya/screens/chat%20screens/chat_screen.dart';
import 'package:bedaya/screens/chose%20team%20screen/chose1_screen.dart';
import 'package:bedaya/screens/chose%20sup%20team%20screen/chose2_screen.dart';
import 'package:bedaya/screens/Labs/choselabs_screen.dart';
import 'package:bedaya/login%20and%20register/registration_screen.dart';
import 'package:bedaya/screens/adult%20checkup/adult_dash.dart';
import 'package:bedaya/screens/children%20checkup/child_dash.dart';
import 'package:bedaya/screens/dashboard/dashboard.dart';
import 'package:bedaya/screens/followUp_Screen.dart';
import 'package:bedaya/screens/pharmacy/PharmacyScreen.dart';
import 'package:bedaya/screens/pharmacy/pharamcyaddtreat.dart';
import 'package:bedaya/screens/welcome%20screen/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login and register/signin_screen.dart';
import 'screens/Labs/stool lab/stool_lab.dart';
import 'screens/Labs/Blood lab/BloodLab2_Screen.dart';



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
        bloodLabContinueScreen.screenRoute: (context) => bloodLabContinueScreen(),
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
        PediatricsClinicScreen.screenRoute: (context) => PediatricsClinicScreen(),
        DentalClinicScreen.screenRoute: (context) => DentalClinicScreen(),
        DermaClinicScreen.screenRoute: (context) => DermaClinicScreen(),
        FollowUpScreen.screenRoute: (context) => FollowUpScreen(),
        PharmacyScreen.screenRoute: (context) => PharmacyScreen(),
        SearchScreen.screenRoute : (context) => SearchScreen(),
        ChildrenSearch.screenRoute : (context) => ChildrenSearch(),
        AdultSearch.screenRoute : (context) => AdultSearch(),
        Addtreatment.screenRoute: (context) => Addtreatment(),
        DashboaedfirstScreen.screenRoute: (context) => DashboaedfirstScreen(),
        AdultDash.screenRoute : (context) => AdultDash(),
        ChildDash.screenRoute : (context) =>  ChildDash(),
        LabCheckin.screenRoute : (context) =>  LabCheckin(),
        LabCheckout.screenRoute : (context) =>  LabCheckout(),
        SelectLab.screenRoute : (context) =>  SelectLab()


      },
    );
  }
}
