import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insight/commons/widgets/insight_logo_image.dart';
import 'package:insight/commons/widgets/loading_handlers.dart';
import 'package:insight/features/auth/interface/widgets/guest_login_button.dart';
import 'package:insight/features/auth/interface/widgets/institute_login_button.dart';

class LoginPage extends ConsumerStatefulWidget {

  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends ConsumerState<LoginPage> {

  bool _isLoading = false;

  void initState() {
    super.initState();
  }

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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InsightLogoImage(),
              InstituteLoginButton(),
              GuestLoginButton(),
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