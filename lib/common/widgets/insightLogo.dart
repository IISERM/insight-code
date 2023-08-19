import 'package:flutter/material.dart';

class InsightLogo extends StatelessWidget {
  const InsightLogo({
    Key? key,
    this.height,
    this.width
  }) : super(key: key);

  final double? height;
  final double? width;
  final String path = "assets/images/insight_logo.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Image.asset(
        path,
        width: height ?? 200,
        height: width ?? 200,
      ),
    );
  }
}