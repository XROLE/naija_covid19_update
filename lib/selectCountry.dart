import 'dart:convert';
import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  Map countriesData = {};
  List <String> countries = [];
  String dropdownValue = 'Nigeria';

  @override
  Widget build(BuildContext context) {
    countriesData = ModalRoute.of(context).settings.arguments;
    countries = countriesData['countries'];
    countries.add('Nigeria');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Select Country'))
      ),
      body: Container(
        child: Center(
          child: DropdownButton<String>(
    value: dropdownValue,
    icon: Icon(Icons.arrow_downward),
    iconSize: 24,
    elevation: 16,
    style: TextStyle(
      color: Colors.deepPurple
    ),
    underline: Container(
      height: 2,
      color: Colors.deepPurpleAccent,
    ),
    onChanged: (String newValue) {
      setState(() {
        dropdownValue = newValue;
        Navigator.pushNamed(context, '/get-statistics', arguments: {
          'selectedCountry': dropdownValue
        },);
      });
    },
    items: countries
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
      .toList(),
  ),
        ),
      ),
    );
  }
}