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
  final double radius = 10;
  final double? fontSize;
  final IconData? icon;

  AppButton.textOnly({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
    this.textColor = const Color(0xffE87E02),
  })  : outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.transparent,
        super(key: key);

  AppButton.primary({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().primaryColor,
        super(key: key);

  AppButton.primaryTransparent({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.white.withOpacity(.2),
        super(key: key);

  AppButton.primarySm({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.sm.getPadding,
        backgroundColor = AppColors().primaryColor,
        super(key: key);

  AppButton.primaryTransparentIconSm({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 15,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        padding = const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        backgroundColor = Colors.white.withOpacity(.1),
        super(key: key);

  AppButton.light({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.grey.shade400,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().lightColor,
        super(key: key);

  AppButton.lightIcon({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.grey.shade400,
        outlined = false,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().lightColor,
        super(key: key);

  AppButton.secondary({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.grey.shade200,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.grey.shade200,
        super(key: key);

  AppButton.secondaryIcon({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.black,
        outlined = false,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.grey.shade200,
        super(key: key);

  AppButton.info({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().primaryColor,
        super(key: key);

  AppButton.warning({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().primaryColor,
        super(key: key);

  AppButton.dark({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.white,
        outlined = false,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.black,
        super(key: key);

  AppButton.outlined({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 15,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.black,
        outlined = true,
        icon = null,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = Colors.black,
        super(key: key);

  AppButton.outlinedDark({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 15,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.black,
        padding = ButtonDimens.md.getPadding,
        icon = null,
        outlined = true,
        backgroundColor = Colors.black,
        super(key: key);

  AppButton.outlinedSecondary({
    Key? key,
    required this.onPressed,
    required this.text,
    this.fontSize = 15,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = Colors.grey,
        padding = ButtonDimens.md.getPadding,
        icon = null,
        outlined = true,
        backgroundColor = Colors.grey,
        super(key: key);

  AppButton.outlinedIcon({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = AppColors().primaryColor,
        outlined = true,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().primaryColor,
        super(key: key);

  AppButton.outlinedIconSm({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 10,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = AppColors().primaryColor,
        outlined = true,
        padding = ButtonDimens.sm.getPadding,
        backgroundColor = AppColors().primaryColor,
        super(key: key);

  AppButton.outlinedIconSecondary({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.fontSize = 16,
    this.enabled = true,
    this.deactivated = false,
  })  : textColor = AppColors().lightColor,
        outlined = true,
        padding = ButtonDimens.md.getPadding,
        backgroundColor = AppColors().lightColor,
        super(key: key);

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
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: enabled ? textColor : AppColors().lightColor,
                      fontSize: fontSize,
                    ),
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
      return const EdgeInsets.symmetric(vertical: 2, horizontal: 15);
    }
    return const EdgeInsets.symmetric(vertical: 20, horizontal: 15);
  }
}
