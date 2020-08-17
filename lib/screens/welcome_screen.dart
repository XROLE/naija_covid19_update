import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:world_covid_update/services/app_color.dart';

import 'info_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Color(AppColor.primaryColor()),
      child: Column(
        children: [
          SizedBox(height: 30),
          Image(
            image: AssetImage('assets/images/covid.png'),
            width: 150,
          ),
          SizedBox(height: 130),
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
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
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
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            height: 50,
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
                SizedBox(width: 20),
                Container(
                  height: 35,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Color(AppColor.primaryColor()),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward),
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
