import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_workout_ui/utils/constants.dart';
import 'package:flutter_workout_ui/utils/data.dart';
import 'package:flutter_workout_ui/utils/images.dart';
import 'package:flutter_workout_ui/utils/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_body.dart';

class Day extends StatelessWidget {
  final String day;

  const Day({Key key, @required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.bgColor,
        elevation: 0.0,
        leading: FittedBox(
            child: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Constants.primaryColor,
          onPressed: () {
            Navigator.pop(context);
          },
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
      body: SingleChildScrollView(
        child: Container(
          color: Constants.bgColor,
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: 6 * SizeConfig.imageSizeMultiplier,
            horizontal: 7 * SizeConfig.imageSizeMultiplier,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.day,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Data.exercises.length,
                  itemBuilder: (context, index) {
                    List<String> keys = Data.exercises.keys.toList();
                    List<dynamic> values = Data.exercises.values.toList();
                    print(values);
                    return Container(
                      margin: EdgeInsets.only(
                          bottom: 2.5 * SizeConfig.textMultiplier),
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.9 * SizeConfig.textMultiplier),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ListTile(
//                leading: Image.asset(values[0]),
                        trailing: Icon(
                          Icons.check_circle,
                          color: Constants.primaryColor,
                        ),

                        leading: Container(
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(values[index][0]))),
                        ),
                        title: Text(
                          keys[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Padding(
                          padding:
                              EdgeInsets.only(top: SizeConfig.textMultiplier),
                          child: Text(
                            values[index][1],
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
