import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/presentation/pages/search_recipe_page/bloc/search_recipe_bloc.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            body: Center(
              child: Text(
                'search recipe page',
                style: AppTextStyles.title,
              ),
            ),
          );
        },
      ),
    );
  }
}
