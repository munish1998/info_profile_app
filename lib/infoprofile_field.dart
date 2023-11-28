import 'package:flutter/material.dart';

class BottomCardFields extends StatelessWidget {
  final String? checktext;
  const BottomCardFields({super.key, this.checktext});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        const Icon(Icons.check),
        Text('$checktext'),
      ]),
    );
  }
}
