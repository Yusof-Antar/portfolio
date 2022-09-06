import 'package:flutter/material.dart';

class AppResonsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const AppResonsive({
    required this.mobile,
    required this.tablet,
    required this.desktop,
    Key? key,
  }) : super(key: key);

  static bool isMobile(context) => (MediaQuery.of(context).size.width < 600);
  static bool isTablet(context) => (MediaQuery.of(context).size.width < 1250 && MediaQuery.of(context).size.width >= 600);
  static bool isDesktop(context) => (MediaQuery.of(context).size.width >= 1250);

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return desktop;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
