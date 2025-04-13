import 'package:evently/data/DM/categort_DM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar(
      {super.key,
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
              .map((categoryDM) => buildTabComponent(
                    categoryDM: categoryDM,
                    isSelected:
                        widget.categories.indexOf(categoryDM) == selectedIndex,
                  ))
              .toList()),
    );
  }

  void _onTabBarItemClicked(int newIndex) {
    print(newIndex);
    setState(() {
      selectedIndex = newIndex;
    });
  }

  Widget buildTabComponent(
      {required CategoryDM categoryDM, required bool isSelected}) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: isSelected
              ? widget.selectedTabBgColor
              : widget.unSelectedTabBgColor,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: widget.selectedTabBgColor, width: 1)),
      child: Row(
        children: [
          SvgPicture.asset(
            categoryDM.iconPath,
            colorFilter: ColorFilter.mode(
                isSelected
                    ? widget.selectedTabContentColor
                    : widget.unSelectedTabContentColor,
                BlendMode.srcIn),
          ),
          SizedBox(
            width: 6.w,
          ),
          Text(
            categoryDM.name,
            style: TextStyle(
              color: isSelected
                  ? widget.selectedTabContentColor
                  : widget.unSelectedTabContentColor,
            ),
          )
        ],
      ),
    );
  }
}
