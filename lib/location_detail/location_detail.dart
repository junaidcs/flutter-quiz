import 'package:flutter/material.dart';
import './text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Locations App')
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextSection('My Title', 'Some of the body goes here main g'),
            TextSection('My Title', 'Some of the body goes here main g'),
            TextSection('My Title', 'Some of the body goes here main g'),
          ]
        )
      );
  }
}