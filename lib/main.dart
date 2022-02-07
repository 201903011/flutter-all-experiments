import 'package:experiment4/Layout.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: LayoutExp(),
    );
  }
}
