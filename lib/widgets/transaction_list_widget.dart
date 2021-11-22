import '../constants/app_constants.dart';
import '../model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'muted_text.dart';

class TransactionListWidget extends StatelessWidget {
  final List<Transaction> items;
  final double? iconSize;
  const TransactionListWidget({
    Key? key,
    required this.items,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          itemCount: items.length,
          itemBuilder: (ctx, index) {
            var transaction = items[index];
            return _TransactionListItem(
              transaction: transaction,
              iconSize: iconSize,
            );
          },
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class _TransactionListItem extends StatelessWidget {
  late double? iconSize;
  _TransactionListItem({
    Key? key,
    required this.transaction,
    this.iconSize,
  }) : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    iconSize ??= 32;
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 4),
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
          width: iconSize,
          height: iconSize,
        ),
      ),
      subtitle: MutedText(
        label: DateFormat.yMMMd().add_jm().format(transaction.date),
      ),
      trailing: Text(
        '\$${transaction.amount}',
        style: AppConstants.primaryTextStyle.copyWith(
          fontSize: 18,
        ),
      ),
    );
  }
}
