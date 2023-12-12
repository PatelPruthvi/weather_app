import 'package:flutter/material.dart';
import 'package:weather_app/resources/colours/colours.dart';
import 'package:weather_app/resources/images/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColours.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(ImageAssets.sunSlowRain, height: 200, width: 200),
        ),
      ),
    );
  }
}
