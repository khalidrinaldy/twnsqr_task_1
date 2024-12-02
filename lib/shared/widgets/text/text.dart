import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    this.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.textScaler,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  final String data;
  final Key? key;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final TextScaler? textScaler;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return sizingInformation.isDesktop
          ? SelectableText(
              data,
              key: key,
              style: style,
              strutStyle: strutStyle,
              textAlign: textAlign,
              textDirection: textDirection,
              textScaler: textScaler,
              textHeightBehavior: textHeightBehavior,
              textWidthBasis: textWidthBasis,
              maxLines: maxLines,
              semanticsLabel: semanticsLabel,
            )
          : Text(
              data,
              key: key,
              style: style,
              strutStyle: strutStyle,
              textAlign: textAlign,
              textDirection: textDirection,
              locale: locale,
              softWrap: softWrap,
              overflow: overflow,
              textScaler: textScaler,
              textHeightBehavior: textHeightBehavior,
              textWidthBasis: textWidthBasis,
              maxLines: maxLines,
              semanticsLabel: semanticsLabel,
              selectionColor: selectionColor,
            );
    });
  }
}
