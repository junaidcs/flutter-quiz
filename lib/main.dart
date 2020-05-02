import 'package:flutter/material.dart';
import './location_detail/location_detail.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail()
    );
  }
}