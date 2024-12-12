
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  const CustomTextField({super.key,
  required this.text});


  @override
  Widget build(BuildContext context) {
    
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                  color: Colors.white, 
                                  borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  child: Center(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: text,
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
                                );
  }
}