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
    int confirmed = data['data']['confirmed'];
    int recovered = data['data']['recovered'];
    int death = data['data']['deaths'];
    print('I am a chosen one $data');

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'confirmed': '$confirmed',
      'recovered': '$recovered',
      'death': '$death',
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