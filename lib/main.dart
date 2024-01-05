import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insight/commons/models/custom_errors.dart';
import 'package:insight/commons/widgets/loading_handlers.dart';
import 'package:insight/features/auth/interface/widgets/auth_checker.dart';
import 'commons/widgets/error_handlers.dart';
import 'config/firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: Insight()));
}

final firebaseInitializerProvider = FutureProvider<FirebaseApp>((ref) async {
  return await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
});

class Insight extends ConsumerWidget {
  const Insight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebaseInit = ref.watch(firebaseInitializerProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: firebaseInit.when(
        data: (data) => const AuthChecker(),
        loading: () => const LoadingDialogue(),
        error: (e, stackTrace) => ErrorDialogue(RiverpodError(e, stackTrace: stackTrace)),
      ),
    );
  }
}
