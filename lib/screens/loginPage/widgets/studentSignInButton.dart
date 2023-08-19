import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insight/common/backend/auth/authentication.dart';

class StudentSignInButton extends StatefulWidget {
  const StudentSignInButton({super.key});

  @override
  State<StudentSignInButton> createState() => _StudentSignInButtonState();
}

class _StudentSignInButtonState extends State<StudentSignInButton> {

  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: _isSigningIn
          ? const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      )
          : OutlinedButton(
               style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: () async {

                setState(() {
                  _isSigningIn = true;
                });

                User? user = await Authentication.signInWithGoogle(context: context);
                if (user != null) {
                  print("User is not null");
                  print(user);
                }
                else {
                  print("User is null");
                }
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Sign in with Google',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
    );
  }
}

