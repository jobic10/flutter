import 'package:flutter/material.dart';
import 'package:flutter_workout_ui/utils/constants.dart';
import 'package:flutter_workout_ui/utils/images.dart';
import 'package:flutter_workout_ui/utils/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: Builder(
                builder: (context) => GestureDetector(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "UI/UX By Farouk Muhammed @ https://dribbble.com/misterfarouk."),
                      ));
                    },
                    child: Icon(FontAwesomeIcons.gratipay)),
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Builder(
                builder: (context) => GestureDetector(
                    onTap: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "Implemented By Owonubi Job Sunday @ https://twitter.com/jobic10"),
                      ));
                    },
                    child: Icon(FontAwesomeIcons.bell)),
              ),
              title: Text(""))
        ],
      ),
      appBar: AppBar(
        backgroundColor: Constants.bgColor,
        elevation: 0.0,
        leading: FittedBox(
            child: Icon(
          Icons.subject,
          color: Constants.primaryColor,
        )),
        actions: <Widget>[
          FittedBox(
            fit: BoxFit.cover,
            child: CircleAvatar(
              backgroundImage: AssetImage(Images.appUser),
            ),
          )
        ],
      ),
      body: HomeBody(),
    );
  }
}
