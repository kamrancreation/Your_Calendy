
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
    
    final screenSize = MediaQuery.of(context).size;
    return Container(
                                  height: 40.sp,
                                  decoration: BoxDecoration(
                                  color: Colors.white, 
                                  borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  child: Center(
                                    child: TextFormField(
                                      controller: controller,
                                      obscureText: obscureText,
                                      decoration: InputDecoration(
                                        suffixIcon: suffixIcon,
                                        hintText: text,
                                        hintStyle: GoogleFonts.dmSans(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          ),
                                        border: InputBorder.none, 
                                        contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
                                      ),
                                    ),
                                  ),
                                );
  }
}