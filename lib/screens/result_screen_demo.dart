import 'package:flutter/material.dart';
import 'package:naija_covid_update/models/result_model.dart';
import 'package:naija_covid_update/services/app_color.dart';
import 'package:naija_covid_update/services/color_matcher.dart';

class ResultScreenDemo extends StatelessWidget {
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
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(70, 70)),
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
    );
  }
}
