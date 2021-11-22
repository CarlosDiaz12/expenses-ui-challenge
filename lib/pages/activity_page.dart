import 'package:expenses_ui_challenge/constants/app_constants.dart';
import 'package:expenses_ui_challenge/widgets/custom_box.dart';
import 'package:expenses_ui_challenge/widgets/muted_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ActivityPage extends StatelessWidget {
  static const routeName = '/activity-page';
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: _CustomAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Monthly Report',
                    style: AppConstants.primaryTextStyle,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                      color: AppConstants.lightGreyColor,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        style: BorderStyle.none,
                      ),
                    ),
                    child: DropdownButton<String>(
                      elevation: 0,
                      value: '01',
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      items: [
                        DropdownMenuItem(
                          child: MutedText(
                            label: 'January',
                            customFontSize: 14,
                          ),
                          value: '01',
                        ),
                      ],
                      isDense: true,
                      underline: Container(),
                      dropdownColor: AppConstants.greyColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                color: AppConstants.lightGreyColor,
                height: 270,
                width: double.infinity,
                child: Center(
                  child: Text('Chart here'),
                ),
              ),
              SizedBox(height: 20),
              CustomBox(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      leading: GestureDetector(
        onTap: () {
          if (Navigator.canPop(context)) {
            Navigator.of(context).pop();
          }
        },
        child: Icon(
          Icons.arrow_back_ios_new,
          color: AppConstants.titleTextColor,
          size: 16,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Activity',
        style: AppConstants.primaryTextStyle.copyWith(
          fontWeight: FontWeight.w900,
          fontSize: 17,
        ),
      ),
    );
  }
}
