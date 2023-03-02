import 'dart:ffi';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lancemeup/resources/assets/images/images.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.navigation,
          color: AppColor.blackColor,
        ),
        toolbarHeight: 70,
        elevation: 1,
        backgroundColor: AppColor.whiteColor,
        title: SizedBox(
          height: 50,
          width: 250,
          child: TextFormField(
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
                hintText: "search_mail_hint_text".tr,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage(appImage.onboardingFirstImage),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          emailCompose(Icon(Icons.home), AppColor.goldenColor, "email_title".tr,
              "Dec 9", "email_description".tr),
          emailComposeWithCoverPicture(
              Icon(Icons.grain),
              AppColor.blueColor,
              "email_title_with_image".tr,
              "email_comming_time_with_image".tr,
              "email_description_with_image".tr,
              "email_photo_name".tr),
          emailCompose(Icon(Icons.home), AppColor.goldenColor, "email_title".tr,
              "Dec 9", "email_description".tr),
          emailComposeWithCoverPicture(
              Icon(Icons.grain),
              AppColor.blueColor,
              "email_title_with_image".tr,
              "email_comming_time_with_image".tr,
              "email_description_with_image".tr,
              "email_photo_name".tr),
          emailCompose(Icon(Icons.home), AppColor.goldenColor, "email_title".tr,
              "Dec 9", "email_description".tr),
          emailComposeWithCoverPicture(
              Icon(Icons.grain),
              AppColor.blueColor,
              "email_title_with_image".tr,
              "email_comming_time_with_image".tr,
              "email_description_with_image".tr,
              "email_photo_name".tr),
          emailCompose(Icon(Icons.home), AppColor.goldenColor, "email_title".tr,
              "Dec 9", "email_description".tr),
          emailComposeWithCoverPicture(
              Icon(Icons.grain),
              AppColor.blueColor,
              "email_title_with_image".tr,
              "email_comming_time_with_image".tr,
              "email_description_with_image".tr,
              "email_photo_name".tr),
          emailCompose(Icon(Icons.home), AppColor.goldenColor, "email_title".tr,
              "Dec 9", "email_description".tr),
          emailComposeWithCoverPicture(
              Icon(Icons.grain),
              AppColor.blueColor,
              "email_title_with_image".tr,
              "email_comming_time_with_image".tr,
              "email_description_with_image".tr,
              "email_photo_name".tr),
        ],
      )),
      floatingActionButton: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
            color: AppColor.lacemeColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Center(
            child: Center(
          child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                size: 25,
                color: AppColor.blackColor,
              ),
              label: Text(
                "compose_mail_button".tr,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColor.blackColor),
              )),
        )),
      ),
    );
  }

// email picture without the coverpicture
  Widget emailCompose(Icon icons, Color iconBackColor, String title,
      String time, String subtitle) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: iconBackColor,
                  borderRadius: BorderRadius.circular(40.0)),
              child: Center(
                child: icons,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 130,
              child: Text(
                title.toString(),
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 30,
              width: 60,
              child: Text(time.toString()),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 80,
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(subtitle),
              ),
            ),
            Icon(Icons.star),
          ],
        )
      ],
    );
  }

// email compose with cover picture .....

  Widget emailComposeWithCoverPicture(Icon icons, Color iconBackColor,
      String title, String time, String subtitle, String boxImageName) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: iconBackColor,
                  borderRadius: BorderRadius.circular(40.0)),
              child: Center(
                child: icons,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 130,
              child: Text(
                title.toString(),
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 30,
              width: 60,
              child: Text(time.toString()),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 80,
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(subtitle),
              ),
            ),
            Icon(Icons.star),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Container(
          height: 50,
          width: 230,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColor.blackColor),
              borderRadius: BorderRadius.circular(6.0)),
          child: Center(
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.image),
              label: Text(boxImageName),
            ),
          ),
        ),
      ],
    );
  }
}
