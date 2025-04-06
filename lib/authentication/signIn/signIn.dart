import 'package:evently/authentication/widgets/custom_text_button.dart';
import 'package:evently/authentication/widgets/custom_text_form_field.dart';
import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Image.asset(
                AssetsManager.eventlyLogo,
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomTextFormField(
                label: "Email",
                prefixIcon: Icons.email,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextFormField(
                label: "Password",
                prefixIcon: Icons.lock,
                suffixIcon: secure ? Icons.visibility_off : Icons.visibility,
                isSecure: secure,
                onClick: _onClick,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextButton(title: "Forget Password?"),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign-In",
                        style: Theme.of(context).textTheme.titleMedium,
                      ))),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t Have Account ? "),
                  CustomTextButton(title: "Create Account"),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    margin: REdgeInsets.symmetric(horizontal: 16),
                    color: ColorsManager.blue,
                    height: 2,
                  )),
                  Text("Or"),
                  Expanded(
                      child: Container(
                    margin: REdgeInsets.symmetric(horizontal: 16),
                    color: ColorsManager.blue,
                    height: 2,
                  )),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: REdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: ColorsManager.blue, width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AssetsManager.google),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Login With Google",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onClick() {
    setState(() {
      secure = !secure;
    });
  }
}
