import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/features/cart/presentation/views/cart_view.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/home/view_model/cubits/home_state.dart';
import 'package:dalel/features/profile/presentation/views/profile_view.dart';
import 'package:dalel/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit()
      : super(
          HomeInitState(),
        );

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<Widget> navBarViews = const [
    HomeViewBody(),
    CardViewBody(),
    SearchViewBody(),
    ProfileViewBody(),
  ];

  final List<BottomNavigationBarItem> bottomNavigationBarItemList = const [
    BottomNavigationBarItem(
      backgroundColor: AppColor.primaryColor,
      icon: Icon(
        Icons.home,
        color: AppColor.splashTextColor,
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      backgroundColor: AppColor.primaryColor,
      icon: Icon(
        Icons.shopping_cart,
        color: AppColor.splashTextColor,
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      backgroundColor: AppColor.primaryColor,
      icon: Icon(
        Icons.search,
        color: AppColor.splashTextColor,
      ),
      label: "",
    ),
    BottomNavigationBarItem(
      backgroundColor: AppColor.primaryColor,
      icon: Icon(
        Icons.person,
        color: AppColor.splashTextColor,
      ),
      label: "",
    ),
  ];

  void onTap(int value) {
    currentIndex = value;
    emit(
      BottomNavBarState(),
    );
  }
}
