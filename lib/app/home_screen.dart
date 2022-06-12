import 'package:flutter/material.dart';
import 'package:widget_spinner/app/widget_spinner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
          child: WidgetSpinner()),
    ));
  }
}
