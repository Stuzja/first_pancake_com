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
            receipt.photo == null
                ? Container(
                    width: 200.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColors.grey4,
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Image.asset(
                      receipt.photo!,
                      width: 100.w,
                      height: 100.h,
                    ),
                  )
                : Container(
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
                    child: SizedBox(
                      width: 80.w,
                      height: 80.h,
                      child: Image.asset(
                        AppImages.pancake,
                        color: AppColors.grey3,
                      ),
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
