import 'package:flutter/material.dart';
import 'package:frontend_improove/presentation/widgets/search_hour.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/colour.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 890,
      width: double.infinity,
      color: neutralColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            '/items/student.png',
            width: 606.94,
            height: 451.57,
          ),
          SizedBox(
            height: 591.19,
            width: 647.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Why Improove?',
                  style: GoogleFonts.plusJakartaSans(
                    color: neutralBlack,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 12.5,
                ),
                Text(
                  'Kami berkomitmen\nmembantu para generasi\nmuda blablab',
                  style: GoogleFonts.plusJakartaSans(
                    color: neutralBlack,
                    fontSize: 54,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    height: 1.3,
                  ),
                ),
                SizedBox(
                  height: 21.67,
                ),
                Text(
                  'As your trusted partner, we utilize cutting-edge technology to\nsimplify and enhance your search, connecting you with the best\noptions without the hassle.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    color: Color(0xff757575),
                    fontWeight: FontWeight.w500,
                    height: 1.6,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 68.33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchHours(),
                    SearchHours(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}