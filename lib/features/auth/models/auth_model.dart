import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get authStateChange => _auth.authStateChanges();

  Future<void> signInWithGoogle(BuildContext context) async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    //TODO: Use SharedPreferences to store this data in the user's device

    try {
      await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (exception) {
      //TODO: Report and handle exception
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
