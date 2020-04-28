import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_covid_update/services/getStatistics.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void fetchStatistics () async {

    await getStatistics();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'confirned': 1337,
      'recovered': 255,
      'death': 40,
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