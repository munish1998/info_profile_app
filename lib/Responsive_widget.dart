import 'package:flutter/material.dart';
import 'package:flutter_web/iphone.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveWidget({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 650) {
        return const MobilePage();
      } else if (constraints.maxWidth > 650 && constraints.maxWidth < 960) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
