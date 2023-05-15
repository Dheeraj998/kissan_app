import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/widgets/ks_text.dart';

class KsTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinText;
  final String? labelText;
  final IconData? trailingIcon;
  final bool? isDense;
  const KsTextField(
      {super.key,
      required this.textEditingController,
      required this.hinText,
      this.labelText,
      this.trailingIcon,
      this.isDense});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
          isDense: isDense,
          label: KsText(text: labelText ?? ""),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: Color(0xFF7C7C7C))),
          hintText: hinText,
          hintStyle: TextStyle(color: Colors.black),
          suffixIcon: Icon(trailingIcon)),
    );
  }
}
