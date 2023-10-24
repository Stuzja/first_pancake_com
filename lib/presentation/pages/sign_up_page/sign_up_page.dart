import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                60.h.heightBox,
                Text(
                  'Давайте создадим аккаунт',
                  style: AppTextStyles.title,
                ),
                40.h.heightBox,
                Text(
                  'Имя пользователя',
                  style: AppTextStyles.label,
                ),
                10.h.heightBox,
                AppTextField(
                  hint: 'Введите ваше имя',
                  onChanged: (p0) {},
                ),
                25.h.heightBox,
                Text(
                  'Email',
                  style: AppTextStyles.label,
                ),
                10.h.heightBox,
                AppTextField(
                  hint: 'Введите свою почту',
                  onChanged: (p0) {},
                ),
                25.h.heightBox,
                Text(
                  'Пароль',
                  style: AppTextStyles.label,
                ),
                10.h.heightBox,
                AppTextField(
                  hint: 'Введите свой пароль',
                  hidePassword: true,
                  onChanged: (p0) {},
                ),
                25.h.heightBox,
                Text(
                  'Подтвердите свой пароль',
                  style: AppTextStyles.label,
                ),
                10.h.heightBox,
                AppTextField(
                  hint: 'Повторите свой пароль',
                  hidePassword: true,
                  onChanged: (p0) {},
                ),
                105.h.heightBox,
                MainButton(
                  text: 'Зарегистрироваться',
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
