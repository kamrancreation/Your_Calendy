

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSocialButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Color bgColor;
  final Color borderColor;
  final String imgIcon;
  const CustomSocialButton({super.key,
  required this.text,
  required this.ontap,
  this.bgColor = Colors.white,
  this.borderColor = Colors.white,
  required this.imgIcon
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
                        padding: EdgeInsets.only( left: 10.w, right: 10.w, ),
                        height: 120.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: bgColor,
                          border: Border.all(
                            width: 5.w,
                            color: borderColor
                          )
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 40.w,),
                            Image.asset(imgIcon, height: 60.h,),
                            Expanded(
                              child: Text(text,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff003366)
      
                              ),
                              textAlign: TextAlign.center,))
                          ],
                        ),
                      ),
    );
  }
}