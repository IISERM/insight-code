import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'features/auth/interface/widgets/auth_checker.dart';
import 'themes/catppuccin.dart';
import 'commons/models/custom_errors.dart';
import 'commons/widgets/error_handlers.dart';
import 'commons/widgets/loading_handlers.dart';
import 'config/firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: Insight()));
}

final firebaseInitializerProvider = FutureProvider<FirebaseApp>((ref) async {
  return await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
});

// @riverpod
// Future<FirebaseApp> firebaseInitializer(FutureProvider<FirebaseApp> ref) async {
//   return await Firebase.initializeApp(
//        name: 'Insight', options: DefaultFirebaseOptions.currentPlatform
//   );
// }

class Insight extends ConsumerWidget {
  const Insight({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<FirebaseApp> firebaseInit = ref.watch(firebaseInitializerProvider);
    print("Hi");
    return MaterialApp(
      theme: CatppuccinTheme(Flavors.mocha, AccentColor.teal),
      debugShowCheckedModeBanner: true,
      home: firebaseInit.when(
        data: (data)  {
          return const AuthChecker();
      },
        loading: () => const LoadingDialogue(),
        error: (e, stackTrace) =>
            ErrorDialogue(RiverpodError(e, stackTrace: stackTrace)),
      ),
    );
  }
}
