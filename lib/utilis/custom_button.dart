import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustombuttonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final double? buttonWidth;
  final String? text;
  final double? buttonHeight;
  final double? buttonElevation;
  final Color? buttonBackgroundColor;
  final Color? textColor;
  final double? buttonborderRadius;
  final EdgeInsetsGeometry? margin;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  const CustombuttonWidget(
      {Key? key,
      required this.onPressed,
      this.margin,
      this.buttonBackgroundColor,
      this.buttonWidth,
      this.buttonElevation,
      this.buttonHeight,
      this.buttonborderRadius,
      this.fontSize,
      this.fontWeight,
      this.text,
      this.fontFamily,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: buttonWidth ?? 45,
        height: buttonHeight ?? 45,
        // margin: margin ?? const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              elevation: buttonElevation ?? 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonborderRadius ?? 8.0),
              ),
              backgroundColor:
                  buttonBackgroundColor ?? const Color(0xff26A4FF)),
          child: CustomText(
            text: text!,
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor,
          ),
        ));
  }
}
