import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Email'),
        Text('Profile Name')
      ],
    );
  }
}