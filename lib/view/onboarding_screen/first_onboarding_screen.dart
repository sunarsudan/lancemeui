import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancemeup/resources/assets/images/images.dart';

class FirstOnboardingScreen extends StatefulWidget {
  const FirstOnboardingScreen({super.key});

  @override
  State<FirstOnboardingScreen> createState() => _FirstOnboardingScreenState();
}

class _FirstOnboardingScreenState extends State<FirstOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: height / 4,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          appImage.onboardingFirstImage,
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                "email_title".tr,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text("email_description".tr)
            ],
          ),
        ),
      )),
    );
  }
}
