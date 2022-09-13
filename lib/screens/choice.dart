

import 'package:course_app/resources/assets_manager.dart';
import 'package:course_app/resources/color_manager.dart';
import 'package:course_app/screens/courses.dart';
import 'package:course_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoiceScreen extends StatelessWidget {
  String level;


  ChoiceScreen({required this.level});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          children: [
            SizedBox(
              height:20,
            ),

            Container(
                height:230,
                width:500,
                color:ColorManager.white,
                child: Image.asset(AssetsManager.lifeCourse,
                fit:BoxFit.cover,
                )),
            SizedBox(
              height:20,
            ),
            InkWell(
              child:
              Container(
                width:200,
                height:80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorManager.white
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Card(
                  child:Custom_Text(
                    text:'قسم عربي',
                    fontSize:21,
                    color:ColorManager.black,
                    alignment:Alignment.center,

                  )
                ),
              ),
              onTap:(){
                Get.to(CoursesViewScreen(cat:'ar',
                level: level,
                ));
              },
            ),

            SizedBox(
              height:20,
            ),
            InkWell(
              child:   Container(
                width:200,
                height:80,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: ColorManager.white
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Card(
                    child:Custom_Text(
                      text:'قسم الانجليزي',
                      fontSize:21,
                      color:ColorManager.black,
                      alignment:Alignment.center,
                    )
                ),
              ),
              onTap:(){
                Get.to(CoursesViewScreen(cat:'en',
                level:level,
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
