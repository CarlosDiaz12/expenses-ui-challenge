import '../constants/app_constants.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.show_chart_outlined),
          label: 'Activity',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
      currentIndex: 0,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      selectedItemColor: AppConstants.blueColor,
      selectedFontSize: 12.0,
      selectedLabelStyle: AppConstants.itemTextStyle,
      unselectedLabelStyle: AppConstants.itemTextStyle,
    );
  }
}
