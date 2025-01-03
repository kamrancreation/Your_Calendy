import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String discription;
  final Color? colorAll;
  const CardItem(
      {super.key,
      required this.discription,
      required this.imgUrl,
      required this.title,
      this.colorAll = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 370,
      padding: const EdgeInsets.only(top: 7, left: 30, right: 30, bottom: 7),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: colorAll!,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgUrl,
            height: 88,
            width: 95,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: colorAll,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            discription,
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: colorAll,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
