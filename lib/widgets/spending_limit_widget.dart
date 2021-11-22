import '../constants/app_constants.dart';
import 'muted_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'custom_box.dart';

class SpendingLimitWidget extends StatelessWidget {
  const SpendingLimitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Montly spending limit',
                  style: AppConstants.primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.1,
                  ),
                ),
                SizedBox(height: 10),
                MutedText(label: 'Spend: \$5,000/\$10,000'),
              ],
            ),
          ),
          Flexible(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, right: 16),
                  width: 50,
                  height: 50,
                  child: PieChart(
                    PieChartData(
                      centerSpaceColor: Colors.white,
                      startDegreeOffset: 180,
                      sectionsSpace: 0,
                      centerSpaceRadius: 25,
                      sections: [
                        PieChartSectionData(
                          showTitle: false,
                          value: 25,
                          radius: 12,
                          color: AppConstants.greyColor,
                        ),
                        PieChartSectionData(
                          showTitle: false,
                          value: 75,
                          radius: 12,
                          color: AppConstants.blueColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 32,
                  left: 14,
                  child: Text(
                    '75%',
                    style: AppConstants.primaryTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
