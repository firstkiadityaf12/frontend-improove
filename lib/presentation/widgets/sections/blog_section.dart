import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/colour.dart';
import '../card_blog.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 870,
      width: double.infinity,
      color: neutralColor,
      child: Column(
        children: [
          Text(
            'What Can We Do',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 26,
              color: neutralBlack,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: 12.5,
          ),
          RichText(
            text: TextSpan(
              text: 'Your College is ',
              style: GoogleFonts.plusJakartaSans(
                color: neutralBlack,
                fontSize: 46,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
              children: [
                TextSpan(
                  text: 'A Few Clicks Away',
                  style: GoogleFonts.plusJakartaSans(
                    color: secondaryColor,
                    fontSize: 46,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 19.17,
          ),
          Text(
            'Discover why students and families trust Prep Intel for their educational journeys. Our community of satisfied users\nshares their stories of how PrepIntel has made a difference in their search for the right college.',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              color: Color(0xff695959),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardBlog(
                number: '01.',
                title: 'Project Simulation',
                description:
                    'We\'ve done the research for you – skip the hours of online searching and find what fits you best effortlessly.',
                image: 'project',
                jarak: 0,
              ),
              SizedBox(
                width: 36.67,
              ),
              CardBlog(
                number: '02.',
                title: 'CV Analyzer',
                description:
                    'With the power of AI and machine learning, we ensure to expedite the matching process tremendously and accurately.',
                image: 'cv',
                jarak: 0.2,
              ),
              SizedBox(
                width: 36.67,
              ),
              CardBlog(
                number: '03.',
                title: 'AI Interview',
                description:
                    'Connect with recruiters, colleges and landlords in seconds',
                image: 'ai',
                jarak: 26.4,
              ),
            ],
          )
        ],
      ),
    );
  }
}