import 'package:course_app/screens/home/widget/Bottom_bar.dart';
import 'package:course_app/screens/home/widget/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'edit_profile.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final box = GetStorage();

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          ProfileMenu(
            icon: "assets/images/User Icon.svg",
            text: "Edit Profile",
            press: () {
              Get.to(EditProfile());
            },
          ),
          ProfileMenu(
            icon: "assets/images/22.svg",
            text: "Language",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Notifications.svg",
            text: "Notifications",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/images/share.svg",
            text: "Share",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/images/Log out.svg",
            text: "Log out",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
    Null Function()? onpress,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Color.fromARGB(255, 187, 186, 186),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(icon, width: 22, color: Colors.black),
              SizedBox(width: 20),
              Expanded(
                  child: Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              )),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}

// Future<void> share() async {
//   await FlutterShare.share(
//       title: 'Travira',
//       text: 'Download Travira App',
//       linkUrl:
//           'https://play.google.com/store/apps/details?id=com.team.tourism2022',
//       chooserTitle: ' Travira App');
// }
