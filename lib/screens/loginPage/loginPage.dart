import 'package:flutter/material.dart';
import 'package:insight/common/widgets/insightLogo.dart';
import 'package:insight/screens/loginPage/widgets/guestSignInButton.dart';
import 'package:insight/screens/loginPage/widgets/staffSignInButton.dart';
import 'package:insight/screens/loginPage/widgets/studentSignInButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(
            child:
                Container(
                  decoration:
                    const BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:
                  const Column(children: [
                    Center(child: InsightLogo()),
                    Center(child: StudentSignInButton()),
                    Center(child: StaffSignInButton()),
                    Center(child: GuestSignInButton()),
                  ]),
                )
        )
    );
  }
}
