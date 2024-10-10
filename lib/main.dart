import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';
import 'package:swd_mobile/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SWD Mobile',
      builder: OneContext().builder,
      navigatorKey: OneContext().key,
      color: Colors.white,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        fontFamily: "Aeonik",
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
