import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/home_view_model.dart';
import 'package:course_app/screens/home/widget/category_titel.dart';
import 'package:course_app/screens/home/widget/levels_slider.dart';
import 'package:course_app/screens/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourses extends StatelessWidget {
  final List<String> names = <String>[
    "m",
    "m",
    "m",
    "m",
    "m",
  ];
  @override
  Widget build(BuildContext context) {
    /// top courses
    return GetBuilder<HomeViewModel>(
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Column(children: [
              CatogaryTitel(leftText: "Top Course", rightText: ""),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 350,
                  child: ListView.separated(
                    itemCount: controller.categoriesModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * .4,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.grey.shade100,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 8,
                                    )
                                  ]),
                              child: Container(
                                  height: 220,
                                  width: MediaQuery.of(context).size.width * .4,
                                  child: InkWell(
                                    onTap: () {
                                      print("enter");
                                      Get.to(MaterialScreen(
                                        cat:  controller.categoriesModel[index].name,
                                        doctor:  controller.categoriesModel[index].doctorname,

                                      ));
                                    },
                                    child: Image.network(
                                      controller.categoriesModel[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              controller.categoriesModel[index].name,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              controller.categoriesModel[index].doctorname,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              controller.categoriesModel[index].price + " L.E",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                  ),
                ),
              ),

              /// most selling
              CatogaryTitel(leftText: "Most Selling Course", rightText: ""),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 350,
                  child: ListView.separated(
                    itemCount: controller.bestCourseModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          width: MediaQuery.of(context).size.width * .4,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 8,
                                      )
                                    ]),
                                child: Container(
                                    height: 220,
                                    width: MediaQuery.of(context).size.width * .4,
                                    child: Image.network(
                                      controller.bestCourseModel[index].image,
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                controller.bestCourseModel[index].name,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                controller.bestCourseModel[index].doctorname,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                controller.bestCourseModel[index].price + " L.E",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        onTap:(){
                          print("ee"+controller.bestCourseModel[index].doctorname);
                          print("ee"+controller.bestCourseModel[index].name);

                          Get.to(MaterialScreen
                            (doctor: controller.bestCourseModel[index].doctorname,
                               cat: controller.bestCourseModel[index].name
                          ));
                        },
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                  ),
                ),
              )
            ]),
    );
  }
}
