import 'package:flutter/material.dart';
import '../theme.dart';

class WidgetIlustration extends StatelessWidget {
  final Widget child;
  final String image;
  final String title;
  final String subtitle1;
  final String subtitle2;
  WidgetIlustration(
      {this.child, this.image, this.title, this.subtitle1, this.subtitle2});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 250,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Text(
              subtitle1,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              subtitle2,
            ),
            SizedBox(
              height: 40,
            ),
            child ?? SizedBox(),
          ],
        ),
      ],
    );
  }
}
