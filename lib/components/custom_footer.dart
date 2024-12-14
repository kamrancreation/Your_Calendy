
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/deshboard_footer_column.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              height: 240.h,
              width: double.infinity,
              color: const Color(0xff003366),
              child: Row(
                children: [
                SizedBox(width: 30.w),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset("assets/app_store_img.png",height: 41,width: 100,),
                     SizedBox(height: 20.h),
                     Image.asset("assets/google_store.png",height: 41,width: 100,)
                    ],
                  ),
                  SizedBox(width : 70.w),
                  const DeshboardFooterColumn(
                          title: "Follow Us on",
                          text1: "Facebook",
                          text2: "Twitter",
                          text3: "Instagram",
                          text4: "Linkedin", 
                          ),
                  SizedBox(width : 70.w),
                  const DeshboardFooterColumn(
                          title: "Useful Links",
                          text1: "About Us",
                          text2: "Contact Us",
                          text3: "Feedback",
                          text4: "Appointment", 
                          ),
                  SizedBox(width : 70.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Find Us on ->",
                        style: GoogleFonts.sansita(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 5.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                     Image.asset("assets/instagram_icon.png",height: 40.h,),
                     SizedBox(width: 3.w,),
                     Image.asset("assets/facebook_icon2.png",height: 40.h,),
                     SizedBox(width: 3.w,),
                     Image.asset("assets/linkedin_icon.png",height: 40.h,),
                     SizedBox(width: 3.w,),
                     Image.asset("assets/twitter_icon.png",height: 40.h,),

                          ],
                        )
                      ],
                    )
                ],
              ),
            );
  }
}