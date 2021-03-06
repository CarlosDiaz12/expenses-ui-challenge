import '../constants/app_constants.dart';
import 'package:flutter/material.dart';

class MutedText extends StatelessWidget {
  final String label;
  final double? customFontSize;
  const MutedText({Key? key, required this.label, this.customFontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: AppConstants.subtitleTextColor.withOpacity(0.8),
        fontSize: customFontSize ?? 12,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
