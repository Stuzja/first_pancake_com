import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/enter_code_page/bloc/enter_code_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class EnterCodePage extends StatelessWidget {
  const EnterCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EnterCodeBloc>(),
      child: BlocSideEffectConsumer<EnterCodeBloc, EnterCodeBloc,
          EnterCodeState, EnterCodeCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToNewPassword: () =>
                context.router.push(const NewPasswordRoute()),
            error: () {
              log('Enter code bloc error');
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    70.h.heightBox,
                    Text(
                      'Мы отправили код вам на xxovcharovxx@gmail.com',
                      style: AppTextStyles.underTitle,
                    ),
                    35.h.heightBox,
                    Text(
                      'Введите код',
                      style: AppTextStyles.label,
                    ),
                    20.h.heightBox,
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: (value) {},
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldHeight: 70.h,
                        fieldWidth: 70.w,
                        borderRadius: BorderRadius.all(Radius.circular(12.r)),
                        borderWidth: 0,
                        activeColor: AppColors.grey4,
                        inactiveColor: AppColors.grey4,
                        errorBorderColor: AppColors.grey4,
                        selectedFillColor: AppColors.grey4,
                        inactiveFillColor: AppColors.grey4,
                        selectedColor: AppColors.grey4,
                        disabledColor: AppColors.grey4,
                        activeFillColor: AppColors.grey4,
                      ),
                    ),
                    10.h.heightBox,
                    MainButton(
                      text: 'Подтвердить почту',
                      backgroundColor: AppColors.pancake5,
                      textColor: AppColors.white,
                      onPressed: () {
                        context.router.push(const NewPasswordRoute());
                      },
                    ),
                  ],
                ).paddingSymmetric(horizontal: 30.w),
              ],
            ),
          );
        },
      ),
    );
  }
}
