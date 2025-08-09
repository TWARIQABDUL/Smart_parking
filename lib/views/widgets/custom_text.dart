import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String content;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? textColor;

  const CustomText({
    super.key,
    required this.content,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.getFont(
        fontFamily ?? "Roboto",
        fontSize: fontSize ?? 17,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: textColor ?? Colors.blueGrey[900],
      ),
    );
  }
}
