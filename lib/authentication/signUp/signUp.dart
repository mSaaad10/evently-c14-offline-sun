import 'package:evently/authentication/widgets/custom_elevated_button.dart';
import 'package:evently/authentication/widgets/custom_text_button.dart';
import 'package:evently/authentication/widgets/custom_text_form_field.dart';
import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool securePassword = true;
  bool secureRePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Column(
        children: [
          Expanded(child: Image.asset(AssetsManager.logo)),
          SizedBox(
            height: 24.h,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextFormField(label: "Name", prefixIcon: Icons.person),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(label: "Email", prefixIcon: Icons.email),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    label: "Password",
                    prefixIcon: Icons.lock,
                    isSecure: securePassword,
                    suffixIcon: securePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    onClick: _onPasswordIconClicked,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    label: "Re-Password",
                    prefixIcon: Icons.lock,
                    isSecure: secureRePassword,
                    suffixIcon: secureRePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    onClick: _onRePasswordIconClicked,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomElevatedButton(title: "Sign-Up", onClick: () {}),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have Account?",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: ColorsManager.black,
                            decoration: TextDecoration.none),
                      ),
                      CustomTextButton(
                        title: "Sign-In",
                        onClick: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onPasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onRePasswordIconClicked() {
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }
}
