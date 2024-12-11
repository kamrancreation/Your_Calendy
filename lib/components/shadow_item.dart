
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ShadowItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String description;
  const ShadowItem({super.key,
  required this.imgUrl,
  required this.title,
  required this.description,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                      height: 390,
                      width:  360,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 45,left: 5),
                        height: 330,
                              width: 340,
                        decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xFFEFF0F6)
                                      
                                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        height: 330,
                              width: 340,
                        decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                                        gradient: LinearGradient(
                      colors: [ 
                        Color(0xFFE8EBFF),
                        Color(0xFF003366), 
                      ],
                      begin: Alignment.topCenter, // Start of the gradient
                      end: Alignment.bottomCenter, // End of the gradient
                                        ),
                                      
                                      ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 70,),
                                Text(title,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xff003366),
                                ),
                                textAlign: TextAlign.center,),
                                SizedBox(height: 20,),
                                Text(description,
                                style:  GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),
                                textAlign: TextAlign.center,)
                              ],
                            ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                             gradient: LinearGradient(
                        colors: [ 
                          Color(0xFFE8EBFF),
                          Color(0xFF003366), 
                        ],
                        begin: Alignment.topCenter, // Start of the gradient
                        end: Alignment.bottomCenter, // End of the gradient
                                          ),
                          ),
                          child: Center(
                            child: Image.asset(imgUrl,height: 60,width: 60,),
                          ),
                        ),
                      )
                        ],
                      ),
                    );
  }
}