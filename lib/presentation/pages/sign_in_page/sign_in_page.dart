import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/sign_in_page/bloc/sign_in_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:first_pancake_com/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>()..add(const Started()),
      child: BlocSideEffectConsumer<SignInBloc, SignInBloc, SignInState,
          SignInCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToHomePage: () => context.router.push(const MainRoute()),
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка! Неверные данные.'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            validator: () {
              const snackBar = SnackBar(
                content: Text('Введите корректные данные.'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      60.h.heightBox,
                      Text(
                        'Добро пожаловать снова!',
                        style: AppTextStyles.title,
                      ),
                      35.h.heightBox,
                      Text(
                        'Email',
                        style: AppTextStyles.label,
                      ),
                      10.h.heightBox,
                      AppTextField(
                        error: Validators.validateEmail(state.email),
                        errorTextStyle: const TextStyle(color: Colors.red),
                        hint: 'Введите свою почту',
                        onChanged: (p0) {
                          context
                              .read<SignInBloc>()
                              .add(SignInEvent.changedEmail(email: p0));
                        },
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
                        onChanged: (p0) {
                          context
                              .read<SignInBloc>()
                              .add(SignInEvent.changedPassword(password: p0));
                        },
                      ),
                      330.h.heightBox,
                      MainButton(
                        text: 'Войти',
                        backgroundColor: AppColors.pancake5,
                        textColor: AppColors.white,
                        onPressed: () => context
                            .read<SignInBloc>()
                            .add(const SignInEvent.signInClicked()),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 30.w),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
