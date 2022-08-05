import 'package:app_music/screens/welcomepages.dart';
import 'package:flutter/material.dart';

class AppMusic extends StatefulWidget {
  @override
  State<AppMusic> createState() => _AppMusicState();
}

class _AppMusicState extends State<AppMusic> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}