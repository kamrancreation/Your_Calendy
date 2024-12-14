import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:your_calendy/views/Business_address_screen.dart';
import 'package:your_calendy/views/Business_hours_screen.dart';
import 'package:your_calendy/views/Deshboard_screen.dart';
import 'package:your_calendy/views/Home_Screen.dart';
import 'package:your_calendy/views/Login_screen.dart';
import 'package:your_calendy/views/Profile_screen.dart';
import 'package:your_calendy/views/Service_managment_screen.dart';
import 'package:your_calendy/views/Sign_up_screen.dart';
import 'package:your_calendy/views/Subscription_manament_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(500, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
      title: 'Flutter App with Menu',
      home: BusinessHoursScreen(),
    );
      },
    );
  }
}
