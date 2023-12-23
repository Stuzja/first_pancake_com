import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscribeButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isSubscribed;
  const SubscribeButton({
    super.key,
    required this.onTap,
    required this.isSubscribed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isSubscribed
          ? Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.grey3,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 6.5.h,
                  bottom: 6.5.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Подписан",
                      style: AppTextStyles.label.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.check_rounded,
                      color: AppColors.white,
                      size: 30.r,
                    ),
                  ],
                ),
              ),
            )
          : Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.pancake5,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 5.h,
                  bottom: 5.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Подписаться",
                      style: AppTextStyles.label.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "+",
                      style: AppTextStyles.title.copyWith(
                        fontSize: 30.sp,
                        height: 0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
