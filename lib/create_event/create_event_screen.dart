import 'package:evently/authentication/widgets/custom_elevated_button.dart';
import 'package:evently/authentication/widgets/custom_text_button.dart';
import 'package:evently/authentication/widgets/custom_text_form_field.dart';
import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/core/resources/constant_manager.dart';
import 'package:evently/core/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({super.key});

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Event",
        ),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 16.h,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(ImagesAssets.birthDay)),
              SizedBox(
                height: 16.h,
              ),
              CustomTabBar(
                categories: ConstantManager.categories,
                selectedTabBgColor: ColorsManager.blue,
                unSelectedTabBgColor: Colors.transparent,
                selectedTabContentColor: ColorsManager.white,
                unSelectedTabContentColor: ColorsManager.blue,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Title",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                  hint: "Event Title", prefixIcon: Icons.edit_rounded),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Description",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                lines: 4,
                hint: "Event Description",
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.date_range_outlined,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    "Event Date",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const Spacer(),
                  CustomTextButton(
                      title: "Choose Date", onClick: _selectEventDate)
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.date_range_outlined,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    "Event Time",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const Spacer(),
                  CustomTextButton(
                      title: "Choose Time", onClick: _selectEventTime)
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomElevatedButton(title: "Create Event", onClick: () {}),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _selectEventDate() {
    showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        initialDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 356)));
  }

  void _selectEventTime() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }
}
