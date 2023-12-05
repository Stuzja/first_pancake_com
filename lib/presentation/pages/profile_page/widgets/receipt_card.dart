import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiptCards extends StatelessWidget {
  const ReceiptCards({
    super.key,
    required this.title,
    required this.description,
    this.imagePath,
  });

  final String title;
  final String description;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                    child: Image.asset(imagePath!),
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
                    child: const Icon(
                      Icons.hourglass_empty_outlined,
                      color: AppColors.grey3,
                    ),
                  ),
            20.w.widthBox,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.label,
                    overflow: TextOverflow.ellipsis,
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
            )
          ],
        ),
      ),
    );
  }
}
