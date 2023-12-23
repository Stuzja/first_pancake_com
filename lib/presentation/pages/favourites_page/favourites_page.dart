import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/favourites_page/bloc/favourites_bloc.dart';
import 'package:first_pancake_com/presentation/pages/profile_page/widgets/receipt_card.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<FavouritesBloc>()..add(const FavouritesEvent.started()),
      child: BlocSideEffectConsumer<FavouritesBloc, FavouritesBloc,
          FavouritesState, FavouritesCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка входа на страницу избранного'),
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
                onTap: () => context.router.popAndPush(ProfileRoute()),
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
                'Избранное',
                style: AppTextStyles.label,
              ),
            ),
            body: state is Loaded
                ? state.receipts.isNotEmpty
                    ? ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          10.h.heightBox,
                          RefreshIndicator(
                            onRefresh: () async {
                              context
                                  .read<FavouritesBloc>()
                                  .add(const FavouritesEvent.started());
                            },
                            child: SizedBox(
                              height: 700.h,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: state.receipts.length,
                                itemBuilder: (context, index) {
                                  final receipt = state.receipts[index];
                                  return ReceiptCards(
                                    onTap: () => context.router.push(
                                        ReceiptRoute(receiptId: receipt.id!)),
                                    title: receipt.title,
                                    description: receipt.description!,
                                    imagePath: receipt.photo,
                                    timeStamp: receipt.timeStamp,
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ).paddingSymmetric(horizontal: 30.w)
                    : Center(
                        child: Text(
                          'Избранное отсутствует',
                          style: AppTextStyles.label,
                        ),
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
