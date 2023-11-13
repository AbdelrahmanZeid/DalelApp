import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:dalel/features/home/view_model/cubits/home_cubit.dart';
import 'package:dalel/features/home/view_model/cubits/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: ( context, HomeStates state) {
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
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text("klm;l"),
        ),
      ],
    );
  }
}

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget(
      {super.key,
      required this.currentIndex,
      required this.onTap,
      required this.items});
  final int currentIndex;
  final Function(int value) onTap;
  final List<BottomNavigationBarItem> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 79,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            10,
          ),
          topRight: Radius.circular(
            10,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: items,
      ),
    );
  }
}
