import '../pages/activity_page.dart';

import '../constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'custom_box.dart';
import 'muted_text.dart';
import 'transaction_type_box.dart';

class WalletOverviewSection extends StatelessWidget {
  const WalletOverviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Wallet',
            style: AppConstants.primaryTextStyle,
          ),
          SizedBox(height: 15),
          CustomBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$65,500.60',
                      style: TextStyle(
                        color: AppConstants.titleTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 6),
                    MutedText(label: 'Budget for this month'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ActivityPage.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: AppConstants.blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text('See Activity'),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Flexible(
                child: TransactionTypeBox(
                  icon: Icons.south_west,
                  title: 'Income',
                  description: '\$23,953',
                  circleColor: AppConstants.greenColor,
                ),
              ),
              SizedBox(width: 16),
              Flexible(
                child: TransactionTypeBox(
                  icon: Icons.north_east,
                  title: 'Outcome',
                  description: '\$10,524',
                  circleColor: AppConstants.redColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
