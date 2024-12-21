

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSubscriptionCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String price;
  final String text;
  final String button_text;
  const CustomSubscriptionCard({super.key,
  required this.title,
  required this.price,
  required this.text,
  required this.button_text,
  this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
                      padding: EdgeInsets.only(top: 50.h, right: 10.w, left: 10.w,bottom: 30.h),
                      height: 800.h,
                width:  350.w,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.white,
                        Color(0xff003366),
                      ],
                      begin: Alignment.topCenter, // Start of the gradient
                      end: Alignment.bottomCenter, // End of the gradient
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r)
                    ),
                    border: Border.all(
                      width: 1.w,
                      color: Color(0xff6B9ACA)
                    )
                    ),
                    child: Column(
                      
                      children: [

                        Text(title,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff003366),
                        ),
                        textAlign: TextAlign.center,),
                        SizedBox(height: 25.h,),
                        subtitle !=null? Text(subtitle!,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),) : SizedBox(),

                        Text(price,
                        style: GoogleFonts.saira(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),),

                        Text(text,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 50.h,),
                        Container(
                          height: 60.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r)
                          ),
                          child: Center(
                            child: Text(button_text,
                        style: GoogleFonts.cherrySwash(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff003366),
                        ),
                        textAlign: TextAlign.center,),
                          ),
                        ),
                      ],
                    ),
                    );
  }
}