import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Я ХУЕЮ',
          style: AppTextStyles.title,
        ),
      ),
    );
  }
}
