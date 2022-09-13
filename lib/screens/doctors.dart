import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_app/resources/color_manager.dart';
import 'package:course_app/screens/material.dart';
import 'package:course_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorsViewScreen extends StatefulWidget {
  String course;

  DoctorsViewScreen({required this.course});

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<DoctorsViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white38,
          child: Column(children: [
            SizedBox(height: 30),



            Flexible(
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('doctors')
                      .where('course', isEqualTo: widget.course)

                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData)
                      return Center(child: Text('Loading'));
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return new Text('Loading...');
                      default:

                        return
                          ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                            itemBuilder: (BuildContext context, int index) {
                              DocumentSnapshot posts =
                              snapshot.data!.docs[index];
                              return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    child: InkWell(
                                      child: Card(
                                        color: Colors.white,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                  Radius.circular(10),
                                                  bottomRight:
                                                  Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ]),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 420,
                                                height: 130,
                                                child: Image.network(
                                                    posts['image'],
                                                    fit: BoxFit.fill),
                                              ),
                                              SizedBox(height: 20),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width:50,
                                                      ),
                                                      Directionality(
                                                        textDirection:
                                                        TextDirection.rtl,
                                                        child: Container(
                                                          child:
                                                          Custom_Text(
                                                            text: posts['name'],
                                                            fontSize: 18,
                                                            color: ColorManager.black,
                                                          ),
                                                          // child: Text(
                                                          //   (posts['name']),
                                                          //   style: TextStyle(
                                                          //       color: Colors.black,
                                                          //       fontSize: 18,
                                                          //       fontWeight:
                                                          //       FontWeight.bold,
                                                          //       fontFamily:
                                                          //       "Reboto"),
                                                          // ),
                                                        ),
                                                      ),
                                                      SizedBox(width:90,),
                                                      Directionality(
                                                        textDirection:
                                                        TextDirection.rtl,
                                                        child: Container(
                                                          child: Row(
                                                            children: [
                                                              Custom_Text(
                                                                text: 'LE',
                                                                fontSize: 18,
                                                                color: ColorManager.black,
                                                              ),
                                                              SizedBox(
                                                                width:5,
                                                              ),
                                                              Custom_Text(
                                                                text: posts['price'],
                                                                fontSize: 18,
                                                                color: ColorManager.primary,
                                                              ),

                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),

                                                  // RatingBar(
                                                  //   ignoreGestures:
                                                  //   true,
                                                  //   initialRating: posts
                                                  //       .data()['star'],
                                                  //   direction:
                                                  //   Axis.horizontal,
                                                  //   allowHalfRating:
                                                  //   true,
                                                  //   itemCount: 5,
                                                  //   itemSize: 18,
                                                  //   maxRating: 5,
                                                  //   ratingWidget:
                                                  //   RatingWidget(
                                                  //     full: Icon(
                                                  //       Icons.star,
                                                  //       color: Colors
                                                  //           .yellow,
                                                  //     ),
                                                  //     half: Icon(
                                                  //       Icons
                                                  //           .star_half_outlined,
                                                  //       color: Colors
                                                  //           .yellow,
                                                  //     ),
                                                  //     empty: Icon(
                                                  //       Icons
                                                  //           .star_border,
                                                  //       color: Colors
                                                  //           .yellow,
                                                  //     ),
                                                  //   ),
                                                  //   //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                                  //   onRatingUpdate:
                                                  //       (rating) {
                                                  //     print(rating);
                                                  //   },
                                                  // ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {

                                        Get.to(MaterialScreen(
                                            doctor:posts['name'] ,
                                            cat:posts['course']));
                                      },
                                    ),
                                  ));
                            });
                    }
                  }),
            ),
            //),
            //  ]),
          ]),
        ));
  }
}
