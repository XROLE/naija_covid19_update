import 'package:flutter/material.dart';
import 'package:naija_covid_update/home.dart';
import 'package:naija_covid_update/models/result_model.dart';
import 'package:naija_covid_update/screens/info_screen.dart';
import 'package:naija_covid_update/services/app_color.dart';
import 'package:naija_covid_update/services/color_matcher.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  MediaQueryData queryData;
  Map result;

  int _currentIndex = 0;
  List<Widget> _buildResult() {
    List<Widget> resultList = [];
    List<String> resultFields = ['Tested', 'Confirmed', 'Recovered', 'Death'];
    List<String> resultFieldsVal = [
      result['tested'],
      result['confirmed'],
      result['recovered'],
      result['death']
    ];

    for (var i = 0; i < resultFields.length; i++) {
      resultList.add(Container(
        height: queryData.size.height * 0.175,
        width: queryData.size.width * 0.335,
        margin: EdgeInsets.symmetric(horizontal: queryData.size.width * 0.075, vertical: queryData.size.height * 0.05),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(height: queryData.size.height * 0.03),
            Text(
              resultFields[i],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: matchColor(i),
              ),
            ),
            SizedBox(height: queryData.size.height * 0.045),
            Text(
              resultFieldsVal[i],
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
    queryData = MediaQuery.of(context);
    result = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(AppColor.bgColor()),
          height: queryData.size.height,
          child: ListView(
            children: [
              Container(
                height: queryData.size.height * 0.23,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.elliptical(70, 70)),
                  color: Color(AppColor.primaryColor()),
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: queryData.size.height * 0.025,
                      left: queryData.size.width * 0.045,
                      child: Text(
                        'Stay Safe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Positioned(
                      top: queryData.size.height * 0.17,
                      left: queryData.size.width * 0.09,
                      child: Container(
                        height: queryData.size.height * 0.1,
                        width: queryData.size.height * 0.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Text(
                          result['country'],
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
              SizedBox(height: queryData.size.height * 0.075),
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
              Icons.info,
              color: Colors.white,
            ),
            title: Text('info', style: TextStyle(color: Colors.white)),
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
