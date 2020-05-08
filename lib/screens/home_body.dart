import 'package:flutter/material.dart';
import 'package:flutter_workout_ui/utils/constants.dart';
import 'package:flutter_workout_ui/utils/data.dart';
import 'package:flutter_workout_ui/utils/size_config.dart';

import 'day.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.bgColor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 6 * SizeConfig.imageSizeMultiplier,
        horizontal: 7 * SizeConfig.imageSizeMultiplier,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NewText(
              text: "Daily Workout",
              fontSize: 4.5,
              isBold: true,
            ),
            SizedBox(
              height: 4 * SizeConfig.imageSizeMultiplier,
            ),
            NewText(
              text: "Get your body changing within 6 weeks",
              fontSize: 2.5,
              isBold: true,
            ),
            SizedBox(
              height: 4 * SizeConfig.imageSizeMultiplier,
            ),
            NewText(
              text:
                  "Fugiat sit et reprehenderit ex. Labore excepteur ad enim id commodo sint quit sunt irure proident sit et reprehenderit exercitation",
              fontSize: 2,
              isBold: true,
              color: Colors.grey,
            ),
            SizedBox(
              height: 4 * SizeConfig.imageSizeMultiplier,
            ),
            NewText(
              text: "Week 1",
              fontSize: 4.2,
              isBold: true,
            ),
            SizedBox(
              height: 4 * SizeConfig.imageSizeMultiplier,
            ),
            ListView.builder(
              itemCount: Data.days.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                List<String> keys = Data.days.keys.toList();
                List<String> values = Data.days.values.toList();
                return Container(
                  margin:
                      EdgeInsets.only(bottom: 2.5 * SizeConfig.textMultiplier),
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.9 * SizeConfig.textMultiplier),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Day(day: keys[index])));
                    },
                    child: ListTile(
                      trailing: Icon(
                        Icons.check_circle,
                        color: Constants.primaryColor,
                      ),
                      title: Text(
                        keys[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding:
                            EdgeInsets.only(top: SizeConfig.textMultiplier),
                        child: Text(
                          values[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewText extends StatelessWidget {
  final String text;
  final double fontSize;
  final bool isBold;
  final Color color;

  const NewText(
      {Key key,
      @required this.text,
      @required this.fontSize,
      this.color: Colors.black,
      this.isBold: false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          height: 1.7,
          color: this.color,
          fontSize: fontSize * SizeConfig.textMultiplier,
          fontFamily: "Montserrat",
          fontWeight: (this.isBold == true) ? FontWeight.bold : null),
    );
  }
}
