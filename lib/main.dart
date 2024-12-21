import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:your_calendy/views/All_screens.dart';
import 'package:your_calendy/views/Business_address_screen.dart';
import 'package:your_calendy/views/Business_hours_screen.dart';
import 'package:your_calendy/views/Deshboard_screen.dart';
import 'package:your_calendy/views/Home_Screen.dart';
import 'package:your_calendy/views/Login_screen.dart';
import 'package:your_calendy/views/Profile_screen.dart';
import 'package:your_calendy/views/Service_managment_screen.dart';
import 'package:your_calendy/views/Sign_up_screen.dart';
import 'package:your_calendy/views/Subscription_manament_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey:"AIzaSyD4219X5jeCIcRX-n7MQcR7SCQbssxh47k",
      appId : "1:432874950285:web:43dea3593d84e8a3f55cc4",
      messagingSenderId: "432874950285",
      projectId : "you-calendy",
    ));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1191, 1440),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
      home: AllScreens(),
    );
      },
    );
  }
}
