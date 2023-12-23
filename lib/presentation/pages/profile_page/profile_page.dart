import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/bloc/profile_bloc.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/widgets/receipt_card.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/widgets/subscribe_button.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, this.userId});
  final int? userId;

  File? convertToImage(String base64Image) {
    Uint8List imageBytes = base64Decode(base64Image);
    log('image bytes: ${imageBytes.toString().substring(0, 5)}');
    return File.fromRawPath(imageBytes);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(ProfileEvent.started(userId)),
      child: BlocSideEffectConsumer<ProfileBloc, ProfileBloc, ProfileState,
          ProfileCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToSubscribers: () {},
            navToSubscriptions: () {},
            navToEditProfile: () {},
            navToFavourites: () {},
            navToSplash: () {
              context.router.pushAndPopUntil(
                const SplashRoute(),
                predicate: (_) => false,
              );
            },
            error: (String text) {
              final snackBar = SnackBar(
                content: Text(text),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: InkWell(
                onTap: context.router.pop,
                child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: const Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              centerTitle: true,
              title: Text(
                'Профиль',
                style: AppTextStyles.label,
              ),
              actions: [
                InkWell(
                  onTap: () {
                    context
                        .read<ProfileBloc>()
                        .add(const ProfileEvent.signOut());
                  },
                  child: Padding(
                    padding: EdgeInsets.all(16.r),
                    child: const Icon(
                      Icons.logout,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            body: state is Loaded
                ? RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<ProfileBloc>()
                          .add(ProfileEvent.started(userId));
                    },
                    child: ListView(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            10.h.heightBox,
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
                              child: state.currentUser.profile_image == null
                                  ? SizedBox(
                                      width: 110.w,
                                      height: 110.h,
                                      child: Icon(
                                        Icons.add_a_photo_outlined,
                                        color: AppColors.grey4,
                                        size: 80.r,
                                      ),
                                    )
                                  : Image.memory(
                                      base64Decode(
                                        state.currentUser.profile_image!,
                                      ),
                                      height: 300.h,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                            10.h.heightBox,
                            Text(
                              state.currentUser.username,
                              style: AppTextStyles.title,
                            ),
                            10.h.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    context.router
                                        .push(const SubscriptionsRoute());
                                  },
                                  child: NumberWidget(
                                    num: state.subscriptionsCount,
                                    firstLine: 'подписок',
                                    secondLine: '',
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.router
                                        .push(const SubscribersRoute());
                                  },
                                  child: NumberWidget(
                                    num: state.subscribersCount,
                                    firstLine: 'подписчиков',
                                    secondLine: '',
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.router
                                        .push(const FavouritesRoute());
                                  },
                                  child: NumberWidget(
                                    num: state.favouritesCount,
                                    firstLine: 'любимых',
                                    secondLine: 'рецептов',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (!state.isMyProfile)
                          Column(
                            children: [
                              5.h.heightBox,
                              SubscribeButton(
                                onTap: () {
                                  context.read<ProfileBloc>().add(
                                        ClickedSubscribeButton(
                                            state.currentUser.id!),
                                      );
                                },
                                isSubscribed: state.isSubscribed,
                              ),
                            ],
                          ),
                        15.h.heightBox,
                        Text(
                          'Мои рецепты (${state.currentUser.receiptsCount} создано)',
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
                                    .push(ReceiptRoute(receiptId: receipt.id!)),
                                title: receipt.title,
                                description: receipt.description!,
                                imagePath: receipt.photo,
                                timeStamp: receipt.timeStamp,
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
