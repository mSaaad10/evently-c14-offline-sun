import 'package:evently/core/extentions/date_ex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDateWidget extends StatelessWidget {
  const EventDateWidget({super.key, required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: REdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
        child: Column(
          children: [
            Text(
              date.day.toString(),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(date.viewMonthText,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 14.sp)),
          ],
        ),
      ),
    );
  }
}
