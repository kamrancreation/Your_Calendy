
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSectionItem extends StatelessWidget {
  final String text;
  final String imgPath;
  const HeroSectionItem({
    super.key,
    required this.imgPath,
    required this.text});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
                                height: 90.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Image.asset(imgPath, height: 40.h, width: 40.w,),
                                ),
                              ),
                              Text(text,
                              style: GoogleFonts.sansita(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),),
      ],
    );
  }
}