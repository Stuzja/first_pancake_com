import 'dart:developer';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/bloc/profile_bloc.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>(),
      child: BlocSideEffectConsumer<ProfileBloc, ProfileBloc, ProfileState,
          ProfileCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToSubscribers: () {},
            navToSubscriptions: () {},
            navToEditProfile: () {},
            navToFavourites: () {},
            error: () {
              log('Profile bloc error');
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      60.h.heightBox,
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
                        child: const Icon(
                          Icons.hourglass_empty_outlined,
                          color: AppColors.grey3,
                        ),
                      ),
                      20.h.heightBox,
                      Text(
                        'Jane Doe',
                        style: AppTextStyles.title,
                      ),
                      20.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 170.w,
                              height: 30.h,
                              alignment: Alignment.center,
                              child: Text(
                                '14 подписок',
                                style: AppTextStyles.underTitle,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 170.w,
                              height: 30.h,
                              alignment: Alignment.center,
                              child: Text(
                                '88 подписчиков',
                                style: AppTextStyles.underTitle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
