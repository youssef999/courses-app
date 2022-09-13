import 'package:course_app/screens/profile/profile.dart';
import 'package:course_app/screens/profile/profile_pic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            ProfilePic(),
            ProfileHome(),
          ],
        ));
  }
}
