
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                        children: [
                          Positioned(
                            
                            child: Container(
                              height: 44.h, // Height of the container
                              width: 60.w, // Width of the container
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      50.r), // Rounded corners
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                          Container(
                            height: 44.h, // Height of the container
                            width: 60.w, // Width of the container
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(50.r), // Rounded corners
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFAEB6E8), // #AEB6E8
                                  Color(0xFF003366), // #003366
                                ],
                                begin:
                                    Alignment.topLeft, // Start of the gradient
                                end: Alignment
                                    .bottomRight, // End of the gradient
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Advantages",
                                style: GoogleFonts.saira(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
  }
}