import 'package:flutter/material.dart';
import 'package:naija_covid_update/home.dart';
import 'package:naija_covid_update/screens/detail_screen.dart';
import 'package:naija_covid_update/screens/info_screen.dart';
import 'package:naija_covid_update/screens/result_screen.dart';
import 'package:naija_covid_update/screens/getStatistics.dart';

Widget MyApp() {
  return MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/home': (context) => Home(),
      '/details': (context) => DetailScreen(),
      '/result': (context) => ResultScreen(),
      '/info': (context) => InfoScreen(),
      '/get-statistics': (context) =>  Statistics(),
    }
  );
}
void main() => runApp(MyApp());
