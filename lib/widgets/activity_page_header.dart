import '../constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'muted_text.dart';

class ActivityPageHeader extends StatelessWidget {
  const ActivityPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Monthly Report',
          style: AppConstants.primaryTextStyle,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            color: AppConstants.lightGreyColor,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              style: BorderStyle.none,
            ),
          ),
          child: DropdownButton<String>(
            elevation: 0,
            value: '01',
            icon: Icon(Icons.keyboard_arrow_down_rounded),
            items: [
              DropdownMenuItem(
                child: MutedText(
                  label: 'January',
                  customFontSize: 14,
                ),
                value: '01',
              ),
            ],
            isDense: true,
            underline: Container(),
            dropdownColor: AppConstants.greyColor,
          ),
        ),
      ],
    );
  }
}
