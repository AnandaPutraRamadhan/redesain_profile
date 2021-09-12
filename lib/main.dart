import 'package:flutter/material.dart';
import 'package:profile_desain/profile_ui.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        brightness: Brightness.light,
        primaryColor: Colors.white,
      ),
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileUI(),
    );
  }
}
