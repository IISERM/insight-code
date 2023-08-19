import 'package:flutter/material.dart';

class GuestSignInButton extends StatelessWidget {
  const GuestSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style:
        ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white)),
      child: const Text("Sign in as Guest"),
    );
  }
}
