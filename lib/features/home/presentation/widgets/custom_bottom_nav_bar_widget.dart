import 'package:flutter/material.dart';

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
    return SizedBox(
      height: 79,
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: items,
      ),
    );
  }
}
