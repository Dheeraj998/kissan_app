import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/application/bloc/auth_bloc.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/firebase_services/auth_methods.dart';
import 'package:kisan_app/presentation/auth/signin_screen.dart';
import 'package:kisan_app/presentation/widgets/custom_snackbar.dart';
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
    // final ctr = context.read<AuthBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const KsText(text: "Register"),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            print("${state.isBusy}--------------------------------------");
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  IgnorePointer(
                    ignoring: true,
                    child: KsToggleButton(
                      button1Text: "Buyer",
                      button2Text: "Seller",
                      buttonHeight: 44.h,
                      userType: state.userType == 'Buyer' ? 'Buyer' : 'Seller',
                      buyerButton: true,
                      borderRdius: 50.r,
                      buttonTap: (val) {
                        if (val == true) {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.isBuyer('Seller'));
                        } else {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.isBuyer('Buyer'));
                        }
                      },
                    ),
                  ),
                  sized0hx50,
                  sized0hx10,
                  KsTextField(
                    textEditingController: state.firstNameCtr,
                    hinText: "First name",
                    labelText: "firsname*",
                  ),
                  sized0hx20,
                  KsTextField(
                    textEditingController: lastnameCtr,
                    hinText: "Last name",
                    labelText: "lastname",
                  ),
                  sized0hx20,
                  KsTextField(
                    textEditingController: state.dobCtr,
                    hinText: "Date of birth",
                    labelText: "date of birth*",
                  ),
                  sized0hx30,
                  KsButton(
                    buttonText: "Register",
                    isBusy: state.isBusy,
                    onTap: () {
                      if (state.firstNameCtr.text.isEmpty ||
                          state.dobCtr.text.isEmpty) {
                        CustomSnackbar.show(
                            context, "please fill mandatory fields");
                        return;
                      }
                      // AuthMethods().signupUser(
                      //     email: context.read<AuthBloc>().emailCtr.text,
                      //     password: context.read<AuthBloc>().passwordCtr.text,
                      //     nickname: context.read<AuthBloc>().nickNameCtr.text,
                      //     firstname: context.read<AuthBloc>().firstNameCtr.text,
                      //     lastname: lastnameCtr.text,
                      //     type: context.read<AuthBloc>().userType,
                      //     dob: context.read<AuthBloc>().dobCtr.text);
                      context.read<AuthBloc>().add(AuthEvent.signupUserEvent(
                          email: state.emailCtr.text,
                          password: state.passwordCtr.text,
                          type: state.userType,
                          firstname: state.firstNameCtr.text,
                          dob: state.dobCtr.text));
                      print("${state.isBusy}@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
