import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/splash_view.dart';

abstract class SplashViewModel extends State<SplashScreen> {
  void initState() {
    Future.delayed(const Duration(seconds: 5), () async {
      context.pushReplacement('/auth');
    });
  }
}
