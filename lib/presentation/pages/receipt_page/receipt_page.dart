import 'dart:convert';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_images.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({
    super.key,
    required this.receipt,
  });

  final Receipt receipt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            50.h.heightBox,
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
              alignment: Alignment.center,
              child: receipt.photo == null
                  ? SizedBox(
                      width: 110.w,
                      height: 110.h,
                      child: Icon(
                        Icons.add_a_photo_outlined,
                        color: AppColors.grey4,
                        size: 80.r,
                      ),
                    )
                  : Image.memory(
                      base64Decode(
                        receipt.photo!,
                      ),
                      height: 300.h,
                      fit: BoxFit.cover,
                    ),
            ),
            20.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  receipt.title,
                  style: AppTextStyles.title,
                ),
                20.h.heightBox,
                receipt.description != null
                    ? Text(
                        receipt.description!,
                        style: AppTextStyles.underTitle,
                      )
                    : Text(
                        'У этого рецепта отсутствует описание',
                        style: AppTextStyles.underTitle,
                      ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 30.w),
      ),
    );
  }
}
