import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/utils/app_images.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
            child: Image.asset(
              AppImages.landingImage,
              height: 439.h,
              width: 344.w,
            ),
          ),
          sized0hx10,
          sized0hx05,
          Column(
            children: [
              KsText(
                text: "KISAN",
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
              ),
              sized0hx05,
              sized0hx10,
              KsText(
                  text:
                      "Experience the freshness of locally grown vegetables handpicked and delivered straight to your doorstep.Our selection of high-quality produce is the perfect addition to any meal.Shop now and taste the difference. "),
              sized0hx30,
              ElevatedButton(
                  onPressed: () {}, child: KsText(text: "Let's Begin"))
            ],
          )
        ],
      )),
    );
  }
}
