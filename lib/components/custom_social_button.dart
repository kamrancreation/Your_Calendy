

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSocialButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Color bgColor;
  final Color borderColor;
  final String imgIcon;
  const CustomSocialButton({super.key,
  required this.text,
  required this.ontap,
  this.bgColor = Colors.white,
  this.borderColor = Colors.white,
  required this.imgIcon
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 65,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: bgColor,
                          border: Border.all(
                            width: 7,
                            color: borderColor
                          )
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Image.asset(imgIcon),
                            Expanded(
                              child: Text(text,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff003366)
      
                              ),
                              textAlign: TextAlign.center,))
                          ],
                        ),
                      ),
    );
  }
}