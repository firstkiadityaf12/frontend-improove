import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/theme/colour.dart';

class DescriptionSignUp extends StatelessWidget {
  const DescriptionSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 83.33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Accurate Results',
                style: GoogleFonts.plusJakartaSans(
                  decoration: TextDecoration.none,
                  color: neutralColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 8.33,
              ),
              SvgPicture.asset('/icons/bullseye.svg'),
            ],
          ),
          SizedBox(
            width: 8.33,
          ),
          Text(
            'Improve your skills and\ncapabilities for doing a\nbetter Project',
            style: GoogleFonts.plusJakartaSans(
                color: neutralColor,
                fontSize: 54,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 21.67,
          ),
          Text(
            'At Prep Intel, we are committed to helping students find their\ndream colleges. Our team of experts utilizes AI, machine\nlearning, and predictive analytics to deliver accurate and\npersonalized college matching and enrollment solutions.',
            style: GoogleFonts.plusJakartaSans(
              color: Color(0xffF4F4F4),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
              height: 1.6,
            ),
          ),
          SizedBox(
            height: 50.83,
          ),
          SizedBox(
            height: 55.67,
            width: 125,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.33),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}