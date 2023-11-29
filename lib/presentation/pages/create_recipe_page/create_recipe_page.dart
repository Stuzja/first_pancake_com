import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/create_recipe_page/bloc/create_recipe_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class CreateRecipePage extends StatefulWidget {
  const CreateRecipePage({super.key});

  @override
  State<CreateRecipePage> createState() => _CreateRecipePageState();
}

class _CreateRecipePageState extends State<CreateRecipePage> {
  File? image;

  Future<void> pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } catch (error) {
      log('Failed to pick an image: $error');
    }
  }

  void deleteImage() {
    try {
      setState(() => image = null);
    } catch (error) {
      log('Failed to delete the image: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreateRecipeBloc>(),
      child: BlocSideEffectConsumer<CreateRecipeBloc, CreateRecipeBloc,
          CreateRecipeState, CreateRecipeCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToHomePage: () => context.router.push(const MainRoute()),
            error: () {
              log('Create recipe bloc error');
            },
          );
        },
        builder: (context, state) {
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
                    hint:
                        'Введите, если хотите добавить описание вашего рецепта',
                    expand: true,
                    onChanged: (p0) {},
                  ),
                  25.h.heightBox,
                  Text(
                    'Добавьте фотографию для рецепта',
                    style: AppTextStyles.label,
                  ),
                  20.h.heightBox,
                  GestureDetector(
                    onTap: () async => await pickImage(),
                    child: Container(
                      width: 300.w,
                      height: 300.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: AppColors.grey4,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: image != null
                          ? Image.file(
                              image!,
                              fit: BoxFit.cover,
                            )
                          : Icon(
                              Icons.add_a_photo_outlined,
                              color: AppColors.grey4,
                              size: 80.r,
                            ),
                    ).toCenter(),
                  ),
                  20.h.heightBox,
                  GestureDetector(
                    onTap: () => deleteImage(),
                    child: Text(
                      'Удалить фотографию',
                      style: TextStyle(
                        color: AppColors.grey2,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ).toCenter(),
                  20.h.heightBox,
                  MainButton(
                    text: 'Добавить рецепт',
                    gradient: true,
                    onPressed: () {
                      context.router.push(const MainRoute());
                    },
                  ),
                  15.heightBox,
                ],
              ).paddingSymmetric(horizontal: 30.w),
              
            ),
          );
        },
      ),
    );
  }
}
