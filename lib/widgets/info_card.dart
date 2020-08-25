import 'package:flutter/material.dart';
import 'package:naija_covid_update/models/isolation_model.dart';
import 'package:naija_covid_update/services/app_color.dart';

class  InfoCard extends StatelessWidget {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height:  queryData.size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(AppColor.primaryColor()),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width:  queryData.size.width * 0.35,
            child: Column(
              children: [
                SizedBox(height:  queryData.size.height * 0.01),
                Text(
                  'Stay at home to stop corona virus',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: queryData.size.height * 0.025,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height:  queryData.size.height * 0.03),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/details',
                        arguments: {
                          'name': 'STAY AT HOME',
                          'description': isolation,
                        });
                  },
                  child: Container(
                    height:  queryData.size.height * 0.06,
                    width:  queryData.size.width * 03,
                    color: Color(AppColor.primaryColorDark()),
                    child: Center(
                      child: Text(
                        'Know More',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: queryData.size.height * 0.025,
                        ),
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
