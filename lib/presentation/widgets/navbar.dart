import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend_improove/presentation/home/home.screen.dart';
import 'package:frontend_improove/presentation/widgets/sections/blog_section.dart';
import 'package:frontend_improove/presentation/widgets/sections/home_section.dart';
import 'package:frontend_improove/presentation/widgets/sections/search_section.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/theme/colour.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 47.68,
        left: 83.33,
        right: 83.33,
      ),
      width: double.infinity,
      height: 55.67,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('/logos/logo.svg'),
          Row(
            children: [
              SizedBox(
                width: 62,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: secondaryColor,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(right: 15, bottom: 15),
                    ),
                    onPressed: () {
                      Get.to(HomeSection());
                    },
                    child: Text(
                      'Home',
                      style: GoogleFonts.ibmPlexSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: neutralColor,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 89.17,
              ),
              TextButton(
                onPressed: () {
                  Get.to(SearchSection());
                },
                child: Text(
                  'Search',
                  style: GoogleFonts.ibmPlexSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: neutralColor.withOpacity(0.5),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(
                width: 89.17,
              ),
              TextButton(
                onPressed: () {
                  Get.to(BlogSection());
                },
                child: Text(
                  'Blog',
                  style: GoogleFonts.ibmPlexSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: neutralColor.withOpacity(0.5),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
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
