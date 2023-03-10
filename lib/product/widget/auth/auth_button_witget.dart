import 'package:fitness_app/core/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.height,
    required this.width,
    required this.bgColor,
    required this.text,
    required this.func,
    required this.firm,
  });
  final String firm;
  final double height;
  final double width;
  final Color bgColor;
  final String text;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const StadiumBorder(
          side: BorderSide(
            color: ColorConstant.authButtonBorder,
            width: 1.3,
          ),
        ),
        shadowColor: ColorConstant.authButtonBorder,
        backgroundColor: bgColor,
        fixedSize: Size(width / 1.1, height / 15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          firm == 'google'
              ? SvgPicture.asset(
                  'assets/svg/google.svg',
                  height: 30,
                )
              : const Icon(
                  Icons.apple,
                  color: ColorConstant.appleBlack,
                  size: 35,
                ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: GoogleFonts.arimo(
              fontSize: 18,
              color: firm == 'google'
                  ? ColorConstant.googleColor
                  : ColorConstant.blackText,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
