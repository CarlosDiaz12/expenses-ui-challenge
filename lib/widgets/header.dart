import 'package:expenses_ui_challenge/constants/app_constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Good Morning',
              style: TextStyle(
                color: AppConstants.subtitleTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Carlos Diaz',
              style: TextStyle(
                color: AppConstants.titleTextColor,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        const CircleAvatar(
          backgroundColor: AppConstants.yellowColor,
          radius: 24,
        ),
      ],
    );
  }
}
