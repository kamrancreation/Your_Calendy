

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:your_calendy/views/Home_Screen.dart';

class MyAppRouter{
  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state){
        return MaterialPage(child: HomePage());
      },
    ),

    // GoRoute(
    //   path: '/sign_up_screen',
    //   pageBuilder: (context, state){
    //     return MaterialPage(child: SignUpScreen());
    //   },
    // ),
    // GoRoute(
    //   path: '/otp_screen',
    //   pageBuilder: (context, state){
    //     return MaterialPage(child: OtpVerificationScreen());
    //   },
    // ),GoRoute(
    //   path: '/deshboard',
    //   pageBuilder: (context, state){
    //     return MaterialPage(child: DeshboardScreen());
    //   },
    // ),

  ]);
}