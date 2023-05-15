import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/utils/app_images.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/presentation/widgets/ks_button.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';

import 'package:kisan_app/presentation/widgets/ks_textfield.dart';

class SiginInScreen extends StatelessWidget {
  SiginInScreen({super.key});

  TextEditingController signinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1DDDD),
      body: Column(
        children: [
          SizedBox(height: 60.h),
          KsToggleButton(
            button1Text: "Register",
            button2Text: "Login",
          ),
          SizedBox(height: 46.h),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r)),
              child: ColoredBox(
                color: cWhite,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 52.h),
                      Image.asset(
                        AppImages.signinImage,
                        height: 198.h,
                        width: 187.w,
                      ),
                      SizedBox(height: 52.h),
                      KsToggleButton(
                        button1Text: "Buyer",
                        button2Text: "Seller",
                        buttonHeight: 35.h,
                        buttonWidth: 150.w,
                        borderRdius: 50.r,
                      ),
                      sized0hx20,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 34.w),
                        child: Column(
                          children: [
                            KsTextField(
                              textEditingController: signinController,
                              hinText: "email",
                              isDense: true,
                              labelText: "email",
                              trailingIcon: Icons.close,
                            ),
                            SizedBox(height: 16.h),
                            KsTextField(
                              textEditingController: signinController,
                              hinText: "passWord",
                              isDense: true,
                              labelText: "password",
                              trailingIcon: Icons.remove_red_eye,
                            ),
                            SizedBox(height: 16.h),
                            KsTextField(
                              textEditingController: signinController,
                              hinText: "passWord",
                              isDense: true,
                              labelText: "password",
                              trailingIcon: Icons.remove_red_eye,
                            ),
                            sized0hx40,
                            KsButton(
                              buttonText: "Login",
                              onTap: () {},
                              innerBorderColor: cPrimaryColor,
                            ),
                            sized0hx40
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class KsToggleButton extends StatelessWidget {
  final String? button1Text;
  final String? button2Text;
  final double? borderRdius;
  final double? buttonHeight;
  final double? buttonWidth;
  const KsToggleButton({
    super.key,
    this.button1Text,
    this.button2Text,
    this.borderRdius,
    this.buttonHeight,
    this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 33.w),
      height: buttonHeight ?? 58.h,
      width: buttonWidth ?? double.infinity,
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(borderRdius ?? 12.r),
        border: Border.all(color: cPrimaryColor, width: 1),
      ),
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: cPrimaryColor,
                borderRadius: BorderRadius.circular(borderRdius ?? 12.r),
                border: Border.all(color: cWhite, width: 2.5)),
            child: Center(
                child: KsText(
              text: button1Text ?? "",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          )),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: cWhite, width: 2.5)),
                  child: Center(
                      child: KsText(
                    text: button2Text ?? "",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  )))),
        ],
      ),
    );
  }
}
