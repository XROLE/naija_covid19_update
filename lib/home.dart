import 'package:flutter/material.dart';
import 'package:naija_covid_update/screens/welcome_screen.dart';
import 'package:naija_covid_update/services/app_color.dart';

class Home extends StatelessWidget {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColor.primaryColor()),
      body: SafeArea(
        child: WelcomeScreen()),
    );
  }
}
