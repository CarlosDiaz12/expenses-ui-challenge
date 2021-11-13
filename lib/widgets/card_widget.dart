import 'package:expenses_ui_challenge/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-1.0, 2.0),
            end: Alignment(1.0, -2.0),
            colors: [
              Color(0xFFffed8a),
              Color(0xFFffed8a),
              Color(0xFFff8965),
              Color(0xFFffed8a),
              Color(0xFFffed8a),
            ],
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        width: double.infinity,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Carlos Diaz',
                    style: TextStyle(
                      color: AppConstants.titleTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/mastercard-logo-svg.svg',
                    height: 24,
                    width: 28,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BALANCE',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '\$65,500.60',
                    style: TextStyle(
                      color: AppConstants.titleTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '0123 4567 8910 1112',
                    style: TextStyle(
                      color: AppConstants.titleTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '11/23',
                    style: TextStyle(
                      color: AppConstants.titleTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
