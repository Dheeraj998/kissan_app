import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/presentation/widgets/ks_button.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';

import '../../application/Auth/auth_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KsText(
          text: "Profile",
          fontColor: cBlack,
        ),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final user = state.userModel;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sized0hx30,
              ListTile(
                minLeadingWidth: 0,
                horizontalTitleGap: 00,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                leading: CircleAvatar(
                  backgroundColor: productTileColor,
                  radius: 40.r,
                  child: CircleAvatar(
                    radius: 18.r,
                    child: Icon(Icons.person),
                  ),
                ),
                title:
                    KsText(text: "${user?.firstName}  ${user?.lastName ?? ""}"),
                subtitle: KsText(text: "${user?.email}"),
                trailing: TextButton(
                    onPressed: () {},
                    child: const KsText(
                      text: "Edit",
                      fontColor: productTileColor,
                    )),
              ),
              sized0hx20,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KsText(
                      text: "Accounts",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    sized0hx10,
                    KsText(
                      text: "My Orders",
                      fontSize: 17.sp,
                    ),
                    sized0hx10,
                    Divider(),
                    sized0hx10,
                    KsText(
                      text: "Coupons",
                      fontSize: 17.sp,
                    ),
                    sized0hx10,
                    Divider(),
                    sized0hx10,
                    KsText(
                      text: "Settings",
                      fontSize: 17.sp,
                    ),
                    sized0hx20,
                    KsText(
                      text: "Help",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    sized0hx10,
                    KsText(
                      text: "Contact us",
                      fontSize: 17.sp,
                    ),
                    sized0hx10,
                    Divider(),
                    sized0hx10,
                    KsText(
                      text: "About",
                      fontSize: 17.sp,
                    ),
                    sized0hx30,
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return KsButton(
                          buttonText: "Sign out",
                          buttonColor: productTileColor,
                          buttonTextColor: cPrimaryColor,
                          outerBorederColor: cWhite,
                          isBusy: state.isBusy,
                          onTap: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signOutEvent());
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                RouteName.signinScreen, (route) => false);
                          },
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
