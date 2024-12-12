
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/components/deshboard_footer_column.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.h,),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 10.h,right: 10.w,left: 10.w),
                height: screenHight /1.3,
                width: screenWidth /2,
                decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white, 
                          Color(0xFF003366), 
                        ],
                        begin: Alignment.topCenter, // Start of the gradient
                        end: Alignment.bottomCenter, // End of the gradient
                      ),
                      borderRadius: BorderRadius.circular(20.r)
                    ),

                child: Column(
                  children: [
                    Text("Sign In",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: screenWidth >= 600 ? 30 : 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff003366),
                    ),
                    ),
                    SizedBox(height: 5.h,),
                    Text("Please Sign In with your Account",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: screenWidth >= 600.0? 25 : 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff003366),
                    ),
                    textAlign: TextAlign.center,),
                    SizedBox(height: 10.h,),
                    Container(
                      padding: EdgeInsets.only(left: 30.w,right: 30.w),
                    width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize:screenWidth >=600.0? 15 : 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),),
                          Container(
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                  color: Colors.white, 
                                  borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  child: Center(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter your email',
                                        hintStyle: GoogleFonts.dmSans(
                                          color: Colors.grey,
                                          fontSize:screenWidth >=600.0? 15 : 13,
                                          fontWeight: FontWeight.w400,
                                          ),
                                        border: InputBorder.none, 
                                        contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}