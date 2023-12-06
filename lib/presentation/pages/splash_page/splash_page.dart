import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/splash_page/bloc/splash_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_images.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashBloc>()..add(const Started()),
      child: BlocSideEffectConsumer<SplashBloc, SplashBloc, SplashState,
          SplashCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(start: () {});
        },
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.pancake2,
                        AppColors.pancake3,
                        AppColors.pancake5,
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      AppImages.pancake,
                      width: 120.w,
                      height: 120.h,
                      color: AppColors.white,
                    ),
                    15.h.heightBox,
                    Text(
                      'Первый блин.com',
                      style: AppTextStyles.semiBold50,
                    ),
                    310.h.heightBox,
                    MainButton(
                      text: 'Войти',
                      onPressed: () {
                        context.router.push(const SignInRoute());
                      },
                    ),
                    15.h.heightBox,
                    MainButton(
                      text: 'Зарегистрироваться',
                      onPressed: () {
                        context.router.push(const SignUpRoute());
                      },
                    ),
                    20.h.heightBox,
                    GestureDetector(
                      onTap: () {
                        //context.router.push(const ForgotPasswordRoute());
                        context.router.push(MainRoute());
                      },
                      child: Text(
                        'Забыли пароль?',
                        style: AppTextStyles.semiBold15,
                      ),
                    ),
                  ],
                ).toCenter().paddingOnly(left: 40.w, right: 40.w, top: 140.h),
              ],
            ),
          );
        },
      ),
    );
  }
}
