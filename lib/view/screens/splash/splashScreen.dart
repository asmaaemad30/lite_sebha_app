import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lite_sebha_app/layoutscreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import '../../../constants.dart';
import '../sebha/sebhaScreen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:SvgPicture.asset(imageSplash) ,
      nextScreen:LayoutScreen(),
      duration: 3000,
      splashIconSize:double.infinity ,
      centered: true,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType:PageTransitionType.fade,

    );

  }
}
