import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/presentation/widgets/custom_snackbar.dart';
import 'package:kisan_app/presentation/widgets/ks_button.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';
import 'package:kisan_app/presentation/widgets/ks_textfield.dart';

import '../../application/Auth/auth_bloc.dart';

class NickNameScreen extends StatelessWidget {
  NickNameScreen({super.key});
  TextEditingController nickNameCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: cBlack,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sized0hx50,
              KsText(
                text: "What would you like us to call you",
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              sized0hx30,
              sized0hx05,
              KsTextField(
                  textEditingController:
                      context.read<AuthBloc>().state.nickNameCtr,
                  hinText: "",
                  labelText: "nickName"),
              sized0hx30,
              KsButton(
                buttonText: "Take me in",
                onTap: () {
                  if (context
                      .read<AuthBloc>()
                      .state
                      .nickNameCtr
                      .text
                      .isNotEmpty) {
                    Navigator.pushNamed(context, RouteName.registerScreen);
                  } else {
                    CustomSnackbar.show(context, "Please enter your nick name");
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
