import 'package:expenses_ui_challenge/widgets/transaction_list_widget.dart';
import 'package:fl_chart/fl_chart.dart';

import '../constants/app_constants.dart';
import '../widgets/activity_page_header.dart';
import '../widgets/spending_limit_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ActivityPage extends StatelessWidget {
  static const routeName = '/activity-page';
  final Color leftBarColor = AppConstants.blueColor;
  final Color rightBarColor = AppConstants.yellowColor;
  final double width = 12;

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 12, x: x, barRods: [
      BarChartRodData(
        y: y1,
        colors: [leftBarColor],
        width: width,
      ),
      BarChartRodData(
        y: y2,
        colors: [rightBarColor],
        width: width,
      ),
    ]);
  }

  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    final barGroup1 = makeGroupData(0, 20, 10);
    final barGroup2 = makeGroupData(1, 30, 10);
    final barGroup3 = makeGroupData(2, 30, 20);
    final barGroup4 = makeGroupData(3, 40, 20);
    final barGroup5 = makeGroupData(4, 10, 30);
    final barGroup6 = makeGroupData(5, 20, 40);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
    ];
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
              ActivityPageHeader(),
              SizedBox(height: 10),
              Container(
                height: 270,
                width: double.infinity,
                child: Center(
                  child: BarChart(BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 50,
                    // minY: -50,
                    backgroundColor: Colors.white,
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: items,
                    titlesData: FlTitlesData(
                      show: true,
                      topTitles: SideTitles(showTitles: false),
                      rightTitles: SideTitles(showTitles: false),
                      bottomTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (context, value) => const TextStyle(
                          color: Color(0xff7589a2),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                        interval: 1,
                        getTitles: (double value) {
                          switch (value.toInt()) {
                            case 0:
                              return '24h';
                            case 1:
                              return '1d';
                            case 2:
                              return '3d';
                            case 3:
                              return '1w';
                            case 4:
                              return '3w';
                            case 5:
                              return '1m';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (context, value) => const TextStyle(
                          color: Color(0xff7589a2),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                        interval: 1,
                        getTitles: (value) {
                          if (value == 0) {
                            return '0';
                          } else if (value == 10) {
                            return '2K';
                          } else if (value == 20) {
                            return '4K';
                          } else if (value == 30) {
                            return '6K';
                          } else if (value == 40) {
                            return '8K';
                          } else {
                            return '';
                          }
                        },
                      ),
                    ),
                  )),
                ),
              ),
              SizedBox(height: 20),
              SpendingLimitWidget(),
              SizedBox(height: 20),
              TransactionListWidget(
                items: AppConstants.ACTIVITY_TRANSACTION_LIST,
                iconSize: 24,
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
