import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/core/resources/constant_manager.dart';
import 'package:evently/core/widgets/custom_event_widget.dart';
import 'package:evently/core/widgets/custom_tab_bar.dart';
import 'package:evently/data/DM/eventDM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(16.r))),
          child: Padding(
            padding: REdgeInsets.only(top: 48, bottom: 16, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back ✨",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  "Muhammed Saad",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    Text("Cairo, Egypt",
                        style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomTabBar(
                  categories: ConstantManager.categoriesWithAll,
                  selectedTabBgColor: Theme.of(context).colorScheme.secondary,
                  unSelectedTabBgColor: Colors.transparent,
                  selectedTabContentColor:
                      Theme.of(context).colorScheme.onSecondary,
                  unSelectedTabContentColor: ColorsManager.light,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => CustomEventWidget(
              eventDM: EventDM(
                title: "title",
                description: "description",
                category: "BirthDay",
                dateTime: DateTime.now(),
                time: DateTime.now(),
                imagePath: ImagesAssets.birthDay,
              ),
            ),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
