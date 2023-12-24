import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/domain/entities/receipt/receipt.dart';
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
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  File? image;
  String? imageToBase;

  Future<String> pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return '';
      final imageTemp = File(image.path);
      List<int> imageBytes = await imageTemp.readAsBytes();
      String base64Image = base64Encode(imageBytes);
      setState(
        () => this.image = imageTemp,
      );
      return base64Image;
    } catch (error) {
      log('Failed to pick an image: $error');
      return '';
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
            navToHomePage: () {
              const snackBar = SnackBar(
                content: Text('Рецепт добавлен!'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              context.router.pop();
            },
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка! Рецепт не был добавлен.'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            validation: () {
              const snackBar = SnackBar(
                content: Text('Ошибка! Введите заголовок и описание рецепта.'),
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
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.h.heightBox,
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
                    onChanged: (p0) {
                      titleController.text = p0;
                    },
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
                    onChanged: (p0) {
                      descriptionController.text = p0;
                    },
                  ),
                  25.h.heightBox,
                  Text(
                    'Добавьте фотографию для рецепта',
                    style: AppTextStyles.label,
                  ),
                  20.h.heightBox,
                  GestureDetector(
                    onTap: () async {
                      imageToBase = await pickImage();
                    },
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
                    indicator: state is Loading,
                    indicatorColor: Colors.black,
                    onPressed: () {
                      final receipt = Receipt(
                        title: titleController.text,
                        description: descriptionController.text.isNotEmpty
                            ? descriptionController.text
                            : null,
                        photo: imageToBase,
                      );
                      context
                          .read<CreateRecipeBloc>()
                          .add(CreateRecipe(receipt: receipt));
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
