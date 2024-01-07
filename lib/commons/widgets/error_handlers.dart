import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorDialogue extends AlertDialog {

  final Object error;
  const ErrorDialogue(this.error, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Error!"),
      content: SingleChildScrollView(child: Column(
        children: [
          const Text(r"Something went wrong! Sorry about this :("),
          Text((error as dynamic).stackTrace.toString()),
          const Text(
              "If you want to help us fix this, please report this error."),
          getErrorButtons(error),
        ],
      ),
)    );
  }

  ButtonBar getErrorButtons(Object error) {
    List<Widget> buttons = [CloseButton()];

    switch (error.runtimeType) {
      case FirebaseAuthException _:
      case FirebaseException _:
      case AsyncError _:
      case Error _:
        buttons.add(ReportButton(error: error, stackTrace: (error as dynamic).stackTrace));
        break;

      default:
        break;
    }

    return ButtonBar(
      children: buttons,
    );
  }

}

class CloseButton extends TextButton {
  CloseButton({super.key, String? text})
      : super(
          onPressed: () {
            //TODO: Add Go Router and pop this error dialogue
          },
          child: Text(text ?? "Close"),
        );
}

class ReportButton extends TextButton {
  final Object error;
  final StackTrace? stackTrace;

  ReportButton({super.key, required this.error, required this.stackTrace})
      : super(
          onPressed: () {
            //TODO: Send error to developers and pop this error dialogue using Go Router
          },
          child: const Text("Report"),
        );
}
