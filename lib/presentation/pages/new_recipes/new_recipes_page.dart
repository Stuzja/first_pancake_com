import 'package:auto_route/auto_route.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/presentation/pages/new_recipes/bloc/new_recipes_bloc.dart';
import 'package:first_pancake_com/presentation/pages/search_recipe_page/bloc/search_recipe_bloc.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class NewRecipesPage extends StatelessWidget {
  const NewRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<NewRecipesBloc>()..add(const NewRecipesEvent.started()),
      child: BlocSideEffectConsumer<NewRecipesBloc, NewRecipesBloc,
          NewRecipesState, NewRecipesCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(error: () {});
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
                'Новые рецепты',
                style: AppTextStyles.label,
              ),
            ),
            body: state is Loaded
                ? const SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [],
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
