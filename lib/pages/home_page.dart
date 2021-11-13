import 'package:expenses_ui_challenge/constants/app_constants.dart';
import 'package:expenses_ui_challenge/widgets/card_widget.dart';
import 'package:expenses_ui_challenge/widgets/custom_box.dart';
import 'package:expenses_ui_challenge/widgets/header.dart';
import 'package:flutter/material.dart';

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
                      style: TextStyle(
                        color: AppConstants.titleTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
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
                              Text(
                                'Budget for this month',
                                style: TextStyle(
                                  color: AppConstants.subtitleTextColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
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
                          child: CustomBox(
                            child: Text('hola'),
                          ),
                        ),
                        SizedBox(width: 16),
                        Flexible(
                          child: CustomBox(
                            child: Text('hola'),
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
    );
  }
}
