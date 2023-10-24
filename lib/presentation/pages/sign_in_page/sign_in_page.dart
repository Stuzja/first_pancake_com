import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                60.h.heightBox,
                Text(
                  'Добро пожаловать снова!',
                  style: AppTextStyles.title
                ),
                35.h.heightBox,
                Text(
                  'Email',
                  style: AppTextStyles.label
                ),
                10.h.heightBox,
                AppTextField(
                  hint: 'Введите свою почту',
                  onChanged: (p0) {},
                ),
                25.h.heightBox,
                Text(
                  'Пароль',
                  style: AppTextStyles.label
                ),
                10.h.heightBox,
                AppTextField(
                  hint: 'Введите свой пароль',
                  hidePassword: true,
                  onChanged: (p0) {},
                ),
                330.h.heightBox,
                MainButton(
                  text: 'Войти',
                  backgroundColor: AppColors.pancake5,
                  textColor: AppColors.white,
                  onPressed: () {},
                ),
              ],
            ).paddingSymmetric(horizontal: 30.w),
          ],
        ),
      ),
    );
  }
}
