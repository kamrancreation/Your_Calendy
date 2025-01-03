import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/hero_section_item.dart';
import 'package:your_calendy/components/stack_widget.dart';

class DashboardDesktopView extends StatelessWidget {
  const DashboardDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure MediaQuery is available in the widget tree
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background_image.png'),
          fit: BoxFit.cover,
          alignment: Alignment.centerRight,
        ),
      ),
      child: SingleChildScrollView( // Wrap in SingleChildScrollView for large content
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome to ',
                      style: GoogleFonts.saira(
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'YouCalendy',
                      style: GoogleFonts.saira(
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffB4C9DE),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "The Ultimate Convenience for Busy People",
                style: GoogleFonts.acme(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffEFF0F6),
                ),
              ),
              SizedBox(height: 15.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Organize your barbershop efficiently and professionally \nwith YouCalendy. Forget about out-of-hours calls and \nconfusion in appointment management.\n',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign up for free',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffFAE635),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' today and discover how YouCalendy can \ntransform your barbershop',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              StackWidget(
                text: 'Advantages',
                hight: 85.h,
                width: 167.w,
              ),
              SizedBox(height: 20.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Column
                  const Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeroSectionItem(
                          imgPath: "assets/hero_section2.png",
                          text: "Appointment History",
                        ),
                        SizedBox(height: 10),
                        HeroSectionItem(
                          imgPath: "assets/hero_section2.png",
                          text: "Improved Time Management",
                        ),
                        SizedBox(height: 10),
                        HeroSectionItem(
                          imgPath: "assets/hero_section3.png",
                          text: "Professionalism",
                        ),
                        SizedBox(height: 10),
                        HeroSectionItem(
                          imgPath: "assets/hero_section4.png",
                          text: "Time Savings",
                        ),
                        SizedBox(height: 10),
                        HeroSectionItem(
                          imgPath: "assets/hero_section5.png",
                          text: "Increased Trust",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.w),
                  // Right Column
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationZ(-0.1),
                          child: Text(
                            "YOUR TIME",
                            style: GoogleFonts.aclonica(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 100.h),
                        StackWidget(
                          text: "Sign-up For Free",
                          hight: 90.h,
                          width: 200.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
