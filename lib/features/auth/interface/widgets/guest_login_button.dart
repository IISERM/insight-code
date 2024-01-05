import 'package:flutter/material.dart';

class GuestLoginButton extends TextButton {

  const GuestLoginButton({Key? key})
      : super(
          style: guestLoginButtonStyle,
          child: const Text("Guest Login", style: guestLoginButtonTextStyle),
          onPressed: null
        );

}

const ButtonStyle guestLoginButtonStyle = ButtonStyle(
  alignment: Alignment.center,
);
const TextStyle guestLoginButtonTextStyle = TextStyle();