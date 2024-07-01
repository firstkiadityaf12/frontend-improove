import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/theme/colour.dart';

class CardBlog extends StatelessWidget {
  String number;
  String title;
  String description;
  String image;
  double jarak;
  CardBlog({
    required this.number,
    required this.title,
    required this.description,
    required this.image,
    required this.jarak,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 441.67,
      width: 396.94,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 27.5,
              right: 14.87,
              top: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '$number ',
                    style: GoogleFonts.spaceGrotesk(
                      color: neutralColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    children: [
                      TextSpan(
                        text: title,
                        style: GoogleFonts.plusJakartaSans(
                          color: neutralColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.33,
                ),
                Text(
                  description,
                  style: GoogleFonts.plusJakartaSans(
                    color: neutralColor,
                    fontSize: 16,
                    height: 1.6,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: jarak,
          ),
          SizedBox(
            height: 294.67,
            width: double.infinity,
            child: Image.asset(
              '/items/$image.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
