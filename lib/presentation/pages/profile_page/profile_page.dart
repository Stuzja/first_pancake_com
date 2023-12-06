import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/bloc/profile_bloc.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/widgets/receipt_card.dart';
import 'package:first_pancake_com/presentation/pages/receipt_page/receipt_page.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_images.dart';
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
      create: (context) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.started()),
      child: BlocSideEffectConsumer<ProfileBloc, ProfileBloc, ProfileState,
          ProfileCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToSubscribers: () {},
            navToSubscriptions: () {},
            navToEditProfile: () {},
            navToFavourites: () {},
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка входа в профиль'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: state is Loaded
                ? SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 110.w,
                                height: 110.h,
                                child: Image.asset(
                                  AppImages.pancake,
                                  color: AppColors.grey3,
                                ),
                              ),
                            ),
                            20.h.heightBox,
                            Text(
                              state.currentUser.username,
                              style: AppTextStyles.title,
                            ),
                            20.h.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: NumberWidget(
                                    num: state.currentUser.subscribersCount!,
                                    firstLine: 'подписчиков',
                                    secondLine: '',
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: NumberWidget(
                                    num: state.currentUser.receiptsCount!,
                                    firstLine: 'создано',
                                    secondLine: 'рецептов',
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: NumberWidget(
                                    num: state.currentUser.favouritesCount!,
                                    firstLine: 'любимых',
                                    secondLine: 'рецептов',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        25.h.heightBox,
                        Text(
                          'Мои рецепты',
                          style: AppTextStyles.label.copyWith(fontSize: 22.sp),
                        ),
                        10.h.heightBox,
                        SizedBox(
                          height: 320.h,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: state.receipts.length,
                            itemBuilder: (context, index) {
                              final receipt = state.receipts[index];
                              return ReceiptCards(
                                onTap: () => context.router
                                    .push(ReceiptRoute(receipt: receipt)),
                                title: receipt.title,
                                description: receipt.description!,
                              );
                            },
                          ),
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 30.w),
                  )
                : const CircularProgressIndicator(
                    color: AppColors.pancake5,
                  ).toCenter(),
          );
        },
      ),
    );
  }
}

class NumberWidget extends StatelessWidget {
  const NumberWidget({
    required this.num,
    required this.firstLine,
    required this.secondLine,
    super.key,
  });

  final int num;
  final String firstLine;
  final String secondLine;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115.w,
      height: 80.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$num',
            style: AppTextStyles.number,
          ),
          Text(
            firstLine,
            style: AppTextStyles.underTitle,
          ),
          Text(
            secondLine,
            style: AppTextStyles.underTitle,
          ),
        ],
      ),
    );
  }
}
