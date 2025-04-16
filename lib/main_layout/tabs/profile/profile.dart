import 'package:evently/core/extentions/context.dart';
import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/main_layout/tabs/profile/widgets/custom_profile_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selectedLang = "English";
  String selectedTheme = "Light";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: ColorsManager.blue,
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(52.r))),
          child: Padding(
            padding: REdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              children: [
                Expanded(child: Image.asset(ImagesAssets.profileImage)),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "User Name",
                        style: context.profileUserName,
                      ),
                      Text("muhammedsaad@gmail.com",
                          style: context.profileAccount),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomProfileDropDownMenu(
                  dropDownTitle: "Language",
                  dropDownItems: const ["English", "عربي"],
                  dropDownTextView: selectedLang,
                  onChange: (newLanguage) {
                    selectedLang = newLanguage ?? selectedLang;
                    setState(() {});
                  }),
              SizedBox(
                height: 16.h,
              ),
              CustomProfileDropDownMenu(
                  dropDownTitle: "Theme",
                  dropDownItems: const ["Light", "Dark"],
                  dropDownTextView: selectedTheme,
                  onChange: (newTheme) {
                    selectedTheme = newTheme ?? selectedTheme;
                    setState(() {});
                  }),
            ],
          ),
        )
      ],
    );
  }
}
