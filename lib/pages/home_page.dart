import 'package:expenses_ui_challenge/constants/app_constants.dart';
import 'package:flutter/services.dart';

import '../widgets/transaction_list_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/card_widget.dart';
import '../widgets/header.dart';
import '../widgets/wallet_overview_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
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
              WalletOverviewSection(),
              SizedBox(height: 20),
              TransactionListWidget(
                items: AppConstants.TRANSACTION_LIST,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
