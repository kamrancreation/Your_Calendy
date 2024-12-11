
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
    return ListTile(
      leading: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Center(
                              child: Image.asset(imgPath, height: 30.h, width: 30.w,),
                            ),
                          ),
        title: Text(text,
                          style: GoogleFonts.sansita(
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                          ),),
    );
  }
}