import 'package:expenses_ui_challenge/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final Widget child;
  const CustomBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 72,
      decoration: BoxDecoration(
        color: AppConstants.lightGreyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
