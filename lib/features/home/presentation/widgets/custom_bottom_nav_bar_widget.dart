
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
