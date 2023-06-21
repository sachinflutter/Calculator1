import 'package:flutter/material.dart';
import 'homepagee.dart';

void main() => runApp(new Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator app",
      theme: ThemeData(
        primarySwatch: Colors.red,

      ),
      home: homepage(),
    );
  }
}
