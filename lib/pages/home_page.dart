import 'package:expenses_ui_challenge/constants/app_constants.dart';
import 'package:expenses_ui_challenge/widgets/muted_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/card_widget.dart';
import '../widgets/header.dart';
import '../widgets/wallet_overview_section.dart';

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
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transaction',
                    style: AppConstants.primaryTextStyle,
                  ),
                  SizedBox(height: 20),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (ctx, i) => SizedBox(height: 10),
                    shrinkWrap: true,
                    itemCount: AppConstants.TRANSACTION_LIST.length,
                    itemBuilder: (ctx, index) {
                      var transaction = AppConstants.TRANSACTION_LIST[index];
                      return ListTile(
                        title: Text(
                          transaction.name,
                          style: AppConstants.primaryTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        leading: CircleAvatar(
                          radius: 26,
                          backgroundColor: AppConstants.greyColor,
                          child: Image.asset(
                            transaction.imageUrl,
                            width: 32,
                            height: 32,
                          ),
                        ),
                        subtitle: MutedText(
                          label: DateFormat.yMMMd()
                              .add_jm()
                              .format(transaction.date),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
