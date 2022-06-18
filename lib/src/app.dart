import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openmmi/src/themes.dart' as themes;
import 'package:openmmi/src/views/pages/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return MaterialApp(
      title: 'OpenMMI',
      theme: themes.appTheme,
      home: const HomePage(),
    );
  }
}
