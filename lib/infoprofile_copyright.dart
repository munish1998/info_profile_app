import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/app_string.dart';

class BottomCopyrightSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(
          color: Colors.white30,
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.copyright_outlined,
                  color: Colors.white,
                ),
                Text(
                  AppStrings.copyRight,
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ],
            ),
            Text(
              AppStrings.rights,
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ],
        )
      ],
    );
  }
}
