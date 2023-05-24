import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';

class KsButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String buttonText;
  final double? height;
  final double? width;
  final Color? outerBorederColor;
  final Color? innerBorderColor;
  final Color? buttonTextColor;
  final Color? buttonColor;
  final double? buttonFontSize;
  final FontWeight? buttonTextWeight;
  final double? outerBorderWidth;
  final double? innerBorderWidth;
  final bool? isBusy;
  const KsButton({
    super.key,
    this.onTap,
    required this.buttonText,
    this.height,
    this.width,
    this.outerBorederColor,
    this.innerBorderColor,
    this.buttonTextColor,
    this.buttonColor,
    this.buttonFontSize,
    this.buttonTextWeight,
    this.outerBorderWidth,
    this.innerBorderWidth,
    this.isBusy,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: cPrimaryColor,
          borderRadius: BorderRadius.circular(12.r),
          border:
              Border.all(color: cPrimaryColor, width: outerBorderWidth ?? 1),
        ),
        child: Container(
          height: 52.h,
          decoration: BoxDecoration(
            color: cPrimaryColor,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
                color: innerBorderColor ?? cWhite,
                width: innerBorderWidth ?? 2.5),
          ),
          child: Center(
            child: isBusy == true
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(),
                  )
                : KsText(
                    text: buttonText,
                    fontColor: cWhite,
                    fontSize: buttonFontSize,
                    fontWeight: buttonTextWeight,
                  ),
          ),
        ),
      ),
    );
  }
}
