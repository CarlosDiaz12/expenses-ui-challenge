import '../constants/app_constants.dart';
import 'wallet_overview.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/card_widget.dart';
import '../widgets/custom_box.dart';
import '../widgets/header.dart';
import '../widgets/muted_text.dart';
import '../widgets/transaction_type_box.dart';
import '../widgets/wallet_overview_section.dart';
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
              WalletOverviewSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
