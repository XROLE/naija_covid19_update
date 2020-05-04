import 'package:flutter/material.dart';
import 'package:world_covid_update/home.dart';
import 'package:world_covid_update/loadingScreen.dart';
import 'package:world_covid_update/selectCountry.dart';
import 'package:world_covid_update/loadContries.dart';
import 'package:world_covid_update/getStatistics.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => LoadingScreen(),
    '/home': (context) => Home(),
    '/select': (context) => Country(),
    '/load-countries': (context) => LoadContries(),
    '/get-statistics': (context) =>  Statistics(),
  }
));
