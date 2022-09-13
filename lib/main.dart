import 'package:course_app/screens/colors.dart';
import 'package:course_app/screens/details_screen.dart';
import 'package:course_app/screens/home/widget/Bottom_bar.dart';
import 'package:course_app/screens/home/widget/home.dart';
import 'package:course_app/screens/profile/profile_screen.dart';
import 'package:course_app/screens/splash.dart';
import 'package:course_app/screens/video_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:course_app/provider/course_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'helper/binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CourseProvider()),
      ],
      child: GetMaterialApp(
        initialBinding: Binding(),
        debugShowCheckedModeBanner: false,
        home:
        HomePage(),
      ),
    );
  }
}
