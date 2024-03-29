import 'package:easy_localization/easy_localization.dart';
import 'package:fitness_app/core/base/view/base_view.dart';
import 'package:fitness_app/core/constants/color_constant.dart';
import 'package:fitness_app/product/widget/auth/auth_button_witget.dart';
import 'package:flutter/material.dart';
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
                  'welcomeTo',
                  style: GoogleFonts.robotoSlab(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ).tr(),
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
                  text: 'signInApple'.tr(),
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
                  text: 'signInGoogle'.tr(),
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
                ).tr(),
                SizedBox(
                  height: height / 30,
                ),
                Text(
                  'createAccount',
                  style: GoogleFonts.roboto(
                    color: ColorConstant.appNameColor,
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ).tr(),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height / 20),
                  child: Text(
                    'privacy',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: ColorConstant.greyText,
                    ),
                  ).tr(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
