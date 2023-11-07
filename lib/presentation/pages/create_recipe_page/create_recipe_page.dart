import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateRecipePage extends StatelessWidget {
  const CreateRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            60.h.heightBox,
            Text(
              'Создайте свой рецепт',
              style: AppTextStyles.title,
            ),
            40.h.heightBox,
            Text(
              'Название рецепта',
              style: AppTextStyles.label,
            ),
            10.h.heightBox,
            AppTextField(
              hint: 'Введите название вашего рецепта',
              onChanged: (p0) {},
            ),
            25.h.heightBox,
            Text(
              'Описание рецепта',
              style: AppTextStyles.label,
            ),
            10.h.heightBox,
            AppTextField(
              hint: 'Введите, если хотите добавить описание вашего рецепта',
              expand: true,
              onChanged: (p0) {},
            ),
            25.h.heightBox,
            Text(
              'добавление картинок вещь заебистая как будет бд будут и картинки',
              style: AppTextStyles.label,
            ),
            25.h.heightBox,
            MainButton(
              text: 'Добавить рецепт',
              gradient: true,
              onPressed: () {
                context.router.push(const MainRoute());
              },
            ),
          ],
        ).paddingSymmetric(horizontal: 30.w),
      ),
    );
  }
}
