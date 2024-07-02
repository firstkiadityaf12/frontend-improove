import 'package:flutter/material.dart';
import 'package:frontend_improove/presentation/widgets/cooperation_with.dart';
import 'package:frontend_improove/presentation/widgets/description_signup.dart';
import 'package:frontend_improove/presentation/widgets/navbar.dart';

import '../../../infrastructure/theme/colour.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 890,
      width: double.infinity,
      color: primaryColor,
      child: Stack(
        children: [
          Positioned(
            left: -150,
            child: Image.asset('/backgrounds/catur2.png'),
          ),
          Positioned(
            right: -40,
            bottom: 0,
            child: Image.asset('/backgrounds/vector_yellow.png'),
          ),
          Positioned(
            right: -755,
            top: -305,
            child: Image.asset(
              '/backgrounds/bro.png',
              height: 1286.88,
              width: 1552,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Navbar(),
              SizedBox(
                height: 88.32,
              ),
              DescriptionSignUp(),
              SizedBox(
                height: 55.92,
              ),
              CooperationWith(),
            ],
          )
        ],
      ),
    );
  }
}
