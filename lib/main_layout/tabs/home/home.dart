import 'package:evently/main_layout/tabs/home/widgets/custom_tab_bar.dart';
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
                    const Icon(
                      Icons.location_pin,
                    ),
                    Text("Cairo, Egypt",
                        style: Theme.of(context).textTheme.titleSmall)
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomTabBar(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
