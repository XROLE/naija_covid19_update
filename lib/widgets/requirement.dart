import 'package:flutter/material.dart';
import 'package:naija_covid_update/models/requirements_model.dart';

class Requirments extends StatelessWidget {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    Widget buildRequirement() {
      List<Widget> list = new List<Widget>();
      for (var i = 0; i < requirementList.length; i++) {
        list.add(GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context,
                '/details', arguments: {
                  "name": requirementList[i].name,
                  "description": requirementList[i].details,
                });
          },
          child: new Container(
            height: queryData.size.height * 0.14,
            width: queryData.size.width * 0.18,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image(image: AssetImage(requirementList[i].image)),
          ),
        ));
      }
      return new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: list,
      );
    }

    return Column(
      children: [
        SizedBox(height: queryData.size.height * 0.02),
        Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Requirements',
            style: TextStyle(
              fontSize: queryData.size.height * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: queryData.size.height * 0.01),
        buildRequirement(),
      ],
    );
  }
}
