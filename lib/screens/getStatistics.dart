import 'dart:convert';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:naija_covid_update/services/app_color.dart';
import 'package:naija_covid_update/services/getStatistics.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  Map data = {};
  void fetchStatistics() async {
    http.Response res =
        await getStatistics(selectedCountry: data['selectedCountry']);
    Map resultData = jsonDecode(res.body);
    String country = resultData['response'][0]['country'];
    int tested = resultData['response'][0]['tests']['total'];
    int confirmed = resultData['response'][0]['cases']['total'];
    int recovered = resultData['response'][0]['cases']['recovered'];
    int critical = resultData['response'][0]['cases']['critical'];
    int death = resultData['response'][0]['deaths']['total'];

    Navigator.pushReplacementNamed(context, '/result', arguments: {
      'confirmed': '$confirmed',
      'recovered': '$recovered',
      'death': '$death',
      'tested': '$tested',
      'critical': '$critical',
      'country': '$country',
    });
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    fetchStatistics();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFadingCircle(
              color: Color(AppColor.primaryColor()),
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
