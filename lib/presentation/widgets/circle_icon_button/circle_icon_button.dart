import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final Color? borderColor;
  final double? radius;
  final HitTestBehavior? behavior;
  final Size? iconSize;
  final double? gestureSize;

  const CircleIconButton({
    Key? key,
    required this.icon,
     this.onPressed,
    this.radius,
    this.behavior,
    this.borderColor = AppColors.pancake2,
    this.iconSize, this.gestureSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: behavior,
      onTap: onPressed,
      child: SizedBox(
        height: gestureSize,
        width: gestureSize,
        child: Center(
          child: Container(
            width: iconSize?.width,
            height: iconSize?.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: borderColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(radius ?? 5.r),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}
