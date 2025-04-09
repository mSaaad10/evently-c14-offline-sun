import 'package:evently/DM/categort_DM.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/core/resources/constant_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ConstantManager.categories.length,
      child: TabBar(
          onTap: _onTabBarItemClicked,
          isScrollable: true,

          /// get index of mapping category == index clicked tab ? selected
          tabs: ConstantManager.categories
              .map((categoryDM) => buildTabComponent(
                    categoryDM: categoryDM,
                    isSelected:
                        ConstantManager.categories.indexOf(categoryDM) ==
                            selectedIndex,
                  ))
              .toList()),
    );
  }

  void _onTabBarItemClicked(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  Widget buildTabComponent(
      {required CategoryDM categoryDM, required bool isSelected}) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
          color: isSelected ? ColorsManager.light : Colors.transparent,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ColorsManager.light, width: 1)),
      child: Row(
        children: [
          SvgPicture.asset(
            categoryDM.iconPath,
            colorFilter: ColorFilter.mode(
                isSelected ? ColorsManager.blue : ColorsManager.light,
                BlendMode.srcIn),
          ),
          SizedBox(
            width: 6.w,
          ),
          Text(
            categoryDM.name,
            style: TextStyle(
              color: isSelected ? ColorsManager.blue : ColorsManager.light,
            ),
          )
        ],
      ),
    );
  }
}
