
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:your_calendy/views/Business_address_screen.dart';
import 'package:your_calendy/views/Business_hours_screen.dart';
import 'package:your_calendy/views/Deshboard_screen.dart';
import 'package:your_calendy/views/Login_screen.dart';
import 'package:your_calendy/views/Profile_screen.dart';
import 'package:your_calendy/views/Service_managment_screen.dart';
import 'package:your_calendy/views/Sign_up_screen.dart';
import 'package:your_calendy/views/Subscription_manament_screen.dart';

class AllScreens extends StatelessWidget {
  const AllScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Get.to(Deshboard_screen());
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.amber,
                  child: Text("DeshBoard Screen"),
                ),
              ),
              SizedBox(height: 30,),
               InkWell(
                onTap: (){
                  Get.to(SubscriptionManamentScreen());
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.amber,
                  child: Text("Subscription Managment screen"),
                ),
              ),
              SizedBox(height: 30,),
               InkWell(
                onTap: (){
                  Get.to(SignUpScreen());
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.amber,
                  child: Text("Sign Up Screen"),
                ),
              ),
              SizedBox(height: 30,),
               InkWell(
                onTap: (){
                  Get.to(ServiceManagmentScreen());
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.amber,
                  child: Text("Service managment screen"),
                ),
              ),
              SizedBox(height: 30,),
               InkWell(
                onTap: (){
                  Get.to(ProfileScreen());
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.amber,
                  child: Text("Profile Screen"),
                ),
              ),
              SizedBox(height: 30,),
               InkWell(
                onTap: (){
                  Get.to(LoginScreen());
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.amber,
                  child: Text("Login Screen"),
                ),
              ),
              SizedBox(height: 30,),
               InkWell(
                onTap: (){
                  Get.to(BusinessAddressScreen());
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.amber,
                  child: Text("Business Address Screen"),
                ),
              ),
              SizedBox(height: 30,),
               InkWell(
                onTap: (){
                  Get.to(BusinessHoursScreen());
                },
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  color: Colors.amber,
                  child: Text("Business Hours Screen"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}