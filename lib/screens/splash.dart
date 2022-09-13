import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:course_app/auth/login.dart';
import 'package:course_app/screens/home/widget/Bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset("assets/images/11793-books-stack.json"),
      nextScreen: BottomBar(),
      splashIconSize: 300,
      duration: 3000,
      splashTransition: SplashTransition.sizeTransition,
      animationDuration: const Duration(seconds: 1),
      backgroundColor: Colors.white,
    );
  }
}
