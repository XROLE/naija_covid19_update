import 'package:flutter/material.dart';
import 'package:naija_covid_update/home.dart';
import 'package:naija_covid_update/screens/info_screen.dart';
import 'package:naija_covid_update/services/app_color.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentIndex = 0;

  void navigatePages(val) {
    if (val == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else if (val == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => InfoScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    Map symptoms = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: ListView(children: [
        SizedBox(height: 60),
        Container(
          alignment: Alignment.center,
          child: Text(
            symptoms['name'],
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            symptoms['description'],
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color(AppColor.primaryColor()),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text('Home', style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: Text('info page', style: TextStyle(color: Colors.white)),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            navigatePages(_currentIndex);
          });
        },
      ),
    );
  }
}
