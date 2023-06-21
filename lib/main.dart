import 'package:call_of_duty/screens/armor_screen.dart';
import 'package:call_of_duty/screens/battlepass_screen.dart';
import 'package:call_of_duty/screens/home_screen.dart';
import 'package:call_of_duty/screens/loading_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'COD',
      theme: ThemeData(fontFamily: "Boston",
      ),
      home: LoadingScreen()
    );
  }
}
