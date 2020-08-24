import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naija_covid_update/models/countries_model.dart';
// import 'package:naija_covid_update/screens/result_screen_demo.dart';
import 'package:naija_covid_update/services/app_color.dart';
import 'package:naija_covid_update/widgets/info_card.dart';
import 'package:naija_covid_update/widgets/requirement.dart';
import 'package:naija_covid_update/widgets/symptomps_carousel.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  MediaQueryData queryData;
  List<String> countries = countriesList;
  String dropdownValue = 'Nigeria';

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: queryData.size.height,
        width: queryData.size.width,
        color: Color(AppColor.bgColor()),
        child: ListView(
          children: [
            SizedBox(height: 20),
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
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.only(top: 7, left: 30),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Container(
                    margin: EdgeInsets.only(left: 40),
                    height: 45,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Color(AppColor.primaryColor()),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                  iconSize: 35,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                      Navigator.pushNamed(
                        context,
                        '/get-statistics',
                        arguments: {'selectedCountry': dropdownValue},
                      );
                    });
                  },
                  items: countries
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Symptoms",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See All"),
                ],
              ),
            ),
            SizedBox(height: 10),
            SymptomsCarousel(),
            SizedBox(height: 25),
            InfoCard(),
            SizedBox(height: 10),
            Requirments(),
          ],
        ),
      ),
    );
  }
}
