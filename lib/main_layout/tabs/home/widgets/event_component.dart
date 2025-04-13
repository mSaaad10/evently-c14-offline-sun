import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/data/DM/eventDM.dart';
import 'package:evently/main_layout/tabs/home/widgets/event_date_widget.dart';
import 'package:evently/main_layout/tabs/home/widgets/event_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventComponent extends StatelessWidget {
  const EventComponent({super.key, required this.eventDM});

  final EventDM eventDM;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 8, horizontal: 8),
      margin: REdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 203.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(ImagesAssets.birthDay),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EventDateWidget(date: eventDM.dateTime),
          SizedBox(
            height: 2,
          ),
          EventTitle(title: eventDM.title)
        ],
      ),
    );
  }
}
