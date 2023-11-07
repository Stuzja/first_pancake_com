import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchRecipePage extends StatelessWidget {
  const SearchRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'search recipe page',
          style: AppTextStyles.title,
        ),
      ),
    );
  }
}
