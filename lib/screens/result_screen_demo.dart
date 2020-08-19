import 'package:flutter/material.dart';
import 'package:naija_covid_update/home.dart';
import 'package:naija_covid_update/models/result_model.dart';
import 'package:naija_covid_update/screens/info_screen.dart';
import 'package:naija_covid_update/services/app_color.dart';
import 'package:naija_covid_update/services/color_matcher.dart';

class ResultScreenDemo extends StatefulWidget {
  @override
  _ResultScreenDemoState createState() => _ResultScreenDemoState();
}

class _ResultScreenDemoState extends State<ResultScreenDemo> {
  int _currentIndex = 0;
  List<Widget> _buildResult() {
    List<Widget> resultList = [];
    List<String> resultFields = ['Tested', 'Confirmed', 'Recovered', 'Death'];

    for (var i = 0; i < resultFields.length; i++) {
      resultList.add(Container(
        height: 130,
        width: 139,
        margin: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              resultFields[i],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: matchColor(i),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '576983',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ));
    }
    return resultList;
  }

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
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(AppColor.bgColor()),
          height: double.infinity,
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.elliptical(70, 70)),
                  color: Color(AppColor.primaryColor()),
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        'Stay Safe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 110,
                      left: 45,
                      child: Container(
                        height: 70,
                        width: 335,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Text(
                          results.country,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Wrap(
                direction: Axis.horizontal,
                children: _buildResult(),
              ),
            ],
          ),
        ),
      ),
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
              Icons.refresh,
              color: Colors.white,
            ),
            title: Text('Camera', style: TextStyle(color: Colors.white)),
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
