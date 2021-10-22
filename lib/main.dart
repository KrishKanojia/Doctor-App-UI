import 'package:doctor_app/screens/callscreen.dart';
import 'package:doctor_app/screens/detailscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constraints.dart';
import 'screens/drawerscreen.dart';
import 'screens/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traveling App',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body:
          // CallScreen()
          //  DetailScreen(),
          Stack(
        children: [
          DrawerSreen(),
          Homepage(),
        ],
      ),
    );
  }
}
