import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:insight/common/widgets/snackbars/errorSnackBar.dart';

class Authentication {


  static Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    // TODO: Add auto sign-in
    return firebaseApp;
  }

  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/gmail.readonly'
      ],
    );

    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount != null){
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try{
        final UserCredential userCredential = await auth.signInWithCredential(credential);
        user = userCredential.user;
      } on FirebaseAuthException catch (e){

        if (e.code == 'account-exists-with-different-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
              const ErrorSnackBar(content: "Account exists with different credential")
                as SnackBar
          );
        } else if (e.code == 'invalid-credential') {
          ScaffoldMessenger.of(context).showSnackBar(
              const ErrorSnackBar(content: "Invalid credential")
                as SnackBar
          );
        }
      } catch (e){
        ScaffoldMessenger.of(context).showSnackBar(
            const ErrorSnackBar(content: "Error signing in with Google")
              as SnackBar
        );
      }
    }
    return user;
  }

  static Future<void> signOut(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try{
      await googleSignIn.signOut();
      await FirebaseAuth.instance.signOut();
    } catch (e){
      ScaffoldMessenger.of(context).showSnackBar(
          const ErrorSnackBar(content: "Error signing out")
            as SnackBar
      );
    }
  }

}