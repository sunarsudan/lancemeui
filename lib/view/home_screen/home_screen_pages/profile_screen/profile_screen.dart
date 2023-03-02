import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';
import 'package:lancemeup/resources/reusable_components/line_divider/line_divider.dart';
import 'package:lancemeup/resources/reusable_components/round_button/round_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
            ),
            title: Text("user_name".tr),
            subtitle: Text("user_email".tr),
          ),
          LineDivider(thick: 1, color: AppColor.greyColor),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTile(const Icon(Icons.home), "set_status".tr,
                  const Icon(Icons.arrow_forward)),
              buildTile(const Icon(Icons.man), "account".tr,
                  const Icon(Icons.arrow_forward)),
              buildTile(const Icon(Icons.alarm), "activity".tr,
                  const Icon(Icons.arrow_forward)),
              buildTile(const Icon(Icons.person), "connections".tr,
                  const Icon(Icons.arrow_forward)),
              LineDivider(thick: 1, color: AppColor.greyColor),
              Text("app_settings".tr),
              buildTile(const Icon(Icons.notification_add), "notifications".tr,
                  const Icon(Icons.arrow_forward)),
              buildTile(const Icon(Icons.colorize_sharp), "appearance".tr,
                  const Icon(Icons.arrow_forward)),
              LineDivider(thick: 1, color: AppColor.greyColor),
              Text("more".tr),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text("privacy_and_policy".tr),
              ),
              ListTile(
                title: Text("terms_and_conditions".tr),
                leading: Icon(Icons.book_outlined),
              ),
              buildTile(const Icon(Icons.query_stats_outlined),
                  "help_and_support".tr, const Icon(Icons.arrow_forward)),
              buildTile(const Icon(Icons.whatshot), "faqs".tr,
                  const Icon(Icons.arrow_forward)),
              Text("account".tr),
              TextButton.icon(
                  onPressed: () {
                    Get.bottomSheet(Container(
                        height: 300,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 166, 148, 148),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "bottom_sheet_title".tr,
                                style: TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "bottom_sheet_subtitle".tr,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: RoundButton(
                                    buttonBackColor: AppColor.redColor,
                                    borderRadius: 5,
                                    label: 'bottom_sheet_logout_button'.tr,
                                    onPress: () {}),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Center(
                                child: TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child:
                                        Text('bottom_sheet_cancel_button'.tr)),
                              ),
                            ],
                          ),
                        )));
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: AppColor.redColor,
                  ),
                  label: Text(
                    "logout_button".tr,
                    style: TextStyle(
                        color: AppColor.redColor, fontWeight: FontWeight.bold),
                  ))
            ],
          ))
        ],
      ),
    );
  }

  Widget buildTile(Icon icons, String title, Icon nextSign) {
    return ListTile(
      leading: icons,
      iconColor: AppColor.blackColor.withOpacity(1),
      title: Text(title),
      trailing: nextSign,
    );
  }
}
