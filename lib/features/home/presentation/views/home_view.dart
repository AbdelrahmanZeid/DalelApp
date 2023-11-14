import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:dalel/features/home/presentation/widgets/custom_bottom_nav_bar_widget.dart';
import 'package:dalel/features/home/view_model/cubits/home_cubit.dart';
import 'package:dalel/features/home/view_model/cubits/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, HomeStates state) {
        final home = HomeCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            leading: CustomAppBar.getLeading(context),
            actions: const [
              ActionBodyWidget(),
            ],
          ),
          body: home.navBarViews[home.currentIndex],
          bottomNavigationBar: CustomBottomNavBarWidget(
            currentIndex: home.currentIndex,
            onTap: (int value) {
              home.onTap(value);
            },
            items: home.bottomNavigationBarItemList,
          ),
        );
      },
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomTextWidget(
              text: AppStrings.historicalPeriods,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.forgetPasswordStyle().copyWith(
        color: AppColor.splashTextColor,
      ),
    );
  }
}
