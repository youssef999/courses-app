import 'package:course_app/view_model/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SocialMedia extends GetWidget<AuthViewModel> {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.center,
        child: Text(
          "- Or Sign with -",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ]),
                child: InkWell(
                  onTap: () {
                    controller.GoogleSignInMethod();
                  },
                  child: SvgPicture.asset(
                    "assets/icons/google.svg",
                    height: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),

            /// facebook
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ]),
                child: InkWell(
                  onTap: () {
                    controller.facebookSignInInMethod();
                  },
                  child: SvgPicture.asset(
                    "assets/icons/Facebook.svg",
                    height: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),

            /// apple
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ]),
                child: InkWell(
                  onTap: () {
                    print("apple");
                  },
                  child: SvgPicture.asset(
                    "assets/icons/apple.svg",
                    height: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
