import 'package:flutter/material.dart';
import 'package:lancemeup/model/slider_controller/sider_controller.dart';
import 'package:lancemeup/resources/assets/images/images.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SliderController sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        toolbarHeight: 80,
        elevation: 0,
        leading: Icon(
          Icons.logo_dev,
          size: 50,
          color: AppColor.redColor,
        ),
        title: Text(
          "home_title",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColor.blackColor),
        ),
        actions: [
          Icon(
            Icons.search,
            color: AppColor.blackColor,
            size: 50,
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          Expanded(
            child: projectTeam(
                "project_team_leader_name".tr,
                Icon(Icons.south_america),
                "template_name".tr,
                "template_status".tr,
                "template_last_updated".tr),
          ),
          Expanded(
            child: projectTeam(
                "project_team_leader_name".tr,
                Icon(Icons.south_america),
                "template_name".tr,
                "template_status".tr,
                "template_last_updated".tr),
          ),
          Expanded(
            child: projectTeam(
                "project_team_leader_name".tr,
                Icon(Icons.south_america),
                "template_name".tr,
                "template_status".tr,
                "template_last_updated".tr),
          ),
        ],
      )),
    );
  }

  Widget projectTeam(String heading, Icon icons, String template, String status,
      String lastUpdated) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      heading,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    icons,
                  ],
                ),
                Icon(Icons.threed_rotation),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Templated",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  template,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  status,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  lastUpdated,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Last Updated",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "2m ago",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Obx(
              () => Slider(
                  activeColor: Colors.green,
                  label: "40",
                  inactiveColor: Colors.red,
                  value: sliderController.sliderValue.value.toDouble(),
                  onChanged: (value) {
                    sliderController.sliderChange(value);
                  }),
            ),
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: Stack(
                    children: [
                      Positioned(
                          left: 72,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    appImage.fifthAppUser,
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          )),
                      Positioned(
                          left: 54,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    appImage.forthAppUser,
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          )),
                      Positioned(
                          left: 36,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    appImage.thirdAppUser,
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          )),
                      Positioned(
                          left: 18,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    appImage.secondAppUser,
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          )),
                      Positioned(
                          child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                appImage.firstAppUser,
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
