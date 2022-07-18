import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_with_provider/providers/auth_provider.dart';
import 'package:signup_with_provider/screens/athlete_question.dart';
import 'package:signup_with_provider/screens/home_screen.dart';
import 'package:signup_with_provider/screens/login_screen.dart';
import 'package:signup_with_provider/screens/menu_screen.dart';

import 'screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (_) => AuthPrivder(),
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     themeMode: ThemeMode.dark,
    //     darkTheme: ThemeData.dark(),
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: Consumer<AuthPrivder>(builder: (context, auth, child) {
    //       return auth.user != null ? LoginScreen() : SignUpScreen();
    //     }),
    //     routes: {
    //       '/login': (_) => LoginScreen(),
    //       '/signup': (_) => SignUpScreen(),
    //       '/home': (_) => HomeScreen()
    //     },
    //   ),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
