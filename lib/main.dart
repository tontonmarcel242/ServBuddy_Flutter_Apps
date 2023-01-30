import 'package:flutter/material.dart';
import 'package:serv_buddy/src/ui/logIn/LoginPage.dart';
import 'package:serv_buddy/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ServBuddyTheme.lightTheme,
      darkTheme: ServBuddyTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
