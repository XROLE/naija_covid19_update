import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_covid_update/screens/result_screen.dart';
import 'package:world_covid_update/services/app_color.dart';
import 'package:world_covid_update/widgets/info_card.dart';
import 'package:world_covid_update/widgets/symptomps_carousel.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: double.infinity,
        width: double.infinity,
        color: Color(AppColor.bgColor()),
        child: Column(
          children: [
            SizedBox(height: 65),
            Text(
              'Hi Fellow',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has bee type jskaf ld',
                  textAlign: TextAlign.justify,
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Select Country',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    height: 45,
                    width: 65,
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
                            builder: (context) => ResultScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Symptoms",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See All"),
                ],
              ),
            ),
            SizedBox(height: 10),
            SymptomsCarousel(),
            SizedBox(height: 15),
            InfoCard(),
          ],
        ),
      ),
    );
  }
}
