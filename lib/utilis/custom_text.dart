import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/Color.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.fontWeight,
      this.color,
      this.fontSize,
      this.fontFamily,
      this.textOverflow,
      this.textDecoration
      // this.googleFont
      });

  final String text;
  final FontWeight? fontWeight;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;
  // final GoogleFonts? googleFont;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        color: color ?? black,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 16.sp,
        overflow: textOverflow ?? TextOverflow.clip,
        decoration: textDecoration);

    if (fontFamily != null) {
      textStyle = GoogleFonts.getFont(
        fontFamily!,
        textStyle: textStyle,
      );
    } else {
      textStyle = GoogleFonts.getFont(
        'Roboto',
        textStyle: textStyle,
      );
    }

    return Text(
      text,
      style: textStyle,
    );
    // return Text(
    //   text,
    //   style: TextStyle(
    //     color: color ?? black,
    //     fontWeight: fontWeight ?? FontWeight.normal,
    //     fontSize: fontSize ?? 16,
    //     fontFamily: fontFamily ?? (googleFont != null ? null : 'Roboto'),
    //     fontFamilyFallback: googleFont != null ? googleFont!.fontFamily : null,
    //     overflow: textOverflow ?? TextOverflow.clip,
    //   ),
    // );
  }
}
