import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Coming soon...')],
    );
  }
}
