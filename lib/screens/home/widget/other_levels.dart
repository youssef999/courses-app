import 'package:course_app/models/levels.dart';
import 'package:course_app/screens/choice.dart';
import 'package:course_app/screens/home/widget/levels_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OtherLevels extends StatelessWidget {
  final levellist = Levels.generateLevels();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 320,
              child: ListView.separated(
                padding: EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                itemCount: levellist.length,
                itemBuilder: (context, index) =>
                    InkWell(child: LevelItem(levellist[index]),onTap:(){
                      index++;
                      Get.to(ChoiceScreen(
                        level:levellist[index].id.toString()
                        //index.toString(),
                      ));


                    }),
                separatorBuilder: (context, index) => SizedBox(
                  width: 20,
                ),
              ))
        ],
      ),
    );
  }
}
