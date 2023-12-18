import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
import 'package:first_pancake_com/presentation/pages/receipt_page/bloc/receipt_bloc.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_images.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({
    super.key,
    required this.receipt,
  });

  final Receipt receipt;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ReceiptBloc>()..add(ReceiptEvent.started(receipt)),
      child: BlocSideEffectConsumer<ReceiptBloc, ReceiptBloc, ReceiptState,
          ReceiptCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка на страницe рецепта'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            favorite: () {
              const snackBar = SnackBar(
                content: Text('Рецепт успешно добавлен в избранное!'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            notFavorite: () {
              const snackBar = SnackBar(
                content: Text('Рецепт успешно удален из избранного'),
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
                          !(state.isFavourite)
                              ? context
                                  .read<ReceiptBloc>()
                                  .add(ReceiptEvent.addToFavorites(receipt))
                              : context
                                  .read<ReceiptBloc>()
                                  .add(ReceiptEvent.deleteFromFavorites(receipt));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16.r),
                          child: Icon(
                            Icons.star,
                            color:
                                state.isFavourite ? Colors.amber : Colors.grey,
                          ),
                        ),
                      ),
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
                          child: receipt.photo == null
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
                                    receipt.photo!,
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
                              receipt.title,
                              style: AppTextStyles.title,
                            ),
                            10.h.heightBox,
                            receipt.description != null
                                ? Text(
                                    receipt.description!,
                                    style: AppTextStyles.underTitle,
                                  )
                                : Text(
                                    'У этого рецепта отсутствует описание',
                                    style: AppTextStyles.underTitle,
                                  ),
                            15.h.heightBox,
                            Text(
                              'создан ${receipt.timeStamp!.substring(0, 10)}',
                              style: AppTextStyles.underTitle
                                  .copyWith(fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ],
                    ).paddingSymmetric(horizontal: 30.w),
                  ),
                )
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
