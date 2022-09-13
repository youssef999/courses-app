import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/levels.dart';
import 'package:course_app/screens/home/widget/active_courses.dart';
import 'package:course_app/screens/home/widget/category_titel.dart';
import 'package:course_app/screens/home/widget/emoji_text.dart';
import 'package:course_app/screens/home/widget/levels_slider.dart';
import 'package:course_app/screens/home/widget/other_levels.dart';
import 'package:course_app/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            const CatogaryTitel(leftText: "Choose Your Level", rightText: ""),
            OtherLevels(),
            ActiveCourses(),
          ],
        ),
      ),

      /// floating support
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Support");
        },
        child: Icon(
          Icons.contact_support,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        //elevation: 0,
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          "Hello",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 27),
              padding: EdgeInsets.all(1),
              // decoration: BoxDecoration(
              //   border:
              //       Border.all(color: kFontLight.withOpacity(0.3), width: 2),
              //   borderRadius: BorderRadius.circular(15),
              // ),
              // child: Image.asset("assets/icons/notification.png"),
              // width: 25,
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration:
                      BoxDecoration(color: kAccent, shape: BoxShape.circle),
                )),
          ],
        )
      ],
      titleTextStyle: TextStyle(fontSize: 16, color: kFontLight),
    );
  }
}
