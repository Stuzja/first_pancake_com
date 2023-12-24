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
import 'package:first_pancake_com/utils/app_icons.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, this.userId});
  final int? userId;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? convertToImage(String base64Image) {
    Uint8List imageBytes = base64Decode(base64Image);
    log('image bytes: ${imageBytes.toString().substring(0, 5)}');
    return File.fromRawPath(imageBytes);
  }

  File? image;

  String? imageToBase;

  Future<String> pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return '';
      final imageTemp = File(image.path);
      List<int> imageBytes = await imageTemp.readAsBytes();
      String base64Image = base64Encode(imageBytes);
      setState(
        () => this.image = imageTemp,
      );
      return base64Image;
    } catch (error) {
      log('Failed to pick an image: $error');
      return '';
    }
  }

  void deleteImage() {
    try {
      setState(() => image = null);
    } catch (error) {
      log('Failed to delete the image: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(ProfileEvent.started(widget.userId)),
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
            add: () {
              const snackBar = SnackBar(
                content: Text('Фото профиля добавлено'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              context.router.popAndPush(ProfileRoute(userId: widget.userId));
            },
            delete: () {
              const snackBar = SnackBar(
                content: Text('Фото профиля удалено'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              context.router.popAndPush(ProfileRoute(userId: widget.userId));
            },
          );
        },
        builder: (context, state) {
          return state is Loaded
              ? Scaffold(
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
                      state.isMyProfile
                          ? InkWell(
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
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                  body: RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<ProfileBloc>()
                          .add(ProfileEvent.started(widget.userId));
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
                                  ? state.isMyProfile
                                      ? GestureDetector(
                                          onTap: () async {
                                            imageToBase = await pickImage();
                                            context.read<ProfileBloc>().add(
                                                ProfileEvent.addProfileImage(
                                                    widget.userId,
                                                    imageToBase!));
                                          },
                                          child: SizedBox(
                                            width: 110.w,
                                            height: 110.h,
                                            child: Icon(
                                              Icons.add_a_photo_outlined,
                                              color: AppColors.grey4,
                                              size: 80.r,
                                            ),
                                          ),
                                        )
                                      : SizedBox(
                                          width: 110.w,
                                          height: 110.h,
                                          child: SvgPicture.asset(
                                            AppIcons.userPlaceholder,
                                            color: AppColors.grey4,
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
                            state.isMyProfile &&
                                    state.currentUser.profile_image != null
                                ? InkWell(
                                    onTap: () => context
                                        .read<ProfileBloc>()
                                        .add(ProfileEvent.deleteProfileImage(
                                            widget.userId)),
                                    child: Text(
                                      'Удалить фотографию',
                                      style: TextStyle(
                                        color: AppColors.grey2,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            10.heightBox,
                            Text(
                              state.currentUser.username,
                              style: AppTextStyles.title,
                            ),
                            10.h.heightBox,
                            state.isMyProfile
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          state.isMyProfile
                                              ? context.router.push(
                                                  const SubscriptionsRoute())
                                              : null;
                                        },
                                        child: NumberWidget(
                                          num: state.subscriptionsCount,
                                          firstLine: 'подписок',
                                          secondLine: '',
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          state.isMyProfile
                                              ? context.router.push(
                                                  const SubscribersRoute())
                                              : null;
                                        },
                                        child: NumberWidget(
                                          num: state.subscribersCount,
                                          firstLine: 'подписчиков',
                                          secondLine: '',
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          state.isMyProfile
                                              ? context.router
                                                  .push(const FavouritesRoute())
                                              : null;
                                        },
                                        child: NumberWidget(
                                          num: state.favouritesCount,
                                          firstLine: 'любимых',
                                          secondLine: 'рецептов',
                                        ),
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(),
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
                          state.isMyProfile
                              ? 'Мои рецепты (${state.currentUser.receiptsCount} создано)'
                              : 'Рецепты пользователя (${state.currentUser.receiptsCount} создано)',
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
                  ))
              : Scaffold(
                  body: const CircularProgressIndicator(
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
