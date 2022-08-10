import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medical_app/core/res/colors/app_colors.dart';

class AppButton extends HookWidget {
  final Function() onPressed;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final EdgeInsets padding;
  final bool outlined;
  final bool enabled;
  final bool deactivated;
  final double radius = 16;
  final double? fontSize;
  final IconData? icon;

  AppButton.textOnly({
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
    this.textColor = const Color(0xffE87E02),
  })  : outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.transparent;

  AppButton.primary({
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().primaryColor;

  AppButton.primarySm({
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.sm.getPadding,
        backgroundColor = AppColors().primaryColor;

  AppButton.light({
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.grey.shade400,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().lightColor;

  AppButton.lightIcon({
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.grey.shade400,
        outlined = false,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().lightColor;

  AppButton.secondary({
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.grey.shade200,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.grey.shade200;

  AppButton.secondaryIcon({
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.black,
        outlined = false,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.grey.shade200;

  AppButton.info({
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().primaryColor;

  AppButton.warning({
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().primaryColor;

  AppButton.dark({Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.black, super(key: key);

  AppButton.outlined({
    required this.onPressed,
    required this.text,
    this.fontSize = 15,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.black,
        outlined = true,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.black;

  AppButton.outlinedDark({
    required this.onPressed,
    required this.text,
    this.fontSize = 15,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.black,
        padding = ButtonDimens.md.getPadding,
        icon = null,
        outlined = true,
        backgroundColor = Colors.black;

  AppButton.outlinedSecondary({
    required this.onPressed,
    required this.text,
    this.fontSize = 15,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.grey,
        padding = ButtonDimens.md.getPadding,
        icon = null,
        outlined = true,
        backgroundColor = Colors.grey;

  AppButton.outlinedIcon({
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = AppColors().primaryColor,
        outlined = true,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().primaryColor;

  AppButton.outlinedIconSm({
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 10,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = AppColors().primaryColor,
        outlined = true,
        padding = ButtonDimens.sm.getPadding,
        backgroundColor = AppColors().primaryColor;

  AppButton.outlinedIconSecondary({
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = AppColors().lightColor,
        outlined = true,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().lightColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: enabled ? onPressed : () {},
      style: outlined
          ? TextButton.styleFrom(
              padding: padding,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: enabled ? backgroundColor : AppColors().lightColor,
                ),
                borderRadius: BorderRadius.circular(radius),
              ),
            )
          : TextButton.styleFrom(
              enableFeedback: enabled ? true : false,
              padding: padding,
              backgroundColor:
                  enabled ? backgroundColor : backgroundColor.withOpacity(.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: enabled ? textColor : AppColors().lightColor,
                ),
                SizedBox(width: 5),
                Text(
                  text,
                  style: TextStyle(
                    color: enabled ? textColor : AppColors().lightColor,
                    fontSize: fontSize,
                  ),
                )
              ],
            )
          : Text(
              text,
              style: TextStyle(
                color: enabled ? textColor : AppColors().lightColor,
                fontSize: fontSize,
              ),
            ),
    );
  }
}

enum ButtonDimens { sm, md, lg }

extension ButtonDimensExtension on ButtonDimens {
  EdgeInsets get getPadding {
    if (this == ButtonDimens.sm) {
      return EdgeInsets.symmetric(vertical: 2, horizontal: 15);
    }
    return EdgeInsets.symmetric(vertical: 20, horizontal: 15);
  }
}
