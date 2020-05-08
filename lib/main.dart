import 'package:flutter/material.dart';
import 'package:flutter_workout_ui/screens/home.dart';
import 'package:flutter_workout_ui/screens/home_body.dart';
import 'package:flutter_workout_ui/utils/constants.dart';
import 'package:flutter_workout_ui/utils/images.dart';
import 'package:flutter_workout_ui/utils/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appTitle,
      home: Home(),
      theme: ThemeData(primaryColor: Constants.primaryColor),
    );
  }
}
