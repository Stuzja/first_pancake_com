import 'dart:convert';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_images.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.username,
    required this.email,
    this.imagePath,
    this.onTap,
  });

  final String username;
  final String email;
  final String? imagePath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        width: double.infinity,
        height: 80.h,
        child: Row(
          children: [
            imagePath != null
                ? Container(
                    width: 65.w,
                    height: 65.w,
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
                      height: 80.h,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(
                    width: 65.w,
                    height: 65.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColors.grey4,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 30.w,
                      height: 30.h,
                      child: Image.asset(
                        AppImages.pancake,
                        color: AppColors.grey3,
                      ),
                    )),
            20.w.widthBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    username,
                    style: AppTextStyles.semiBold15.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    email,
                    style: AppTextStyles.semiBold15.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
