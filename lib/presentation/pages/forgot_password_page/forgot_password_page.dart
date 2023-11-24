import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/forgot_password_page/bloc/forgot_password_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: BlocSideEffectConsumer<ForgotPasswordBloc, ForgotPasswordBloc,
          ForgotPasswordState, ForgotPasswordCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToEnterCode: () => context.router.push(const EnterCodeRoute()),
            error: () {
              log('Forgot password bloc error');
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  60.h.heightBox,
                  Text(
                    'Давайте восстановим пароль',
                    style: AppTextStyles.title,
                  ),
                  10.h.heightBox,
                  Text(
                    'Мы вышлем код вам на почту',
                    style: AppTextStyles.underTitle,
                  ),
                  35.h.heightBox,
                  Text(
                    'Email',
                    style: AppTextStyles.label,
                  ),
                  10.h.heightBox,
                  AppTextField(
                    hint: 'Введите свою почту',
                    onChanged: (p0) {},
                  ),
                  15.h.heightBox,
                  MainButton(
                    text: 'Получить код',
                    backgroundColor: AppColors.pancake5,
                    textColor: AppColors.white,
                    onPressed: () {
                      context.router.push(const EnterCodeRoute());
                    },
                  ),
                ],
              ).paddingSymmetric(horizontal: 30.w),
            ),
          );
        },
      ),
    );
  }
}
