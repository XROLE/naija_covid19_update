import 'package:flutter/material.dart';
import 'package:naija_covid_update/services/app_color.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(AppColor.primaryColor()),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: 150,
            child: Column(
              children: [
                SizedBox(height: 7),
                Text(
                  'Stay at home to stop corona virus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  height: 45,
                  width: 150,
                  color: Color(AppColor.primaryColorDark()),
                  child: Center(
                    child: Text(
                      'Know More',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/images/stay.png'),
            ),
          ),
        ],
      ),
    );
  }
}
