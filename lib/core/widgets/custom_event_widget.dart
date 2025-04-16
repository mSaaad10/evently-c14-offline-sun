import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/core/widgets/event_date_widget.dart';
import 'package:evently/core/widgets/event_title_widget.dart';
import 'package:evently/data/DM/eventDM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEventWidget extends StatelessWidget {
  const CustomEventWidget({super.key, required this.eventDM});

  final EventDM eventDM;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 8, horizontal: 8),
      margin: REdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: ColorsManager.blue, width: 2),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(ImagesAssets.birthDay),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EventDateWidget(date: eventDM.dateTime),
          SizedBox(
            height: 98.h,
          ),
          EventTitleWidget(title: eventDM.title)
        ],
      ),
    );
  }
}
