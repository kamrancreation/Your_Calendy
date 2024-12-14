

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DividerRow extends StatelessWidget {
  final String text;
  const DividerRow({super.key,
  required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 1.0,
                            endIndent: 10.0, // Add spacing before the text
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          text, // The text in the center
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 1.0,
                            indent: 10.0, // Add spacing after the text
                          ),
                        ),
                      ],
                    );
  }
}