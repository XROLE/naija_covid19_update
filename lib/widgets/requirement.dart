import 'package:flutter/material.dart';

class Requirments extends StatelessWidget {
  List<String> requirementImages = [
    'assets/images/facemask.jpg',
    'assets/images/wash.png',
    'assets/images/nohandshake.jpg',
    'assets/images/distance.jpg',
  ];

  Widget buildRequirement() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < requirementImages.length; i++) {
      list.add(
        new Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image(
            image: AssetImage('$list[i]'),
          ),
        ),
      );
    }
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'Requirements',
            style: TextStyle(
              fontSize: 18,
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
