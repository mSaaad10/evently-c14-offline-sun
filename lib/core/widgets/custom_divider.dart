import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
          margin: REdgeInsets.symmetric(horizontal: 16),
          color: Theme.of(context).primaryColor,
          height: 2.h,
        )),
        Text(text),
        Expanded(
            child: Container(
          margin: REdgeInsets.symmetric(horizontal: 16),
          color: Theme.of(context).primaryColor,
          height: 2.h,
        )),
      ],
    );
  }
}
