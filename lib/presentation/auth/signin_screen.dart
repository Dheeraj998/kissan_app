import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/application/bloc/auth_bloc.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/core/route/router.dart';
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
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(height: 60.h),
              KsToggleButton(
                button1Text: "Register",
                button2Text: "Login",
                isLogin: state.isLogin,
                buttonTap: (val) {
                  if (val == true) {
                    context.read<AuthBloc>().add(const AuthEvent.isLogin(true));
                  } else {
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.isLogin(false));
                  }
                },
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
                          state.isLogin == false
                              ? KsToggleButton(
                                  button1Text: "Buyer",
                                  button2Text: "Seller",
                                  buttonHeight: 40.h,
                                  buttonWidth: 160.w,
                                  buyerButton: true,
                                  borderRdius: 50.r,
                                  userType: state.userType == 'Buyer'
                                      ? 'Buyer'
                                      : 'Seller',
                                  buttonTap: (val) {
                                    if (val == true) {
                                      context.read<AuthBloc>().add(
                                          const AuthEvent.isBuyer('Seller'));
                                    } else {
                                      context.read<AuthBloc>().add(
                                          const AuthEvent.isBuyer('Buyer'));
                                    }
                                  },
                                )
                              : const SizedBox(),
                          sized0hx20,
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 34.w),
                            child: Column(
                              children: [
                                KsTextField(
                                  textEditingController:
                                      context.read<AuthBloc>().emailCtr,
                                  hinText: "email",
                                  isDense: true,
                                  labelText: "email",
                                  trailingIcon: Icons.close,
                                ),
                                SizedBox(height: 16.h),
                                KsTextField(
                                  textEditingController:
                                      context.read<AuthBloc>().passwordCtr,
                                  hinText: "passWord",
                                  isDense: true,
                                  labelText: "password",
                                  trailingIcon: Icons.remove_red_eye,
                                ),
                                SizedBox(height: 16.h),
                                state.isLogin != true
                                    ? KsTextField(
                                        textEditingController: signinController,
                                        hinText: "confirm passWord",
                                        isDense: true,
                                        labelText: "confirm password",
                                        trailingIcon: Icons.remove_red_eye,
                                      )
                                    : const SizedBox(),
                                sized0hx40,
                                KsButton(
                                  buttonText: "Login",
                                  onTap: () {
                                    if (state.isLogin == false) {
                                      Navigator.of(context)
                                          .pushNamed(RouteName.nickNameScreeen);
                                    } else {}
                                  },
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
          );
        },
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
  final bool? isLogin;
  final String? userType;
  final bool? buyerButton;
  final Function(bool val) buttonTap;
  const KsToggleButton({
    super.key,
    this.button1Text,
    this.button2Text,
    this.borderRdius,
    this.buttonHeight,
    this.buttonWidth,
    this.isLogin,
    required this.buttonTap,
    this.userType,
    this.buyerButton,
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
          Flexible(
            child: GestureDetector(
              onTap: () => buttonTap(false),
              child: Container(
                decoration: BoxDecoration(
                    color: isLogin == true
                        ? buyerButton == true && userType == 'Buyer'
                            ? cPrimaryColor
                            : Colors.white
                        : cPrimaryColor,
                    borderRadius: BorderRadius.circular(borderRdius ?? 12.r),
                    border: Border.all(color: cWhite, width: 2.5)),
                child: Center(
                    child: KsText(
                  text: button1Text ?? "",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                )),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () => buttonTap(true),
              child: Container(
                  decoration: BoxDecoration(
                      color: isLogin == false
                          ? buyerButton == true && userType == 'Seller'
                              ? cPrimaryColor
                              : Colors.white
                          : cPrimaryColor,
                      borderRadius: BorderRadius.circular(borderRdius ?? 12.r),
                      border: Border.all(color: cWhite, width: 2.5)),
                  child: Center(
                      child: KsText(
                    text: button2Text ?? "",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ))),
            ),
          ),
        ],
      ),
    );
  }
}
