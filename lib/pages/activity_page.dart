import 'package:expenses_ui_challenge/widgets/transaction_list_widget.dart';

import '../constants/app_constants.dart';
import '../widgets/activity_page_header.dart';
import '../widgets/spending_limit_widget.dart';
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
              ActivityPageHeader(),
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
