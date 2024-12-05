import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_seeking_ui/utils/color_res.dart';
import 'package:job_seeking_ui/utils/style.dart';

class EvolvedButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;
  final Color? borderColor;
  final TextStyle? textStyle;
  final void Function() onTap;
  final EdgeInsets margin;
  final EdgeInsets? padding;
  final bool hasShadow;
  final bool enabled;
  final bool dynamicSize;
  final bool onlyBorder;

  const EvolvedButton({
    required this.title,
    required this.onTap,
    this.height,
    this.width,
    this.padding,
    this.borderRadius,
    this.color,
    this.borderColor,
    this.textStyle,
    this.margin = EdgeInsets.zero,
    this.hasShadow = false,
    this.enabled = true,
    this.dynamicSize = false,
    this.onlyBorder = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Container(
        margin: margin,
        height: dynamicSize ? null : height ?? 45.h,
        width: width ?? (dynamicSize ? null : Get.width),
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 4.h,
            ),
        decoration: BoxDecoration(
          border: borderColor == null
              ? null
              : Border.all(
                  color: borderColor!,
                ),
          color: onlyBorder
              ? null
              : enabled
                  ? color ?? ColorRes.primaryColor
                  : ColorRes.lightGrey,
          borderRadius: BorderRadius.all(
            Radius.circular((borderRadius ?? 30).r),
          ),
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    blurRadius: 4,
                    color: ColorRes.lightGrey.withOpacity(0.5),
                  ),
                ]
              : null,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: textStyle ??
              Style.textStyle(
                color: onlyBorder ? ColorRes.primaryColor : ColorRes.white,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
