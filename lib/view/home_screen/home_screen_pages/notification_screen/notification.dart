import 'package:flutter/material.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';

class NotificationScreens extends StatefulWidget {
  const NotificationScreens({super.key});

  @override
  State<NotificationScreens> createState() => _NotificationScreensState();
}

class _NotificationScreensState extends State<NotificationScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            children: [
              buildListTileItems(
                  const Icon(
                    Icons.home,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.blackColor,
                  "Hey ram are you looking for a intern"),
              buildListTileItems(
                  const Icon(
                    Icons.get_app,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.lacemeColor,
                  "Hey do you meet your friend hari "),
              buildListTileItems(
                  const Icon(
                    Icons.chat_rounded,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.goldenColor,
                  "Hey do you wnat to go party with me"),
              buildListTileItems(
                  const Icon(
                    Icons.money,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.redColor,
                  "can you call me at 9 pm i have a big plan for us to go outside"),
              buildListTileItems(
                  const Icon(
                    Icons.notification_add,
                    color: AppColor.greyColor,
                  ),
                  AppColor.blackColor,
                  "do you want to be the professional coder come and join with me i will make you "),
              buildListTileItems(
                  const Icon(
                    Icons.safety_check,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.lacemeColor,
                  "Hey binit are you afraid with error dont afraid with error error is a small things for programmers we have to be happy"),
              buildListTileItems(
                  const Icon(
                    Icons.home,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.blackColor,
                  "Hey are you willing to do internship on the lancemeup , if you then i will make for good and better for the internship and then you wil be the good programmer and earns lots of the money did you get"),
              buildListTileItems(
                  const Icon(
                    Icons.person_2,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.goldenColor,
                  " Hey binit are you afraid with error dont afraid with error error is a small things for programmers we have to be happy"),
              buildListTileItems(
                  const Icon(
                    Icons.alarm,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.yellowColor,
                  "Hey preety programmer do you know one thng to be the good programmer its really easy sana bana masta le code gara and become a good developer"),
              buildListTileItems(
                  const Icon(
                    Icons.notification_add,
                    color: AppColor.whiteColor,
                  ),
                  AppColor.primaryColor,
                  "Hey binit are you afraid with error dont afraid with error error is a small things for programmers we have to be happy ani do you make you day happy by programming "),
            ],
          )
        ],
      )),
    );
  }

  Widget buildListTileItems(
    Icon icons,
    Color iconColor,
    String title,
  ) {
    return ListTile(
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44),
          color: iconColor,
        ),
        child: Center(
          child: Center(
            child: icons,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
      subtitle: const Text(
        "2m ago",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
