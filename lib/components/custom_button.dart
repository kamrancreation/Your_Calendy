

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  const CustomButton({super.key,
  required this.text,
  required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
                        height: 110.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff003366),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            text,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
    );
  }
}