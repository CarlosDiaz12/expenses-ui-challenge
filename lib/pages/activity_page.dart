import 'package:expenses_ui_challenge/constants/app_constants.dart';
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
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            children: [
              Text(
                'Monthly Report',
                style: AppConstants.primaryTextStyle,
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
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Activity',
        style: AppConstants.primaryTextStyle.copyWith(
          fontWeight: FontWeight.w900,
          fontSize: 18,
        ),
      ),
    );
  }
}
