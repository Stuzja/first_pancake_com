import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_images.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LargeRecipeCard extends StatelessWidget {
  const LargeRecipeCard({
    super.key,
    required this.title,
    required this.description,
    required this.onTap,
    this.imagePath,
    required this.id,
    required this.userId,
    required this.author,
    required this.timestamp,
  });

  final int id;
  final int userId;
  final String author;
  final String title;
  final String description;
  final VoidCallback onTap;
  final String timestamp;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Ink(
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.title.copyWith(
                        fontSize: 22.5.sp,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            context.router.push(ProfileRoute(userId: userId));
                          },
                          child: Text(
                            author,
                            style: AppTextStyles.title.copyWith(
                              fontSize: 15.sp,
                              color: AppColors.pancake5,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'создан ${timestamp.substring(0, 10)}',
                          style: AppTextStyles.underTitle.copyWith(
                            color: AppColors.pancake5,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      alignment: Alignment.center,
                      child: imagePath != null
                          ? Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: AppColors.grey4,
                                ),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Image.memory(
                                base64Decode(
                                  imagePath!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            )
                          : Container(
                              height: 200.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: AppColors.grey4,
                                ),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 100.w,
                                height: 100.h,
                                child: Image.asset(
                                  AppImages.pancake,
                                  color: AppColors.grey3,
                                ),
                              )),
                    ),
                    Text(
                      description,
                      style: AppTextStyles.semiBold15.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.h,
                  color: AppColors.grey1,
                )
              ],
            ).paddingSymmetric(horizontal: 15.w),
          ),
        ),
      ],
    ).paddingSymmetric(vertical: 5.h);
  }
}
