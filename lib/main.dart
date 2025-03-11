import 'package:flutter/material.dart';

import 'package:flutter_web_project/contact.dart';
import 'package:flutter_web_project/home_screen.dart';
import 'package:flutter_web_project/portpolio.dart';
import 'package:flutter_web_project/service_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(FlumakeApp());
}

class FlumakeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flumake Infotech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: HomeScreen(),
      routes: {
        '/services': (context) => ServicesScreen(),
        '/portfolio': (context) => PortfolioScreen(),
        '/contact': (context) => ContactScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}