
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/hero_section_item.dart';
import 'package:your_calendy/components/stack_widget.dart';

class DeshboardMaxTabView extends StatelessWidget {
  const DeshboardMaxTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 1800.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/background_image.png',), // Path to your image
                    fit: BoxFit.fill,
                    alignment: Alignment.centerRight,
                    
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 30.h, left: 30.w, right: 90.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Welcome be ',
                                    style: GoogleFonts.saira(
                                      fontSize: 50.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    )),
                                TextSpan(
                                  text: 'YouCalendy',
                                  style: TextStyle(
                                    fontSize: 50.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xffB4C9DE),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "The Ultimate Convenience for Busy People",
                            style: GoogleFonts.acme(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffEFF0F6)),
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text:
                                        'Organize your barbershop efficiently and professionally \nwith YouCalendy. Forget about out-of-hours calls and \nconfusion in appointment management.\n',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    )),
                                TextSpan(
                                  text: 'Sign up for free',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffFAE635),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                        ' today and discover how YouCalendy can \ntransform your barbershop',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                          StackWidget(
                            text: 'Advantages',
                            hight: 85.h,
                            width: 167.w,
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 25.h,
                                ),
                                Positioned(
                                  left: 0,
                                  child: const HeroSectionItem(
                                      imgPath: "assets/hero_section2.png",
                                      text: "Appointment History"),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const HeroSectionItem(
                                    imgPath: "assets/hero_section2.png",
                                    text: "Improved Time Management"),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const HeroSectionItem(
                                    imgPath: "assets/hero_section3.png",
                                    text: "Professionalism"),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const HeroSectionItem(
                                    imgPath: "assets/hero_section4.png",
                                    text: "Time Savings"),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const HeroSectionItem(
                                    imgPath: "assets/hero_section5.png",
                                    text: "Increased Trust"),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const HeroSectionItem(
                                    imgPath: "assets/hero_section6.png",
                                    text: "Increased Revenue"),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const HeroSectionItem(
                                    imgPath: "assets/hero_section7.png",
                                    text: "Improved Communication"),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const HeroSectionItem(
                                    imgPath: "assets/hero_section8.png",
                                    text: "Flexibility and Control"),
                                // Align(
                                //   alignment: Alignment.bottomRight,
                                //   child: StackWidget()),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 620.h,
                                ),
                                Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationZ(-0.1),
                                  child: Text(
                                    "YOUR TIME",
                                    style: GoogleFonts.aclonica(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 110.w,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 650.h,
                                ),
                                Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationZ(0.1),
                                  child: Text(
                                    "YOUR CONTROL",
                                    style: GoogleFonts.aclonica(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                  height: 200.h,
                                ),
                                StackWidget(
                                  text: "Sign-up For Free",
                                  hight: 90.h,
                                  width: 200.w,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 30.w,)
                        ],
                      ),
                    )
                  ],
                ),
              );
  }
}