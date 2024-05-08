import 'package:flutter/material.dart';

import '../common/Color.dart';
import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      this.title,
      this.hintWeight,
      this.hintFontFamily,
      this.hintFontSize,
      this.hintColor,
      this.weight,
      this.fontFamily,
      this.hintText,
      this.fontSize,
      this.titleColor,
      this.backgroundColor,
      this.onTap,
      this.minLine,
      this.maxLine,
      this.textInputType,
      this.suffix,
      this.prefix,
      this.inputBorder,
      this.textFieldColor,
      this.contentPadding});

  final TextEditingController? controller;
  final String? title;
  final String? hintText;
  final Color? titleColor;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? weight;
  final Color? hintColor;
  final double? hintFontSize;
  final String? hintFontFamily;
  final FontWeight? hintWeight;
  final Color? backgroundColor;
  final TextInputType? textInputType;
  final int? maxLine;
  final int? minLine;
  final Function()? onTap;
  final Widget? suffix;
  final Widget? prefix;
  final InputBorder? inputBorder;
  final EdgeInsets? contentPadding;
  final Color? textFieldColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title!,
          color: titleColor,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: weight,
        ),
        TextFormField(
          controller: controller,
          keyboardType: textInputType ?? TextInputType.text,
          maxLines: maxLine ?? 1,
          minLines: minLine ?? 1,
          onTap: onTap ?? () {},
          style: TextStyle(
            color: textFieldColor,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: weight,
          ),
          decoration: InputDecoration(
              contentPadding: contentPadding ?? EdgeInsets.only(left: 10),
              fillColor: backgroundColor ?? white,
              filled: true,
              focusColor: white,
              focusedBorder: inputBorder ?? OutlineInputBorder(),
              enabledBorder: inputBorder ?? OutlineInputBorder(),
              suffixIcon: suffix ?? null,
              prefix: prefix ?? null,
              hintText: hintText ?? '',
              hintStyle: TextStyle(
                color: hintColor ?? black,
                fontSize: hintFontSize ?? 16,
                fontFamily: hintFontFamily ?? '',
                fontWeight: hintWeight ?? FontWeight.w400,
              )),
        ),
      ],
    );
  }
}
