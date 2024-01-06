import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging_app/components/custom_button.dart';
import 'package:messaging_app/components/custom_textfield.dart';

import '../components/appstyle.dart';

class LoginPage extends StatelessWidget {
  //email and password controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginPage({super.key});

  //login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Text(
              'S N D',
              style: appstyle(
                43,
                Colors.purple.shade900,
                FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 40.h,
            ),

            //welcome back message
            Text(
              "Welcome back! you've been missed",
              style: appstyle(
                23,
                Theme.of(context).colorScheme.inversePrimary,
                FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 40.h,
            ),

            //email textfield
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: CustomTextfield(
                hintText: "Email",
                obscureText: false,
                controller: _emailController,
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            //pw textfield
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: CustomTextfield(
                hintText: "Password",
                obscureText: true,
                controller: _passwordController,
              ),
            ),

            SizedBox(
              height: 30.h,
            ),

            // login button
            CustomButton(
              buttonName: "LOGIN",
              onTap: login,
            ),

            SizedBox(
              height: 30.h,
            ),

            //register now
            Text.rich(
              TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w600,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: "Register here",
                      style: TextStyle(
                        fontSize: 19.sp,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            Theme.of(context).colorScheme.inversePrimary,
                        decorationThickness: 2,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      )),
                  // can add more TextSpans here...
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
