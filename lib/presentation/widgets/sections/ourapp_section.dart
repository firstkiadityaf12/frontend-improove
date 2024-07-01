import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/colour.dart';

class OurAppSection extends StatelessWidget {
  const OurAppSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 621,
      width: double.infinity,
      color: neutralColor,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Image.asset('/backgrounds/surf_pattern3.png'),
          ),
          Positioned(
            right: 70.54,
            child: Image.asset('/backgrounds/magnet_blue.png'),
          ),
          Positioned(
            top: 55.42,
            right: 0,
            child: Image.asset('/backgrounds/magnet_yellow.png'),
          ),
          Positioned(
            top: 113.17,
            right: 348.46,
            child: Image.asset('/backgrounds/magnet_blue2.png'),
          ),
          Positioned(
            right: 94.68,
            top: 27,
            child: Image.asset('/items/mockup_iphone.png'),
          ),
          Positioned(
            right: 126.81,
            top: 260.91,
            child: Image.asset(
              '/items/mockup_logo.png',
            ),
          ),
          Positioned(
            bottom: 23.83,
            right: 380,
            child: Image.asset(
              '/backgrounds/magnet_yellow2.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 48,
              top: 93.73,
              bottom: 93.73,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 46.8,
                  width: 114,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: secondaryColor,
                      width: 1.02,
                    ),
                    color: neutralColor,
                    borderRadius: BorderRadius.circular(102.49),
                  ),
                  child: Center(
                    child: Text(
                      'Our App',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 18.45,
                        color: secondaryColor,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.3,
                ),
                Text(
                  'Get Started For\nEnjoying Our Camps',
                  style: GoogleFonts.plusJakartaSans(
                    color: neutralBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 55.35,
                    height: 1.2,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 33.36,
                ),
                Text(
                  'Download our apps to gain powerfull camp experience\nwith CampID',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xff575555),
                    fontSize: 20.5,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    height: 1.6,
                  ),
                ),
                SizedBox(
                  height: 55.35,
                ),
                SizedBox(
                  height: 63.54,
                  width: 210.12,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding:
                            EdgeInsets.symmetric(horizontal: 18.45)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          height: 32.8,
                          width: 33.82,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: secondaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child:
                                SvgPicture.asset('/icons/download.svg'),
                          ),
                        ),
                        SizedBox(
                          width: 14.4,
                        ),
                        Text(
                          'Download Now',
                          style: GoogleFonts.plusJakartaSans(
                            color: neutralColor,
                            fontSize: 16.4,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}