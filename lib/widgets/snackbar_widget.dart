
import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  final snackBar =
        new SnackBar(content: new Text('Testing the snackbar feature'), backgroundColor: Colors.red);

    // Find the Scaffold in the Widget tree and use it to show a SnackBar!
  @override
  Widget build(BuildContext context) {
    Scaffold.of(context).showSnackBar(snackBar);
    return Container(
      
    );
  }
}

 @override
      Widget build(BuildContext context) {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Booked Succesfully!'),
        ));
      }
