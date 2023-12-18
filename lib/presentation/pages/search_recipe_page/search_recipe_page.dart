import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/widgets/receipt_card.dart';
import 'package:first_pancake_com/presentation/pages/search_recipe_page/bloc/search_recipe_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/circle_icon_button/circle_icon_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_icons.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class SearchRecipePage extends StatelessWidget {
  const SearchRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchRecipeBloc>()..add(const Started()),
      child: BlocSideEffectConsumer<SearchRecipeBloc, SearchRecipeBloc,
          SearchRecipeState, SearchRecipeCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка входа на страницу рецептов'),
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
                'Список рецептов',
                style: AppTextStyles.label,
              ),
            ),
            body: state is Loaded
                ? SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        AppTextField(
                          hint: "Найти...",
                          value: state.text,
                          autofocus: true,
                          onChanged: (s) {
                            context.read<SearchRecipeBloc>().add(
                                  TextChanged(text: s),
                                );
                          },
                          actions: [
                            state.text.isNotEmpty
                                ? Padding(
                                    padding: EdgeInsets.only(
                                      right: 8.0.w,
                                    ),
                                    child: CircleIconButton(
                                      gestureSize: 30.r,
                                      radius: 5.6.r,
                                      icon: SvgPicture.asset(
                                        AppIcons.closed,
                                        width: 7.8.r,
                                        height: 7.8.r,
                                        color: AppColors.grey1,
                                      ),
                                      onPressed: () {
                                        context.read<SearchRecipeBloc>().add(
                                              const TextChanged(text: ""),
                                            );
                                      },
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                        10.h.heightBox,
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.receipts.length,
                          itemBuilder: (context, index) {
                            final receipt = state.receipts[index];
                            if (receipt.title.contains(state.text)) {
                              return ReceiptCards(
                                title: receipt.title,
                                description: receipt.description!,
                                imagePath: receipt.photo,
                                timeStamp: receipt.timeStamp,
                                onTap: () => context.router
                                    .push(ReceiptRoute(receiptId: receipt.id!)),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        )
                      ],
                    ).paddingSymmetric(horizontal: 30.w),
                  )
                : const Center(
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
