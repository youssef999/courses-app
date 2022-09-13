import 'package:course_app/auth/Sign_up.dart';
import 'package:course_app/helper/bottom_text.dart';
import 'package:course_app/helper/text_form.dart';
import 'package:course_app/screens/home/widget/Bottom_bar.dart';
import 'package:course_app/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../helper/social_media.dart';

class ForgetPasswordScreen extends GetWidget<AuthViewModel> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String email, password;
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
              child: Form(
                key: _formKey,
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
                          "Forget password",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        )),
                    SizedBox(
                      height: 25,
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
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    BottomText(
                      text: "Reset Password",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
