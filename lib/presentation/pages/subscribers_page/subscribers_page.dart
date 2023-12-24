import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/subscribers_page/bloc/subscribers_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/user_card/user_card.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class SubscribersPage extends StatelessWidget {
  const SubscribersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SubscribersBloc>()..add(const SubscribersEvent.started()),
      child: BlocSideEffectConsumer<SubscribersBloc, SubscribersBloc,
          SubscribersState, SubscribersCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка входа на страницу подписчиков'),
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
                'Подписчики',
                style: AppTextStyles.label,
              ),
            ),
            body: state is Loaded
                ? state.subscribers.isNotEmpty
                    ? ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          10.h.heightBox,
                          RefreshIndicator(
                            onRefresh: () async {
                              context
                                  .read<SubscribersBloc>()
                                  .add(const SubscribersEvent.started());
                            },
                            child: SizedBox(
                              height: 700.h,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: state.subscribers.length,
                                itemBuilder: (context, index) {
                                  final user = state.subscribers[index];
                                  print(user.email);
                                  return InkWell(
                                    onTap: () => context.router
                                        .push(ProfileRoute(userId: user.id)),
                                    child: UserCard(
                                      username: user.username,
                                      email: user.email,
                                      imagePath: user.profile_image,
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        ],
                      ).paddingSymmetric(horizontal: 30.w)
                    : Center(
                        child: Text(
                          'Подписчики отсутствуют',
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
