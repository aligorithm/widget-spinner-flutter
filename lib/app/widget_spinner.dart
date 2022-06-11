import 'package:flutter/material.dart';

class WidgetSpinner extends StatefulWidget {
  const WidgetSpinner({Key? key}) : super(key: key);

  @override
  State<WidgetSpinner> createState() => _WidgetSpinnerState();
}

class _WidgetSpinnerState extends State<WidgetSpinner>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
      animationBehavior: AnimationBehavior.preserve,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
      child: GestureDetector(
        onLongPressStart: (details) => {
          _animationController.repeat(),
        },
        onLongPressEnd: (details) => {
          _animationController.stop(),
        },
        child: Image.asset('assets/images/fidget_spinner_light_blue.png'),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
