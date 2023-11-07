import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_icons.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                60.h.heightBox,
                Container(
                  width: 200.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppColors.grey4,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(
                    Icons.hourglass_empty_outlined,
                    color: AppColors.grey3,
                  ),
                ),
                20.h.heightBox,
                Text(
                  'Jane Doe',
                  style: AppTextStyles.title,
                ),
                20.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 170.w,
                        height: 30.h,
                        alignment: Alignment.center,
                        child: Text(
                          '14 подписок',
                          style: AppTextStyles.underTitle,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 170.w,
                        height: 30.h,
                        alignment: Alignment.center,
                        child: Text(
                          '88 подписчиков',
                          style: AppTextStyles.underTitle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 30.w),
      ),
    );
  }
}
