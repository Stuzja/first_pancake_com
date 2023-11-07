import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPageItem extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;
  final Color? iconColor;
  final List<Color>? gradient;

  const MainPageItem({
    super.key,
    required this.label,
    required this.color,
    required this.icon,
    this.iconColor,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: AppTextStyles.label,
        ),
        5.h.heightBox,
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 255, 200, 138),
                AppColors.pancake2,
              ],
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 35.r,
          ),
        ),
      ],
    );
  }
}
