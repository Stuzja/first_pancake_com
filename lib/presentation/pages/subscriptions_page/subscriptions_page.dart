import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/subscriptions_page/bloc/subscriptions_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/user_card/user_card.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SubscriptionsBloc>()..add(const SubscriptionsEvent.started()),
      child: BlocSideEffectConsumer<SubscriptionsBloc, SubscriptionsBloc,
          SubscriptionsState, SubscriptionsCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка входа на страницу подписок'),
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
                'Подписки',
                style: AppTextStyles.label,
              ),
            ),
            body: state is Loaded
                ? state.subscriptions.isNotEmpty
                    ? ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          10.h.heightBox,
                          RefreshIndicator(
                            onRefresh: () async {
                              context
                                  .read<SubscriptionsBloc>()
                                  .add(const SubscriptionsEvent.started());
                            },
                            child: SizedBox(
                              height: 700.h,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: state.subscriptions.length,
                                itemBuilder: (context, index) {
                                  final user = state.subscriptions[index];
                                  return UserCard(
                                    username: user.username,
                                    email: user.email,
                                    imagePath: user.profile_image,
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ).paddingSymmetric(horizontal: 30.w)
                    : Center(
                        child: Text(
                          'Подписки отсутствуют',
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
