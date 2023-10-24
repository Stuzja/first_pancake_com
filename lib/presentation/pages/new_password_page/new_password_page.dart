import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            60.h.heightBox,
            Text(
              'Придумайте новый пароль',
              style: AppTextStyles.title,
            ),
            35.h.heightBox,
            Text(
              'Пароль',
              style: AppTextStyles.label,
            ),
            10.h.heightBox,
            AppTextField(
              hint: 'Введите новый пароль',
              hidePassword: true,
              onChanged: (p0) {},
            ),
            25.h.heightBox,
            Text(
              'Повторите свой пароль',
              style: AppTextStyles.label,
            ),
            10.h.heightBox,
            AppTextField(
              hint: 'Повторите новый пароль',
              hidePassword: true,
              onChanged: (p0) {},
            ),
            365.h.heightBox,
            MainButton(
              text: 'Зарегистрироваться',
              backgroundColor: AppColors.pancake5,
              textColor: AppColors.white,
              onPressed: () {
                context.router.push(const SignInRoute());
              },
            ),
          ],
        ).paddingSymmetric(horizontal: 30.w),
      ),
    );
  }
}
