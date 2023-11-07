import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:first_pancake_com/presentation/widgets/main_page_item/main_page_item.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_images.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                60.h.heightBox,
                Image.asset(
                  AppImages.pancake,
                  width: 120.w,
                  height: 120.h,
                  color: AppColors.black,
                ),
                15.h.heightBox,
                Text(
                  'Первый блин.com',
                  style: AppTextStyles.semiBold50.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(32.w, 56.h, 32.w, 42.h),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: 140.w / 126.h,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.push(const SearchRecipeRoute());
                  },
                  child: const MainPageItem(
                    label: 'Поиск',
                    color: AppColors.pancake2,
                    icon: Icons.search_outlined,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.push(const CategoriesRoute());
                  },
                  child: const MainPageItem(
                    label: 'Категории',
                    color: AppColors.pancake2,
                    icon: Icons.food_bank_outlined,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.push(const CreateRecipeRoute());
                  },
                  child: const MainPageItem(
                    label: 'Создать рецепт',
                    color: AppColors.pancake2,
                    icon: Icons.add_outlined,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.router.push(const ProfileRoute());
                  },
                  child: const MainPageItem(
                    label: 'Профиль',
                    color: AppColors.pancake2,
                    icon: Icons.person_2_outlined,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
