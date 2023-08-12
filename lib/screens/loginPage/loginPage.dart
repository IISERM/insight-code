// Make a basic page scaffold with no items
// Path: lib\screens\loginPage\loginPage.dart

import 'package:flutter/material.dart';
import 'package:insight/common/widgets/logoWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
                // Background image from the assets folder and fit it to the screen
                Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(children: [
        Center(child: insightLogo()),
        Center(),
        Center(),
      ]),
    )));
  }
}
