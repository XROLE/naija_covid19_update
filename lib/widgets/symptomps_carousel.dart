import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:naija_covid_update/models/symptoms_model.dart';

class SymptomsCarousel extends StatelessWidget {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    Widget _buildSymptom(String name, String description, String image) {
      return Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/details', arguments: {
                'name': name,
                'description': description,
              });
            },
            child: Container(
              height: queryData.size.height * 0.24,
              width:  queryData.size.width * 0.55,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height:  queryData.size.height * 0.13,
                    width:  queryData.size.width * 0.22,
                    child: Image(
                      image: AssetImage(image),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(height: queryData.size.height * 0.02),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              name,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height:  queryData.size.height * 0.008),
                          Flexible(
                            child: Text(
                              description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
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
      height: queryData.size.height * 0.15,
      width:  queryData.size.width * 0.24,
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
