import 'package:evently/authentication/widgets/custom_elevated_button.dart';
import 'package:evently/authentication/widgets/custom_text_button.dart';
import 'package:evently/authentication/widgets/custom_text_form_field.dart';
import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/core/widgets/custom_button.dart';
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
              Expanded(
                child: Image.asset(
                  imagesAssets.logo,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                      suffixIcon:
                          secure ? Icons.visibility_off : Icons.visibility,
                      isSecure: secure,
                      onClick: _onClick,
                    ),
                    CustomTextButton(
                      title: "Forget Password?",
                      onClick: () {},
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomElevatedButton(
                      title: "Sign-In",
                      onClick: () {},
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don’t Have Account ? "),
                        CustomTextButton(
                          title: "Create Account",
                          onClick: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    buildOrWidget(),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomButton(title: "Login With Google", onClick: () {}),
                  ],
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

  buildOrWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
          margin: REdgeInsets.symmetric(horizontal: 16),
          color: ColorsManager.blue,
          height: 2,
        )),
        const Text("Or"),
        Expanded(
            child: Container(
          margin: REdgeInsets.symmetric(horizontal: 16),
          color: ColorsManager.blue,
          height: 2,
        )),
      ],
    );
  }
}
