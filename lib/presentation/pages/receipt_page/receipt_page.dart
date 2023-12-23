import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/receipt_page/bloc/receipt_bloc.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({
    super.key,
    required this.receiptId,
  });

  final int receiptId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ReceiptBloc>()..add(ReceiptEvent.started(receiptId)),
      child: BlocSideEffectConsumer<ReceiptBloc, ReceiptBloc, ReceiptState,
          ReceiptCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка! Не удается получить рецепт.'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            favorite: () {
              const snackBar = SnackBar(
                content: Text('Рецепт добавлен в избранное'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            notFavorite: () {
              const snackBar = SnackBar(
                content: Text('Рецепт удален из избранного'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            deleted: () {
              context.router.pop();
              const snackBar = SnackBar(
                content: Text('Рецепт удален'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                    actions: [
                      InkWell(
                        onTap: () {
                          state.isFavourite
                              ? context.read<ReceiptBloc>().add(
                                  ReceiptEvent.deleteFromFavorites(
                                      receiptId))
                              : context.read<ReceiptBloc>().add(
                                  ReceiptEvent.addToFavorites(receiptId));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16.r),
                          child: Icon(
                            Icons.star,
                            color: state.isFavourite
                                ? Colors.amber
                                : Colors.grey,
                          ),
                        ),
                      ),
                      state.isMine
                          ? InkWell(
                              onTap: () {
                                context.read<ReceiptBloc>().add(
                                    ReceiptEvent.deleteReceipt(receiptId));
                              },
                              child: Padding(
                                padding: EdgeInsets.all(16.r),
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                  body: Center(
                    child: Column(
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
                          child: state.receipt.photo == null
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
                                    state.receipt.photo!,
                                  ),
                                  height: 300.h,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        20.heightBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              state.receipt.title,
                              style: AppTextStyles.title,
                            ),
                            15.h.heightBox,
                            InkWell(
                              onTap: () {
                                context.router.push(
                                  ProfileRoute(
                                      userId: state.receipt.user_id),
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.w,
                                  vertical: 2.h,
                                ),
                                child: Text(
                                  state.receipt.receipt_author!,
                                  style: AppTextStyles.title.copyWith(
                                    color: AppColors.pancake5,
                                    fontSize: 25.sp,
                                    height: 25.h / 20.sp,
                                  ),
                                ),
                              ),
                            ),
                            15.h.heightBox,
                            Text(
                              'создан ${state.receipt.timeStamp!.substring(0, 10)}',
                              style: AppTextStyles.underTitle.copyWith(
                                fontSize: 20.sp,
                                color: AppColors.pancake5,
                              ),
                            ),
                            15.h.heightBox,
                            state.receipt.description != null
                                ? Text(
                                    state.receipt.description!,
                                    style: AppTextStyles.underTitle,
                                  )
                                : Text(
                                    'У этого рецепта отсутствует описание',
                                    style: AppTextStyles.underTitle,
                                  ),
                            15.h.heightBox,
                          ],
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 30.w),
                  ))
              : const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(
                      color: AppColors.pancake5,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
