import 'package:expenses_ui_challenge/constants/app_constants.dart';
import 'package:expenses_ui_challenge/widgets/bottom_navigation.dart';
import 'package:expenses_ui_challenge/widgets/card_widget.dart';
import 'package:expenses_ui_challenge/widgets/custom_box.dart';
import 'package:expenses_ui_challenge/widgets/header.dart';
import 'package:expenses_ui_challenge/widgets/muted_text.dart';
import 'package:expenses_ui_challenge/widgets/transaction_type_box.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            children: [
              Header(),
              SizedBox(height: 20),
              CardWidget(),
              SizedBox(height: 20),
              Container(
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
                            onPressed: () {},
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
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
