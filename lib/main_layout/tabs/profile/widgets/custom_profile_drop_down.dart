import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileDropDownMenu extends StatelessWidget {
  const CustomProfileDropDownMenu(
      {super.key,
      required this.dropDownTitle,
      required this.dropDownItems,
      required this.onChange,
      required this.dropDownTextView});

  final String dropDownTitle;
  final List<String> dropDownItems;
  final Function(String?) onChange;
  final String dropDownTextView;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dropDownTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
            padding: REdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: ColorsManager.blue, width: 2.w)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dropDownTextView,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 28.h,
                  child: DropdownButton<String>(
                      underline: Container(),
                      padding: EdgeInsets.zero,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 16.sp),
                      items: dropDownItems.map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: onChange),
                )
              ],
            ))
      ],
    );
  }
}
