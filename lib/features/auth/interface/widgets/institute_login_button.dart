import 'package:flutter/material.dart';

class InstituteLoginButton extends TextButton {

  const InstituteLoginButton({super.key})
      : super(
          child: const Text("Institute Login", style: loginButtonTextStyle),
          style: loginButtonStyle,
          onPressed: null,
  );

}
const TextStyle loginButtonTextStyle = TextStyle();
const ButtonStyle loginButtonStyle = ButtonStyle();