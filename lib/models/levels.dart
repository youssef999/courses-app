import 'dart:ui';
// import 'package:course_app/models/module.dart';
import 'package:course_app/screens/details_screen.dart';

class Levels {
  String id;
  String Titel;
  int levelNumber;
  String Image;

  Levels(
    this.id,
    this.Titel,
    this.levelNumber,
    this.Image,
  );

  static List<Levels> generateLevels() {
    return [
      Levels(
        "1",
        "Level One",
        1,
        "assets/images/1.png",
      ),
      Levels(
        "2",
        "Level Two",
        2,
        "assets/images/2.png",
      ),
      Levels(
        "3",
        "Level Three",
        3,
        "assets/images/3.png",
      ),
      Levels(
        "4",
        "Level Four",
        4,
        "assets/images/4.png",
      ),
    ];
  }
}
