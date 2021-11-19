import 'package:expenses_ui_challenge/model/transaction.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static const redColor = Color(0xFFE13E34);
  static const blueColor = Color(0xFF2E8DFF);
  static const lightBlueColor = Color(0xFF4D98F4);
  static const greenColor = Color(0xFF20C764);
  static const lightGreyColor = Color(0xFFF7F9FC);
  static const greyColor = Color(0xFFeFF1F5);
  static Color titleTextColor = Color(0xFF212226).withOpacity(0.9);
  static const subtitleTextColor = Color(0xFF999EA6);
  static const yellowColor = Color(0xFFFFDE2C);
  static const itemTextStyle = TextStyle(fontWeight: FontWeight.w600);
  static TextStyle primaryTextStyle = TextStyle(
    color: AppConstants.titleTextColor,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static List<Transaction> TRANSACTION_LIST = <Transaction>[
    Transaction(
      name: 'Spotify Premium',
      amount: 65,
      date: DateTime.now(),
      imageUrl: 'assets/spotify-logo.png',
    ),
    Transaction(
      name: 'App Store',
      amount: 30,
      date: DateTime.now(),
      imageUrl: 'assets/apple-logo.png',
    ),
  ];
}
