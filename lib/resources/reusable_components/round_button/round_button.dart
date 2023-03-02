import 'package:flutter/material.dart';
import 'package:lancemeup/resources/colors/app_colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  final Color buttonBackColor;
  final Color buttonTextColor;
  final double height, width, borderRadius;
  final bool loading;
  const RoundButton({
    super.key,
    required this.label,
    required this.onPress,
    this.borderRadius = 15,
    this.width = 300,
    this.height = 50,
    this.buttonBackColor = AppColor.lacemeColor,
    this.buttonTextColor = AppColor.whiteColor,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: buttonBackColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
            child: loading
                ? const Center(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Center(
                    child: Text(
                      label,
                      style: TextStyle(color: buttonTextColor),
                    ),
                  )),
      ),
    );
  }
}
