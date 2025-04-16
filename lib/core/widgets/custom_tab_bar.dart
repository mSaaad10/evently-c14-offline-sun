import 'package:evently/core/widgets/custom_tab.dart';
import 'package:evently/data/DM/categort_DM.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key,
    required this.categories,
    required this.selectedTabBgColor,
    required this.unSelectedTabBgColor,
    required this.selectedTabContentColor,
    required this.unSelectedTabContentColor});

  final List<CategoryDM> categories;
  final Color selectedTabBgColor;
  final Color unSelectedTabBgColor;
  final Color selectedTabContentColor;
  final Color unSelectedTabContentColor;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.categories.length,
      child: TabBar(
          onTap: _onTabBarItemClicked,
          isScrollable: true,

          /// get index of mapping category == index clicked tab ? selected
          tabs: widget.categories
              .map((categoryDM) => CustomTab(
                    categoryDM: categoryDM,
                    isSelected:
                        widget.categories.indexOf(categoryDM) == selectedIndex,
                    selectedTabBgColor: widget.selectedTabBgColor,
                    unSelectedTabBgColor: widget.unSelectedTabBgColor,
                    selectedTabContentColor: widget.selectedTabContentColor,
                    unSelectedTabContentColor: widget.unSelectedTabContentColor,
                  ))
              .toList()),
    );
  }

  void _onTabBarItemClicked(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
