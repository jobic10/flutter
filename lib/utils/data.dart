import 'dart:math';

import 'package:flutter_workout_ui/utils/images.dart';

class Data {
  static Random random = Random();
  static final Map<String, String> days = {
    "Day 1": "${random.nextInt(30)} exercises",
    "Day 2": "${random.nextInt(30)} exercises",
    "Day 3": "${random.nextInt(30)} exercises",
    "Day 4": "${random.nextInt(30)} exercises",
    "Day 5": "${random.nextInt(30)} exercises",
    "Day 6": "${random.nextInt(30)} exercises",
    "Day 7": "${random.nextInt(30)} exercises",
  };

  static final Map<String, List> exercises = {
    "Push Ups": [
      Images.pushups,
      "${random.nextInt(30)} reps, ${random.nextInt(30)} sets, "
    ],
    "Climbers": [
      Images.climber,
      "${random.nextInt(30)} reps, ${random.nextInt(30)} sets, "
    ],
    "Crunches": [
      Images.crunch,
      "${random.nextInt(30)} reps, ${random.nextInt(30)} sets, "
    ],
    "Squats": [
      Images.squats,
      "${random.nextInt(30)} reps, ${random.nextInt(30)} sets, "
    ],
    "Lunges": [
      Images.lunge,
      "${random.nextInt(30)} reps, ${random.nextInt(30)} sets, "
    ],
    "Planks": [
      Images.planks,
      "${random.nextInt(30)} reps, ${random.nextInt(30)} sets, "
    ],
    "Side Planks": [
      Images.side,
      "${random.nextInt(30)} reps, ${random.nextInt(30)} sets, "
    ],
    "Sit Ups": [
      Images.sit,
      "${random.nextInt(30)} reps, ${random.nextInt(30)} sets, "
    ],
  };
}
