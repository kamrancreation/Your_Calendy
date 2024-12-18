import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height : 50.h,
      width: 100.w,
      child : Stack(
                        children: [
                         Transform(
                           alignment: Alignment.center,
                          transform: Matrix4.rotationZ(-3.1),
                          child :Container(
                              height: 44.h, // Height of the container
                              width: 70.w, // Width of the container
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      50.r), // Rounded corners
                                  color: Color(0xffFFFFFF)),
                            ),
                         ),
                          
                          Positioned(
                            top: 0,
                            child: Container(
                              height: 44.h, 
                              width: 70.w, 
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(50.r), 
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFAEB6E8), 
                                    Color(0xFF003366), 
                                  ],
                                  begin:
                                      Alignment.topLeft,
                                  end: Alignment
                                      .bottomRight, 
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign-up For Free",
                                  style: GoogleFonts.saira(
                                    fontSize: 7.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
    );
  }
}