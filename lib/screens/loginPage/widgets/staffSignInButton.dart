import 'package:flutter/material.dart';

class StaffSignInButton extends StatelessWidget {
  const StaffSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){

      },
      style:
      ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white)),
      child: const Text("Sign in with Google"),
    );
  }
}
