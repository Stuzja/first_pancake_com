import 'dart:convert';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_images.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiptCards extends StatelessWidget {
  const ReceiptCards({
    super.key,
    required this.title,
    required this.description,
    required this.onTap,
    this.imagePath,
    this.timeStamp,
  });

  final String title;
  final String description;
  final VoidCallback onTap;
  final String? imagePath;
  final String? timeStamp;

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
                  RichText(
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                    text: TextSpan(
                      text: title,
                      style: AppTextStyles.semiBold15.copyWith(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '   ${timeStamp!.substring(0, 10)}',
                          style: AppTextStyles.semiBold15.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    description,
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
