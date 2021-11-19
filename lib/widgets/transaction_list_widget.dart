import '../constants/app_constants.dart';
import '../model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'muted_text.dart';

class TransactionListWidget extends StatelessWidget {
  const TransactionListWidget({
    Key? key,
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
          itemCount: AppConstants.TRANSACTION_LIST.length,
          itemBuilder: (ctx, index) {
            var transaction = AppConstants.TRANSACTION_LIST[index];
            return _TransactionListItem(transaction: transaction);
          },
        ),
      ],
    );
  }
}

class _TransactionListItem extends StatelessWidget {
  const _TransactionListItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
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
        label: DateFormat.yMMMd().add_jm().format(transaction.date),
      ),
    );
  }
}
