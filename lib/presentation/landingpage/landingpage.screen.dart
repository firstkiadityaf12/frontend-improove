import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../widgets/sections/blog_section.dart';
import '../widgets/sections/footer_section.dart';
import '../widgets/sections/home_section.dart';
import '../widgets/sections/ourapp_section.dart';
import '../widgets/sections/search_section.dart';
import 'controllers/landingpage.controller.dart';

class LandingpageScreen extends GetView<LandingpageController> {
  const LandingpageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeSection(),
          SearchSection(),
          BlogSection(),
          SizedBox(
            height: 66.17,
          ),
          OurAppSection(),
          FooterSection()
        ],
      ),
    );
  }
}
