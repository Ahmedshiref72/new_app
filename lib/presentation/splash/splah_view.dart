import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_app/presentation/resources/assets_manager.dart';
import 'package:new_app/presentation/resources/color_manager.dart';
import 'package:new_app/presentation/resources/constants_manager.dart';
import 'package:new_app/presentation/resources/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Timer? _timer;

  _startDelay(){
    _timer =Timer(const Duration(seconds: AppConstants.splashDelay),_getNext);
  }
  _getNext(){
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }
  @override
  void initState() {
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: const Center(
        child: Image(
          image: AssetImage(ImageAssets.splashLogo),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
