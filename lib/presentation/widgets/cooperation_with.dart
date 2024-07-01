import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/theme/colour.dart';

class CooperationWith extends StatelessWidget {
  const CooperationWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 83.33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Colleges we work with',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: neutralColor,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SvgPicture.asset('/logos/bsc.svg'),
              SizedBox(
                width: 22.22,
              ),
              SizedBox(
                width: 22.22,
              ),
              SvgPicture.asset('/logos/morehouse.svg'),
              SizedBox(
                width: 22.22,
              ),
              SvgPicture.asset('/logos/oklahoma.svg'),
              SizedBox(
                width: 22.22,
              ),
              SvgPicture.asset('/logos/alabama.svg'),
            ],
          )
        ],
      ),
    );
  }
}