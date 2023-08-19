import 'package:flutter/material.dart';

class ErrorSnackBar extends StatelessWidget {

  const ErrorSnackBar({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(content),
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
    );
  }

}
