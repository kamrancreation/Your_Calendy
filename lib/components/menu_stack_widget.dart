import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuStackWidget extends StatelessWidget {
  final double? hight;
  final double? width;
  final String text;

  const MenuStackWidget({
    super.key,
    required this.text,
    this.hight,
    this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height : 90.h,
      width: width,
      child : Stack(
                        children: [
                         Padding(
                          padding: EdgeInsets.only(top: 16.h),
                           child: Transform(
                             alignment: Alignment.center,
                            transform: Matrix4.rotationZ(-3.1),
                            child :Container(
                                height: hight, // Height of the container
                                width: width, // Width of the container
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        50.r), // Rounded corners
                                    color: Color(0xffFFFFFF)),
                              ),
                           ),
                         ),
                          
                          Container(
                            height: hight, 
                            width: width, 
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(50.r), 
                             color: Color(0xff003366)
                            ),
                            child: Center(
                              child: Text(
                                text,
                                style: GoogleFonts.saira(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
    );
  }
}