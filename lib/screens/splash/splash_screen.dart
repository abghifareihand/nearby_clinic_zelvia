import 'package:flutter/material.dart';
import 'package:hospital_maps/screens/maps/maps_screen.dart';
import 'package:hospital_maps/services/shared_services.dart';
import 'package:hospital_maps/styles/constant.dart';
import 'package:hospital_maps/screens/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> startTime() async {
    final pref = SharedServices();
    String? email = await pref.getEmail();
    Future.delayed(const Duration(seconds: 3), () {
      if (email != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MapsScreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      }
    });
  }

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 3000),
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo_splash.png'),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      bottomSheet: Container(
        height: 50,
        width: double.infinity,
        color: whiteColor,
        child: Text(
          '\u00a9 Zelvia Ayu Puspita',
          style: greyTextStyle.copyWith(
            fontSize: 12,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
