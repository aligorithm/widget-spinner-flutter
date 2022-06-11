import 'package:flutter/material.dart';
import 'package:widget_spinner/app/widget_spinner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: const WidgetSpinner()),
    ));
  }
}
