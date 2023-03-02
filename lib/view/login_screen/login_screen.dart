import 'package:flutter/material.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';
import 'package:lancemeup/resources/reusable_components/round_button/round_button.dart';
import 'package:get/get.dart';
import 'package:lancemeup/view/home_screen/main_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lacemeColor,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Text("login_title".tr),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Form(
                key: _globalKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "email_required".tr;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'email_hint_text'.tr,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password_required'.tr;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'password_hint_text'.tr,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text('remember_me'.tr)
                          ],
                        ),
                        Text('forgot_password'.tr),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    RoundButton(
                        label: 'login_button'.tr,
                        onPress: () {
                          if (_globalKey.currentState!.validate()) {
                            Get.to(const MainScreen());
                          }
                        })
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
