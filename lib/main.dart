import 'package:colorpallet/providers/coclor_provider.dart';
import 'package:colorpallet/providers/themeProvider.dart';
import 'package:colorpallet/views/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider<ColorProvider>(
        create: (context) => ColorProvider(),
      ),
      ListenableProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
      )
    ],
    builder: (context, _) => MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
        shadowColor: Colors.blue.withOpacity(0.1),
        focusColor: Colors.blue,
      ),
      darkTheme: ThemeData(
        backgroundColor: const Color(0xff33364e),
        shadowColor: const Color(0xff33364e),
        focusColor: Colors.white,
      ),
      themeMode: (Provider.of<ThemeProvider>(context).obj.isDark == false)
          ? ThemeMode.light
          : ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const ColorPalette(),
    ),
  ));
}