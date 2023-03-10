import 'package:fitness_app/core/base/view/base_view.dart';
import 'package:fitness_app/core/constants/color_constant.dart';
import 'package:fitness_app/product/widget/auth/auth_button_witget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height) {
        return Scaffold(
          backgroundColor: ColorConstant.appBgLight,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Text(
                  'Welcome To',
                  style: GoogleFonts.robotoSlab(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FITNESS APP',
                  style: GoogleFonts.satisfy(
                    fontSize: 25,
                    color: ColorConstant.appNameColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height / 12,
                ),
                AuthButton(
                  height: height,
                  width: width,
                  bgColor: ColorConstant.appBgLight,
                  text: 'Sign With Google',
                  firm: 'apple',
                  func: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthButton(
                  height: height,
                  width: width,
                  bgColor: ColorConstant.appBgLight,
                  text: 'Sign With Google',
                  firm: 'google',
                  func: () {},
                ),
                SizedBox(
                  height: height / 14,
                ),
                const Text(
                  'or',
                  style: TextStyle(
                    color: ColorConstant.greyText,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Text(
                  'Create a new account',
                  style: GoogleFonts.roboto(
                    color: ColorConstant.orangeCreate,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height / 20),
                  child: Text(
                    'Privacy & Policy',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: ColorConstant.greyText,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
