

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCraditTextField extends StatelessWidget {
  const CustomCraditTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h, // Set height using ScreenUtil for responsiveness
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12.w), // Adjust padding
            filled: true,
            fillColor: Colors.white,
            hintText: "_ _ _-_ _ _ _-_ _ _ _",
            hintStyle: GoogleFonts.dmSans(
              color: Colors.grey,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.w),
                  child: Image.asset(
                    'assets/visa_icon.png', // Path to Visa logo in your assets
                    height: 20.h,
                    width: 20.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: Image.asset(
                    'assets/master_card.png', // Path to MasterCard logo in your assets
                    height: 20.h,
                    width: 20.w,
                  ),
                ),
              ],
            ),
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}