import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/presentation/widgets/ks_button.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';
import 'package:kisan_app/presentation/widgets/ks_textfield.dart';
import 'package:kisan_app/presentation/widgets/ks_button.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';
import 'package:kisan_app/presentation/widgets/ks_textfield.dart';

class NickNameScreen extends StatelessWidget {
  NickNameScreen({super.key});
  TextEditingController nickNameCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          sized0hx10,
          KsText(
            text: "What would you like us to call you",
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          sized0hx30,
          sized0hx05,
          KsTextField(textEditingController: nickNameCtr, hinText: "nickName"),
          sized0hx30,
          KsButton(
            buttonText: "Take me in",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
