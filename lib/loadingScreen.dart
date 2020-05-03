import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_covid_update/services/getStatistics.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void fetchStatistics () async {

    http.Response res =  await getStatistics();
    Map data = jsonDecode(res.body);
    String country = data['response'][0]['country'];
    int tested = data['response'][0]['tests']['total'];
    int confirmed = data['response'][0]['cases']['total'];
    int recovered = data['response'][0]['cases']['recovered'];
    int critical = data['response'][0]['cases']['critical'];
    int death = data['response'][0]['deaths']['total'];
   
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'confirmed': '$confirmed',
      'recovered': '$recovered',
      'death': '$death',
      'tested': '$tested',
      'critical': '$critical',
      'country': '$country',
    });
  } 

  @override
  void initState() {
    fetchStatistics();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('World Covid-19 Update')),
        ),
        body: Container(
          child: SpinKitFoldingCube(
            color: Colors.teal[200],
            size: 50.0,
          ),
      ),
    );
  }
}