import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/pages/sign_up_page/bloc/sign_up_bloc.dart';
import 'package:first_pancake_com/presentation/widgets/main_button/main_button.dart';
import 'package:first_pancake_com/presentation/widgets/textfields/app_text_field.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:first_pancake_com/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
      create: (context) => getIt<SignUpBloc>()..add(const Started()),
      child: BlocSideEffectConsumer<SignUpBloc, SignUpBloc, SignUpState,
          SignUpCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToHomePage: () => context.router.push(const MainRoute()),
            error: () {
              const snackBar = SnackBar(
                content: Text('Ошибка! Не получилось создать аккаунт.'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            validator: () {
                const snackBar = SnackBar(
                content: Text('Введите корректные данные.'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      60.h.heightBox,
                      Text(
                        'Давайте создадим аккаунт',
                        style: AppTextStyles.title,
                      ),
                      40.h.heightBox,
                      Text(
                        'Имя пользователя',
                        style: AppTextStyles.label,
                      ),
                      10.h.heightBox,
                      AppTextField(
                        hint: 'Введите ваше имя',
                        onChanged: (p0) {
                          context
                              .read<SignUpBloc>()
                              .add(SignUpEvent.changedUsername(username: p0));
                        },
                      ),
                      25.h.heightBox,
                      Text(
                        'Email',
                        style: AppTextStyles.label,
                      ),
                      10.h.heightBox,
                      AppTextField(
                        error: Validators.validateEmail(state.email),
                        errorTextStyle: const TextStyle(color: Colors.red),
                        hint: 'Введите свою почту',
                        onChanged: (p0) {
                          context
                              .read<SignUpBloc>()
                              .add(SignUpEvent.changedEmail(email: p0));
                        },
                      ),
                      25.h.heightBox,
                      Text(
                        'Пароль',
                        style: AppTextStyles.label,
                      ),
                      10.h.heightBox,
                      AppTextField(
                        hint: 'Введите свой пароль',
                        errorTextStyle: TextStyle(color: Colors.red),
                        hidePassword: true,
                        onChanged: (p0) {
                          context
                              .read<SignUpBloc>()
                              .add(SignUpEvent.changedPassword(password: p0));
                        },
                      ),
                      25.h.heightBox,
                      Text(
                        'Подтвердите свой пароль',
                        style: AppTextStyles.label,
                      ),
                      10.h.heightBox,
                      AppTextField(
                        error: state.password != state.repassword
                            ? "Введенные пароли не совпадают"
                            : null,
                        errorTextStyle: const TextStyle(color: Colors.red),
                        hint: 'Повторите свой пароль',
                        hidePassword: true,
                        onChanged: (p0) {
                          context.read<SignUpBloc>().add(
                              SignUpEvent.changedRepassword(repassword: p0));
                        },
                      ),
                      25.h.heightBox,
                      Text(
                        'Выберите фотографию для профиля',
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
                        text: 'Зарегистрироваться',
                        backgroundColor: AppColors.pancake5,
                        textColor: AppColors.white,
                        onPressed: () {
                          context
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.signUpClicked());
                        },
                      ),
                      15.heightBox,
                    ],
                  ).paddingSymmetric(horizontal: 30.w),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
