import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:naija_covid_update/services/app_color.dart';

import 'info_screen.dart';

class WelcomeScreen extends StatelessWidget {
  MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Container(
      height: queryData.size.height,
      width: queryData.size.width,
      child: ListView(
        children: [
          SizedBox(height: queryData.size.height * 0.095),
          Image(
            image: AssetImage('assets/images/covid.png'),
            height: queryData.size.height * 0.27,
          ),
          SizedBox(height: queryData.size.height * 0.15),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Covid-19',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: queryData.size.height * 0.03, horizontal: queryData.size.width * 0.095),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: queryData.size.height * 0.06,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            height: queryData.size.height * 0.095,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: queryData.size.width * 0.095),
                Container(
                  height: queryData.size.height * 0.085,
                  width: queryData.size.width * 0.16,
                  decoration: BoxDecoration(
                      color: Color(AppColor.primaryColor()),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    icon: Icon(Icons.forward),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfoScreen(),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
