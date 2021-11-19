import '../constants/app_constants.dart';
import 'custom_box.dart';
import 'muted_text.dart';
import 'package:flutter/material.dart';

class TransactionTypeBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color circleColor;
  const TransactionTypeBox({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.circleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: circleColor,
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MutedText(label: title),
              SizedBox(height: 8),
              Text(
                description,
                style: AppConstants.primaryTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
