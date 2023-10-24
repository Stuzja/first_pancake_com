import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  static final semiBold50 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static final semiBold26 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.white,
  );

  static final semiBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static final semiBold15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static final title = TextStyle(
    color: AppColors.black,
    fontSize: 36.sp,
    fontWeight: FontWeight.w800,
  );

  static final underTitle = TextStyle(
    color: AppColors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static final label = AppTextStyles.semiBold18.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
}
