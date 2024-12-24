



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomArrowButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  const CustomArrowButton({super.key,
  required this.text,
  required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
                        height: 120.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff003366),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              text,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            //SizedBox(width: 3.w,),
                            Image.asset("assets/arrow.png",height: 100.h)
                          ],
                        ),
                      ),
    );
  }
}