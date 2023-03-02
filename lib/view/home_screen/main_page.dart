import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lancemeup/view/home_screen/home_screen_pages/email_screen/email_screen.dart';

import 'package:lancemeup/view/home_screen/home_screen_pages/profile_screen/profile_screen.dart';
import 'package:lancemeup/view/home_screen/home_screen_pages/search_screen/search_screen.dart';

import 'home_screen_pages/home_screen/home_screen.dart';
import 'home_screen_pages/notification_screen/notification.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List screenCollection = [
    const HomeScreen(),
    const SearchScreen(),
    const EmailScreen(),
    const NotificationScreens(),
    const ProfileScreen(),
  ];

  int _selected = 0;
  onTap(value) {
    setState(() {
      _selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screenCollection.elementAt(_selected)),
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (index) {
            setState(() {
              _selected = index;
            });
          },
          selectedIndex: _selected,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "home".tr),
            NavigationDestination(icon: Icon(Icons.search), label: "search".tr),
            NavigationDestination(icon: Icon(Icons.email), label: "email".tr),
            NavigationDestination(
                icon: Icon(Icons.notification_add), label: "notification".tr),
            NavigationDestination(icon: Icon(Icons.man), label: "profile".tr),
          ]),
    );
  }
}
