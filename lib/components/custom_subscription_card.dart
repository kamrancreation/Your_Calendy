

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSubscriptionCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String price;
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;
  final String? text5;
  final String? text6;
  final String? text7;
  final String button_text;

  const CustomSubscriptionCard({super.key,
  required this.title,
  required this.price,
   this.text1,
   this.text2,
   this.text3,
   this.text4,
   this.text5,
   this.text6,
   this.text7,
  required this.button_text,
  this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
                      padding: EdgeInsets.only(top: 60.h,bottom: 30.h),
                      height: 1000.h,
                width:  330.w,
                decoration: BoxDecoration(
                   boxShadow: [
              BoxShadow(
                color: Color(0xFF003366), 
                spreadRadius: 0,
                blurRadius: 10, 
                offset: Offset(0, 5),
              ),
            ],
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFF003366),
                      ],
                      begin: Alignment.topCenter, // Start of the gradient
                      end: Alignment.bottomCenter, // End of the gradient
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                    border: Border.all(
                      width: 1.w,
                      color: Color(0xff6B9ACA),
                      
                    )
                    ),
                    child: Column(
                      children: [

                        Text(title,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff003366),
                        ),
                        textAlign: TextAlign.center,),
                        SizedBox(height: 30.h,),
                        subtitle !=null? Text(subtitle!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),) : SizedBox(),

                        SizedBox(height: 30.h,),
                        Text(price,
                        style: GoogleFonts.saira(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 25.h,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             text1 != null?  Text(text1!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),): SizedBox(),
                        SizedBox(height: 13.h,),
                        text2 != null?  Text(text2!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),): SizedBox(),
                        SizedBox(height: 13.h,),
                        text3 != null?  Text(text3!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),): SizedBox(),
                        SizedBox(height: 13.h,),
                        text4 != null?  Text(text4!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),): SizedBox(),
                        SizedBox(height: 13.h,),
                        text5 != null?  Text(text5!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),): SizedBox(),
                        SizedBox(height: 13.h,),
                        text6 != null?  Text(text6!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),): SizedBox(),
                        SizedBox(height: 10.h,),
                        text7 != null?  Text(text7!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),): SizedBox(),
                          ],
                        ),
                      ),
                       // SizedBox(height: 120.h,),
                       Spacer(),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 85.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40.r)
                            ),
                            child: Center(
                              child: Text(button_text,
                          style: GoogleFonts.cherrySwash(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff003366),
                          ),
                          textAlign: TextAlign.center,),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h,)
                      ],
                    ),
                    );
  }
}