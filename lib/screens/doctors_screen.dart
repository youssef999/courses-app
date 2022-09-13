// import 'package:course_app/provider/course_provider.dart';
// import 'package:course_app/screens/detail/widget/doctor_item.dart';
// import 'package:flutter/material.dart';
// import 'package:course_app/helper/sizeHelper.dart';
// import '../models/course.dart';
// import '../models/levels.dart';
// import 'detail/widget/Custom_subject_details.dart';
// import 'detail/widget/course_descrebtion.dart';
// import 'package:provider/provider.dart';

// class DoctorsScreen extends StatelessWidget {
//   late final Course course;
//   DoctorsScreen(this.course);
//   @override
//   Widget build(BuildContext context) {
//     final doctorsDetails =
//         Provider.of<CourseProvider>(context).getCourseDoctors(course.courseId);
//     final size = SizeHelper(context);
//     return Scaffold(
//       body: Column(mainAxisSize: MainAxisSize.min, children: [
//         SizedBox(
//           height: size.getHeight(20),
//         ),
//         Container(
//           height: size.getHeight(750),
//           child: ListView.builder(
//             itemCount: doctorsDetails!.length,
//             itemBuilder: (ctx, i) => DoctorItem(doctorsDetails[i]),
//           ),
//         ),
//       ]),
//     );
//   }
// }
