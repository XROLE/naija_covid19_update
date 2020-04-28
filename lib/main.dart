import 'package:flutter/material.dart';
import 'package:world_covid_update/home.dart';
import 'package:world_covid_update/loadingScreen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => LoadingScreen(),
    '/home': (context) => Home(),
  }
));
