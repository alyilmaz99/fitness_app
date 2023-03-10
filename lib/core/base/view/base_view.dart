import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  final Widget Function(BuildContext context, double width, double height)
      builder;
  // final AppBar? appBar;

  const BaseView({super.key, required this.builder});
  static int _selectedIndex = 0;

  static MediaQueryData _mediaQueryData = const MediaQueryData();
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: builder(context, screenWidth, screenHeight),
      ),
    );
  }
}
