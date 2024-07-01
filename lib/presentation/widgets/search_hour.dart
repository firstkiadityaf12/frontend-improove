import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/theme/colour.dart';

class SearchHours extends StatelessWidget {
  const SearchHours({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 79.69,
          width: 79.69,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8.33),
          ),
          child: Padding(
            padding: const EdgeInsets.all(19.76),
            child: SvgPicture.asset('/icons/magister.svg'),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '200',
              style: GoogleFonts.spaceGrotesk(
                color: neutralBlack,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 3.33,
            ),
            Text(
              'hours of searching',
              style: GoogleFonts.plusJakartaSans(
                color: Color(0xff302929),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            )
          ],
        )
      ],
    );
  }
}