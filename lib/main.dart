import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:manga_cat/screens/MangaCatalog.dart';
// import 'package:manga_cat/screens/TelaInicial.dart';
// import 'components/UploadManga.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MangaCatApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MangaCatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: AnimatedSplashScreen(
        splash: 'assets/images/logo.png',
        nextScreen: MangaCatalog(),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
