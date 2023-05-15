import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/presentation/auth/signin_screen.dart';
import 'package:kisan_app/presentation/widgets/ks_button.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';
import 'package:kisan_app/presentation/widgets/ks_textfield.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  TextEditingController firstNameCtr = TextEditingController();
  TextEditingController lastnameCtr = TextEditingController();
  TextEditingController dateOfBirthCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KsText(text: "Register"),
      ),
      body: Column(
        children: [
          IgnorePointer(
            ignoring: true,
            child: KsToggleButton(
              button1Text: "Buyer",
              button2Text: "Seller",
              buttonHeight: 44.h,
              borderRdius: 50.r,
            ),
          ),
          sized0hx50,
          sized0hx10,
          KsTextField(
              textEditingController: firstNameCtr, hinText: "First name"),
          sized0hx20,
          KsTextField(textEditingController: lastnameCtr, hinText: "Last name"),
          sized0hx20,
          KsTextField(
              textEditingController: dateOfBirthCtr, hinText: "Date of birth"),
          sized0hx30,
          KsButton(
            buttonText: "Register",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
