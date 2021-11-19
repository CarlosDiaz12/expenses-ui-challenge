import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  static const routeName = '/activity-page';
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
    );
  }
}
