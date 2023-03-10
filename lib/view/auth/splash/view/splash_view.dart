import 'package:fitness_app/view/auth/splash/viewmodel/splash_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/animation/loading.json',
          width: 400,
          height: 400,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
