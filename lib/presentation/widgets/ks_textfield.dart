import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';

class KsTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinText;
  final String? labelText;
  final IconData? trailingIcon;
  final bool? isDense;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  const KsTextField(
      {super.key,
      required this.textEditingController,
      required this.hinText,
      this.labelText,
      this.trailingIcon,
      this.textInputType,
      this.isDense,
      this.prefixIcon,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      focusNode: focusNode,
      keyboardType: textInputType,
      decoration: InputDecoration(
          isDense: isDense,
          prefixIcon: prefixIcon,
          label: KsText(
            text: labelText ?? "",
            fontColor: cBlack,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Color(0xFF7C7C7C))),
          hintText: hinText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          hintStyle: const TextStyle(color: cBlack),
          suffixIcon: Icon(trailingIcon)),
    );
  }
}
