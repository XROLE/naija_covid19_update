import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:naija_covid_update/models/countries_model.dart';
import 'package:naija_covid_update/services/app_color.dart';
import 'package:naija_covid_update/widgets/info_card.dart';
import 'package:naija_covid_update/widgets/requirement.dart';
import 'package:naija_covid_update/widgets/symptomps_carousel.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  MediaQueryData queryData;
  List<String> countries = countriesList;
  String dropdownValue = 'Nigeria';
  String networkStatus = "";

  void checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      networkStatus = "Not Connected";
    } else {
      networkStatus = "Connected";
    }
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: queryData.size.width * 0.03),
        height: queryData.size.height,
        width: queryData.size.width,
        color: Color(AppColor.bgColor()),
        child: ListView(
          children: [
            SizedBox(height: queryData.size.height * 0.03),
            Text(
              'Hi Fellow',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: queryData.size.width * 0.065,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(height: queryData.size.height * 0.01),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: queryData.size.width * 0.007),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has bee type jskaf ld',
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: queryData.size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: queryData.size.width * 0.007),
              height: queryData.size.height * 0.08,
              width: queryData.size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.only(
                    top: queryData.size.height * 0.007,
                    left: queryData.size.width * 0.057,
                    right: queryData.size.width * 0.03),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  underline: Container(
                    height: 1.0,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(color: Colors.transparent, width: 0.0),
                      ),
                    ),
                  ),
                  icon: Container(
                    margin: EdgeInsets.only(left: queryData.size.width * 0.22),
                    height: queryData.size.height * 0.06,
                    width: queryData.size.width * 0.13,
                    decoration: BoxDecoration(
                        color: Color(AppColor.primaryColor()),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                  iconSize: queryData.size.width * 0.07,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: queryData.size.width * 0.045,
                  ),
                  onChanged: (String newValue) async {
                    await checkConnection();

                    print("I am a chosen one network STATUS: $networkStatus");
                    if (networkStatus == "Connected") {
                      setState(() {
                        dropdownValue = newValue;
                        Navigator.pushNamed(
                          context,
                          '/get-statistics',
                          arguments: {'selectedCountry': dropdownValue},
                        );
                      });
                    } else if (networkStatus == "Not Connected") {
                      return Alert(
                              context: context,
                              title: "",
                              desc: "Enable Internet",
                              style: alertStyle,
                              )
                          .show();
                    }
                  },
                  items:
                      countries.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: queryData.size.height * 0.04),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: queryData.size.width * 0.007),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Symptoms",
                    style: TextStyle(
                      fontSize: queryData.size.height * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See All"),
                ],
              ),
            ),
            SizedBox(height: queryData.size.height * 0.01),
            SymptomsCarousel(),
            SizedBox(height: queryData.size.height * 0.04),
            InfoCard(),
            SizedBox(height: queryData.size.height * 0.01),
            Requirments(),
          ],
        ),
      ),
    );
  }
}

 var alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(fontWeight: FontWeight.bold),
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: TextStyle(
        color: Colors.red,
      ),
    );