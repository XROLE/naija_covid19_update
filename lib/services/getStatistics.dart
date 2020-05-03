import 'dart:convert';

import 'package:http/http.dart' as http;

Future<http.Response> getStatistics() async {
  try {
    http.Response result = await http.get(
      'https://covid-19-coronavirus-statistics.p.rapidapi.com/v1/total?country=Nigeria',
      headers: {
        "x-rapidapi-key": "3650547f88msha17e50374d780bep1c82ddjsn8baff41fae1e"
      },
    );
    return result;
  } catch(e) {
    print('Could not get statistics, try again later. Error $e');
  }
}