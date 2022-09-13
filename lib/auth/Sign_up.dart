import 'package:course_app/helper/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../helper/bottom_text.dart';
import '../helper/social_media.dart';
import '../screens/home/widget/Bottom_bar.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ConfirmpasswordController =
      TextEditingController();
  final TextEditingController NameController = TextEditingController();
  final TextEditingController LevelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/life course.jpg",
                      width: 220,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create your account",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  TextForm(
                    controller: NameController,
                    text: "Enter your name",
                    textinputtype: TextInputType.name,
                    obscure: false,
                    onSave:(value){

                    },
                    validator:(value){

                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextForm(
                    controller: emailController,
                    text: "Enter your Email",
                    textinputtype: TextInputType.emailAddress,
                    obscure: false,
                    onSave:(value){

                    },
                    validator:(value){

                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextForm(
                    controller: passwordController,
                    text: "Enter your password",
                    textinputtype: TextInputType.text,
                    obscure: true,
                    onSave:(value){

                    },
                    validator:(value){

                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextForm(
                    controller: ConfirmpasswordController,
                    text: "Confirm your password",
                    textinputtype: TextInputType.text,
                    obscure: true,
                    onSave:(value){

                    },
                    validator:(value){

                    },
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  BottomText(
                    text: "Sign Up",
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  //  SocialMedia(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
