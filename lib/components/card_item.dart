
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String discription;
  final Color? colorAll;
  const CardItem({
    super.key,
    required this.discription,
    required this.imgUrl,
    required this.title,
    this.colorAll = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
                            height: 316,
                            width: 359,
                            padding: EdgeInsets.only(top: 7.h,left: 6.w,right: 6.w,bottom: 7.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.w,
                                color: colorAll!,
                              ),
                              borderRadius: BorderRadius.circular(20.r)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(imgUrl,height: 60.h,width: 70.w,),
                                SizedBox(height: 10.h,),
                                Text(title,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w700,
                                  color: colorAll,
                                ),
                                textAlign: TextAlign.center,),
                                SizedBox(height: 15.h,),
                                Text(discription,
                                  style: GoogleFonts.inter(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.w400,
                                  color: colorAll,
                                ),
                                textAlign: TextAlign.center,)
                              ],
                            ),
                          ),
    );
  }
}