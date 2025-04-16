import 'package:evently/data/DM/categort_DM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTab extends StatelessWidget {
  const CustomTab(
      {super.key,
      required this.categoryDM,
      required this.isSelected,
      required this.selectedTabBgColor,
      required this.unSelectedTabBgColor,
      required this.selectedTabContentColor,
      required this.unSelectedTabContentColor});

  final CategoryDM categoryDM;
  final bool isSelected;
  final Color selectedTabBgColor;
  final Color unSelectedTabBgColor;
  final Color selectedTabContentColor;
  final Color unSelectedTabContentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: isSelected ? selectedTabBgColor : unSelectedTabBgColor,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: selectedTabBgColor, width: 1)),
      child: Row(
        children: [
          SvgPicture.asset(
            categoryDM.iconPath,
            colorFilter: ColorFilter.mode(
                isSelected
                    ? selectedTabContentColor
                    : unSelectedTabContentColor,
                BlendMode.srcIn),
          ),
          SizedBox(
            width: 6.w,
          ),
          Text(
            categoryDM.name,
            style: TextStyle(
              color: isSelected
                  ? selectedTabContentColor
                  : unSelectedTabContentColor,
            ),
          )
        ],
      ),
    );
  }
}
