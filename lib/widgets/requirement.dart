import 'package:flutter/material.dart';
import 'package:naija_covid_update/models/requirements_model.dart';

class Requirments extends StatelessWidget {
  Widget buildRequirement() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < requirementList.length; i++) {
      list.add(new Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image(image: AssetImage(requirementList[i].image)),
      ));
    }
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Requirements',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 12),
        buildRequirement(),
      ],
    );
  }
}
