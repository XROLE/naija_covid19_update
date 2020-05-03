import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  
  Map data = {};

  @override
  Widget build(BuildContext context) {
     
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        title: Center(child: Text('World Covid-19 Update')),
        backgroundColor: Colors.teal,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            SizedBox(height: 80,),
      Center(
                child: Text(
        'NIGERIA CORONA STATISTICS',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        )),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Confirmed:',
                  style: TextStyle(
                    fontSize: 20,
                  )),
                SizedBox(height: 15),
                Text(
                  'Recovered:',
                  style: TextStyle(
                    fontSize: 20,
                  )),
                SizedBox(height: 15),
                Text(
                  'Death:',
                  style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 20,
                  )),
                ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text(
                  '${data['confirmed']}',
                  style: TextStyle(
                  fontSize: 20,
                )),
              SizedBox(height: 15),
              Text(
                '${data['recovered']}',
                style: TextStyle(
                // color: Colors.white,
                fontSize: 20,
              )),
              SizedBox(height: 15),
              Text(
                '${data['death']}',
                style: TextStyle(
                color: Colors.red[900],
                fontSize: 20,
              )),
            ],
           ),
          ],
        ),
      ),
    ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () { 
          print('I am a chosen one too ');
          Navigator.pushNamed(context, '/');
        },
        child: Icon(
          Icons.add_location,
        ),
      ),
    );
  }
}