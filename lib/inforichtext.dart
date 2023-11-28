import 'package:flutter/material.dart';
import 'package:flutter_web/app_string.dart';

class InfoRichtext extends StatelessWidget {
  const InfoRichtext({super.key});
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(children: [
      TextSpan(
          text: AppStrings.info,
          style: TextStyle(
              wordSpacing: 2,
              letterSpacing: 1.5,
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600)),
      TextSpan(
          text: AppStrings.provide,
          style: TextStyle(
              wordSpacing: 2,
              letterSpacing: 1.5,
              color: Color.fromARGB(255, 7, 99, 198),
              fontSize: 16,
              fontWeight: FontWeight.w600)),
      TextSpan(
          text: AppStrings.you1,
          style: TextStyle(
              wordSpacing: 2,
              letterSpacing: 1.5,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black))
    ]));
  }
}
