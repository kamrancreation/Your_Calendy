

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DeshboardFooterColumn extends StatelessWidget {
  final String title;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  const DeshboardFooterColumn({
    super.key,
    required this.title,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5});

  @override
  Widget build(BuildContext context) {
    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                          style: GoogleFonts.dmSans(
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),),
                          SizedBox(height: 20.h,),
                          Text(text1,
                          style: GoogleFonts.dmSans(
                            fontSize: 6.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),),
                          SizedBox(height: 7.h,),
                          Text(text2,
                          style: GoogleFonts.dmSans(
                            fontSize: 6.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),),
                          SizedBox(height: 7.h,),
                          Text(text3,
                          style: GoogleFonts.dmSans(
                            fontSize: 6.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),),
                          SizedBox(height: 7.h,),
                          Text(text4,
                          style: GoogleFonts.dmSans(
                            fontSize: 6.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),),
                          SizedBox(height: 7.h,),
                          Text(text5,
                          style: GoogleFonts.dmSans(
                            fontSize: 6.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),),
                        ],
                      ),
                    );
  }
}