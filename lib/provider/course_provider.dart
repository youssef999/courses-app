import 'package:flutter/material.dart';
import 'package:course_app/models/course.dart';
import 'package:course_app/models/doctor.dart';

class CourseProvider with ChangeNotifier {
  final List<Course> _details = [
    // level 1
    Course(
      'اصول الاقتصاد 2',
      1,
      1,
      [
        Doctor('عمرو الجبالي', 'assets/images/amr_gbaly.jpg'),
        Doctor('احمد موسى', 'assets/images/ahmed_mousa.jpg'),
      ],
    ),
    Course(
      'نطوير اقتصادي',
      2,
      1,
      [
        Doctor('عمرو الجبالي', 'assets/images/amr_gbaly.jpg'),
        Doctor('احمد موسى', 'assets/images/ahmed_mousa.jpg'),
      ],
    ),
    Course(
      'السلوك التنظيمي',
      3,
      1,
      [
        Doctor('اسلام الحديدي ', 'assets/images/elhadidy.jpg', ['', '']),
      ],
    ),
    Course(
      'الادارة العامة',
      4,
      1,
      [
        Doctor('اسلام الحديدي ', 'assets/images/elhadidy.jpg'),
      ],
    ),
    Course(
      'اصول المحاسبة 2',
      5,
      1,
      [
        Doctor('محمود عزمي', 'assets/images/mahmoud_azzmy.jpg'),
        Doctor('اشرف الصباحي', 'assets/images/ash_elsbahy.jbg'),
      ],
    ),
    Course(
      'مدخل القانون',
      6,
      1,
      [
        Doctor('حسام الطوخي'),
        Doctor('حاتم الشهاوي'),
      ],
    ),
    // level 2
    Course(
      'ادارة الانتاج',
      7,
      2,
      [
        Doctor('اسلام الحديدي ', 'assets/images/elhadidy.jpg'),
        Doctor('محمود عبد العزيز'),
      ],
    ),
    Course(
      '2محاسبة الشركات 2',
      8,
      2,
      [
        Doctor('محمود عزمي', 'assets/images/mahmoud_azzmy.jpg'),
        Doctor('اشرف الصباحي', 'assets/images/ash_elsbahy.jbg'),
      ],
    ),
    Course(
      'ادارة الافراد',
      9,
      2,
      [
        Doctor('اسلام الحديدي ', 'assets/images/elhadidy.jpg'),
      ],
    ),
    Course(
      'مبادئ الاحصاء',
      10,
      2,
      [
        Doctor('هيثم بركات', 'assets/images/haith_barkat.jpg'),
      ],
    ),
    Course(
      'النقود والبنوك 2',
      11,
      2,
      [
        Doctor('عمرو الجبالي', 'assets/images/amr_gbaly.jpg'),
        Doctor('احمد موسى', 'assets/images/ahmed_mousa.jpg'),
      ],
    ),
    Course(
      'الحاسب الآلي',
      12,
      2,
      [
        Doctor('محمود هلال'),
      ],
    ),
    Course(
      'القانون التجاري',
      13,
      2,
      [
        Doctor('حسام الطوخي'),
        Doctor('حاتم الشهاوي'),
      ],
    ),
    // level 3
    Course(
      'تنمية وتخطيط اقتصادي',
      14,
      3,
      [
        Doctor('عمرو الجبالي', 'assets/images/amr_gbaly.jpg'),
        Doctor('احمد موسى', 'assets/images/ahmed_mousa.jpg'),
      ],
    ),
    Course(
      'اصول التكاليف 2',
      15,
      3,
      [
        Doctor('اشرف الصباحي', 'assets/images/ash_elsbahy.jpg'),
        Doctor('محمد عبد الحميد', 'assets/images/m_abdelhamid.jpg'),
      ],
    ),
    Course(
      'ادارة منشات مالية',
      16,
      3,
      [
        Doctor('اسلام الحديدي ', 'assets/images/elhadidy.jpg'),
      ],
    ),
    Course(
      'محاسبة حكومية 2',
      17,
      3,
      [
        Doctor('محمود عزمي', 'assets/images/mahmoud_azzmy.jpg'),
      ],
    ),
    Course(
      'التامين ورياضته',
      18,
      3,
      [
        Doctor('هيثم بركات', 'assets/images/haith_barkat.jpg'),
      ],
    ),
    Course(
      'اصول التكاليف 2',
      19,
      3,
      [
        Doctor('محمود هلال'),
        Doctor('شادي منصور'),
        Doctor('مها الذكي'),
      ],
    ),
    // level 4
    Course(
      'محاسبة ادارية',
      20,
      4,
      [
        Doctor('محمود عزمي', 'assets/images/mahmoud_azzmy.jpg'),
      ],
    ),
    Course(
      'ضريبة وزكاة 2',
      21,
      4,
      [
        Doctor('عبد السميع عنان'),
      ],
    ),
    Course(
      'نظم محاسبية',
      23,
      4,
      [
        Doctor('محمد جمال بسيوني', 'assets/images/mo_gamal_basiony.jpg'),
      ],
    ),
    Course(
      'قضايا اقتصادية',
      24,
      4,
      [
        Doctor('احمد موسى', 'assets/images/ahmed_mousa.jpg'),
        Doctor('شريف حجازي'),
      ],
    ),
    Course(
      'نظم التكاليف 2',
      25,
      4,
      [
        Doctor('اشرف الصباحي', 'assets/images/ash_elsbahy.jpg'),
        Doctor('شيماء حافظ'),
      ],
    ),
    Course(
      'استراتيجات اعمال',
      26,
      4,
      [
        Doctor('اسامة بيومي'),
        Doctor('احمد خشبة'),
      ],
    ),
    Course(
      'محاسبة ادارية',
      27,
      4,
      [
        Doctor('محمود عزمي', 'assets/images/mahmoud_azzmy.jpg'),
      ],
    ),
    Course(
      'ادارة الاعلان',
      28,
      4,
      [
        Doctor('اسامة البيومي'),
        Doctor('احمد خشبة'),
      ],
    ),
    Course(
      'قضايا اقتصادية معاصرة',
      29,
      4,
      [
        Doctor('احمد موسى'),
        Doctor('شريف حجازي'),
      ],
    ),
    Course(
      'نظرية التنظيم',
      30,
      4,
      [
        Doctor('احمد خشبة'),
        Doctor('اسامة البيومي'),
      ],
    ),
  ];
  List<Course>? getCourseById(int id) {
    final founded = _details.where((element) {
      return element.levelNumber == id;
    }).toList();
    return founded;
  }

  List<Doctor>? getCourseDoctors(int id) {
    final doctors = _details[id].doctors;
    return doctors;
  }
}
