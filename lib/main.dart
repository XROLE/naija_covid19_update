import 'package:flutter/material.dart';
import 'package:naija_covid_update/home.dart';
import 'package:naija_covid_update/screens/detail_screen.dart';
import 'package:naija_covid_update/screens/info_screen.dart';
import 'package:naija_covid_update/screens/loadingScreen.dart';
import 'package:naija_covid_update/screens/result_screen.dart';
import 'package:naija_covid_update/selectCountry.dart';
import 'package:naija_covid_update/loadContries.dart';
import 'package:naija_covid_update/getStatistics.dart';

Widget MyApp() {
  return MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LoadingScreen(),
      '/home': (context) => Home(),
      '/details': (context) => DetailScreen(),
      '/result': (context) => ResultScreen(),
      '/info': (context) => InfoScreen(),
      '/select': (context) => Country(),
      '/load-countries': (context) => LoadContries(),
      '/get-statistics': (context) =>  Statistics(),
    }
  );
}
void main() => runApp(MyApp());
