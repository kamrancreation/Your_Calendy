
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

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Flexible(
      flex: 1,
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
                                Image.asset(imgUrl,height:screenWidth >=600 ? 70  : 55,width:screenWidth >=600? 70 : 80,),
                                SizedBox(height: 12.h,),
                                Text(title,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize:20 ,
                                  fontWeight: FontWeight.w700,
                                  color: colorAll,
                                ),
                                textAlign: TextAlign.center,),
                                SizedBox(height: 17.h,),
                                Text(discription,
                                  style: GoogleFonts.inter(
                                  fontSize: 15 ,
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