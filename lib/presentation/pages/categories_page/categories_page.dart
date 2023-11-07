import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'categories page',
          style: AppTextStyles.title,
        ),
      ),
    );
  }
}