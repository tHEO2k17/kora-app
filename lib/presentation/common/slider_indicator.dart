import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medical_app/core/context_extensions.dart';

class SliderIndicator extends HookWidget {
  final int slideCount;
  final int currentSlide;
  final Color? activeColor;
  final Color? dotColor;

  const SliderIndicator({
    Key? key,
    required this.slideCount,
    required this.currentSlide,
    this.activeColor,
    this.dotColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return slideCount > 1
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                slideCount,
                (index) => AnimatedContainer(
                  curve: Curves.linear,
                  duration: const Duration(milliseconds: 300),
                  width: currentSlide == index ? 20 : 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(
                    vertical: 7.0,
                    horizontal: 5.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index
                        ? activeColor ?? context.resources.color.primaryColor
                        : dotColor ?? Colors.grey.shade300,
                  ),
                ),
              ).toList(),
            ),
          )
        : const SizedBox();
  }
}
