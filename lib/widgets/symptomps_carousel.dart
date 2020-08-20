import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:naija_covid_update/models/symptoms_model.dart';
import 'package:naija_covid_update/screens/detail_screen.dart';

class SymptomsCarousel extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    Widget _buildSymptom(String name, String description, String image) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
           Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
          },
          child: Container(
            height: 95,
            width: 230,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  height: 90,
                  width: 100,
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Text(
                          description,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

    return Container(
      height: 100,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => _buildSymptom(symptoms[index].name,
            symptoms[index].description, symptoms[index].image),
      ),
    );
  }
}
