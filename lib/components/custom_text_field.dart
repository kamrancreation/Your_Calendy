
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  final bool obscureText;
  final Icon? suffixIcon;
  
  const CustomTextField({
  super.key,
  required this.text,
  required this.controller,
   this.obscureText = false,
   this.suffixIcon

  });


  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 80.h,
      
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
      suffixIcon: suffixIcon,
      hintText: text,
      hintStyle: GoogleFonts.dmSans(
        color: Colors.grey,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      ),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 0.h),
        ),
        style: GoogleFonts.dmSans(
      color: Colors.black,
      fontSize: 13.sp,
        ),
        cursorColor: Colors.grey,
      ),
    );

  }
}