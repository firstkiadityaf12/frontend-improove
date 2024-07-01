import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend_improove/infrastructure/theme/colour.dart';
import 'package:frontend_improove/presentation/widgets/card_blog.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/sections/blog_section.dart';
import '../widgets/sections/home_section.dart';
import '../widgets/search_hour.dart';
import '../widgets/sections/ourapp_section.dart';
import '../widgets/sections/search_section.dart';
import 'controllers/landingpage.controller.dart';

class LandingpageScreen extends GetView<LandingpageController> {
  const LandingpageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeSection(),
            SearchSection(),
            BlogSection(),
            SizedBox(
              height: 66.17,
            ),
            OurAppSection(),
            Container(
              height: 541,
              width: double.infinity,
              color: primaryColor,
              child: Stack(
                children: [
                  SizedBox(
                    height: 541,
                    width: double.infinity,
                    child: Image.asset(
                      '/backgrounds/pattern.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 83.33,
                      right: 85,
                      top: 69.83,
                      bottom: 55,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, 
                              children: [
                                Text(
                                  'Do you have\nany questions?',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: neutralColor,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: 13.33,
                                ),
                                Text(
                                  'Feel free to send us your questions or\nrequest a free consultation.',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: neutralColor,
                                    fontSize: 15,
                                    height: 1.4,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('/logos/logo.svg'),
                                SizedBox(
                                  height: 17.5,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset('/icons/map.svg'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '345 Faulconer Drive, Suite 4 • Charlottesville, CA, 12345',
                                      style: GoogleFonts.ibmPlexSans(
                                        color: neutralColor,
                                        fontSize: 15.1,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 21.67,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('/icons/call.svg'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '(123) 456-7890',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: neutralColor,
                                            fontSize: 15.1,
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 29.17,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset('/icons/print.svg'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '(123) 456-7890',
                                          style: GoogleFonts.ibmPlexSans(
                                            color: neutralColor,
                                            fontSize: 15.1,
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 32.5,
                        ),
                        SizedBox(
                          width: 200,
                          height: 53.67,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: secondaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.33),
                                )),
                            onPressed: () {},
                            child: Text(
                              'Send Message',
                              style: GoogleFonts.plusJakartaSans(
                                color: neutralBlack,
                                fontSize: 16.67,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Text(
                              'Social Media',
                              style: GoogleFonts.ibmPlexSans(
                                color: neutralColor,
                                fontSize: 15.1,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            SizedBox(
                              width: 21.88,
                            ),
                            SvgPicture.asset('/icons/facebook.svg'),
                            SizedBox(
                              width: 25.88,
                            ),
                            SvgPicture.asset('/icons/twitter.svg'),
                            SizedBox(
                              width: 25.88,
                            ),
                            SvgPicture.asset('/icons/linkedln.svg'),
                            SizedBox(
                              width: 25.88,
                            ),
                            SvgPicture.asset('/icons/youtube.svg'),
                            SizedBox(
                              width: 25.88,
                            ),
                            SvgPicture.asset('/icons/instagram.svg'),
                            SizedBox(
                              width: 25.88,
                            ),
                            SvgPicture.asset('/icons/google.svg'),
                            SizedBox(
                              width: 25.88,
                            ),
                            SvgPicture.asset('/icons/pinterest.svg'),
                            SizedBox(
                              width: 25.88,
                            ),
                            SvgPicture.asset('/icons/wifi.svg'),
                          ],
                        ),
                        SizedBox(
                          height: 81.67,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'About us'.toUpperCase(),
                                  style: GoogleFonts.ibmPlexSans(
                                    color: neutralColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  width: 45.83,
                                ),
                                Text(
                                  'Contact us'.toUpperCase(),
                                  style: GoogleFonts.ibmPlexSans(
                                    color: neutralColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  width: 45.83,
                                ),
                                Text(
                                  'Help'.toUpperCase(),
                                  style: GoogleFonts.ibmPlexSans(
                                    color: neutralColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  width: 45.83,
                                ),
                                Text(
                                  'Privacy Policy'.toUpperCase(),
                                  style: GoogleFonts.ibmPlexSans(
                                    color: neutralColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  width: 45.83,
                                ),
                                Text(
                                  'Disclaimer'.toUpperCase(),
                                  style: GoogleFonts.ibmPlexSans(
                                    color: neutralColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('/icons/copyright.svg'),
                                SizedBox(
                                  width: 5.83,
                                ),
                                Text(
                                  '2024 IMPROOVE. All right reserved.',
                                  style: GoogleFonts.spaceGrotesk(
                                    color: neutralColor,
                                    fontSize: 13.33,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
