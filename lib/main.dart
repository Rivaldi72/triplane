import 'package:flutter/material.dart';
import 'package:triplane/ui/pages/bonus_page.dart';
import 'package:triplane/ui/pages/get_started_page.dart';
import 'package:triplane/ui/pages/main_page.dart';
import 'package:triplane/ui/pages/sign_up_page.dart';
import 'package:triplane/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
