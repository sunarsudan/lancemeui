import 'package:flutter/material.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';

// ignore: must_be_immutable
class LineDivider extends StatelessWidget {
  int thick;
  final Color color;

  LineDivider({
    Key? key,
    required this.thick,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      color: AppColor.greyColor,
    );
  }
}
