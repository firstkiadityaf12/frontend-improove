import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend_improove/infrastructure/dal/daos/controllers/navbar_controller.dart';
import 'package:frontend_improove/presentation/home/home.screen.dart';
import 'package:frontend_improove/presentation/widgets/sections/blog_section.dart';
import 'package:frontend_improove/presentation/widgets/sections/home_section.dart';
import 'package:frontend_improove/presentation/widgets/sections/search_section.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../infrastructure/theme/colour.dart';

class Navbar extends StatelessWidget {
  Navbar({
    super.key,
  });
  final NavbarController controller = Get.put(NavbarController());
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
              Obx(
                () => MouseRegion(
                  onEnter: (_) => controller.onHoverHome(true),
                  onExit: (_) => controller.onHoverHome(false),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: controller.isHoveringHome.value
                              ? secondaryColor
                              : Colors.transparent,
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
                          color: controller.isHoveringHome.value
                              ? neutralColor
                              : neutralColor.withOpacity(0.5),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 89.17,
              ),
              Obx(
                () => MouseRegion(
                  onEnter: (_) => controller.onHoverSearch(true),
                  onExit: (_) => controller.onHoverSearch(false),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: controller.isHoveringSearch.value
                              ? secondaryColor
                              : Colors.transparent,
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
                        Get.to(SearchSection());
                      },
                      child: Text(
                        'Search',
                        style: GoogleFonts.ibmPlexSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: controller.isHoveringSearch.value
                              ? neutralColor
                              : neutralColor.withOpacity(0.5),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 89.17,
              ),
              Obx(
                () => MouseRegion(
                  onEnter: (_) => controller.onHoverBlog(true),
                  onExit: (_) => controller.onHoverBlog(false),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: controller.isHoveringBlog.value
                              ? secondaryColor
                              : Colors.transparent,
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
                        Get.to(BlogSection());
                      },
                      child: Text(
                        'Blog',
                        style: GoogleFonts.ibmPlexSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: controller.isHoveringBlog.value
                              ? neutralColor
                              : neutralColor.withOpacity(0.5),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
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
