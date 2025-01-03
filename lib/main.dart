import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:your_calendy/views/All_screens.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
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
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
      home: AllScreens(),
    );
      },
    );
  }
}
