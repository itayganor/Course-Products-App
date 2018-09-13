import 'package:flutter/material.dart';

import './pages/auth.dart';

void main() {
  MaterialPageRoute.debugEnableFadingRoutes = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF08C1C6),
        accentColor: Colors.deepPurple,
        brightness: Brightness.light,
      ),
      home: AuthPage(),
    );
  }
}
