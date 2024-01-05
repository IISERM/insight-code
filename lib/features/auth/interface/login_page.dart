import 'package:flutter/material.dart';
import 'package:insight/commons/widgets/insight_logo_image.dart';
import 'package:insight/features/auth/interface/widgets/institute_login_button.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}): super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  bool _isLoading = false;

  void _switchLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: loginPageContainerDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const InsightLogoImage(),
              InstituteLoginButton(),
            ],
          ),
        )
      ),
    );
  }
  
  static const BoxDecoration loginPageContainerDecoration = BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://tasbihdigital.com/wp-content/uploads/2022/07/Cute-Wallpaper-Phone.jpg"
          )
      )
  );

}