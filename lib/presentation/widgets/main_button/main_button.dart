import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final bool gradient;

  const MainButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.gradient = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16.r),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(16.r),
        child: Ink(
          width: double.infinity,
          height: 60.h,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          decoration: gradient
              ? BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 255, 200, 138),
                      AppColors.pancake2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                )
              : BoxDecoration(
                  color: backgroundColor ?? AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyles.semiBold18.copyWith(
                  color: textColor ?? AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ).toCenter(),
    );
  }
}
