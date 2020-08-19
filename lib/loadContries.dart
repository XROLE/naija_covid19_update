import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:naija_covid_update/services/getCountries.dart';


class LoadContries extends StatefulWidget {
  @override
  _LoadContriesState createState() => _LoadContriesState();
}

class _LoadContriesState extends State<LoadContries> {
  void fetchCountries() async {
    http.Response res = await getCountries();

    List<String> countries = new List();
    List data = jsonDecode(res.body)[1];
    for(var country in data){
      countries.add(country['name']);
    }

    Navigator.pushReplacementNamed(context, '/select', arguments: {
      'countries': countries,
    });
  }

  @override
  void initState() {
    fetchCountries();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Loading... ',
          style: TextStyle(fontSize: 20),
        )
    ));
  }
}