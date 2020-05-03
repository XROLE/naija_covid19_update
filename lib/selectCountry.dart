import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:world_covid_update/services/getCountries.dart';

class Country extends StatefulWidget {
  
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  Map countriesData = {};

  @override
  Widget build(BuildContext context) {
    countriesData = ModalRoute.of(context).settings.arguments;
    print('I am a chosen one ${countriesData['countries']}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Select Country'))
      ),
      body: Container(
        child: Center(
          child: Text('I am a chosen one')
        ),
      ),
    );
  }
}