import 'package:flutter/material.dart';
import 'package:playmate/Presentation/Authentication-Screen/Forget.dart';
import 'package:playmate/Presentation/Authentication-Screen/Login.dart';
import 'package:playmate/Presentation/Authentication-Screen/Registration.dart';
import 'package:playmate/Presentation/Games/game.dart';
import 'package:playmate/Presentation/Home-Screen/Dashboard.dart';
import 'package:playmate/Presentation/Onboarding-Screen/Onboardig.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      home: Dashboard(),
      routes: {
        '/login': (context) => Login(),
        '/registration': (context) => Registration(),
        '/forget' : (context) => Forget()
      },
    );
  }
}

