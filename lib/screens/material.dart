
import 'package:course_app/resources/color_manager.dart';
import 'package:course_app/resources/strings_manager.dart';
import 'package:course_app/view_model/material_view_model.dart';
import 'package:course_app/widgets/custom_text.dart';
import 'package:course_app/widgets/pdfs_widget.dart';
import 'package:course_app/widgets/videos_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';



class MaterialScreen extends GetWidget<MaterialViewModel> {

String doctor,cat;


MaterialScreen({required this.doctor, required this.cat});

  @override
  Widget build(BuildContext context) {

    MaterialViewModel controller=MaterialViewModel();
    return
       Scaffold(
            backgroundColor:ColorManager.white,
            body:

            GetX
            <MaterialViewModel>(
              init: MaterialViewModel(),
              builder: (value) =>
            Column(
              children: [
                SizedBox(height:40,),
                Row(
                  children: [
                    SizedBox(width:130,),
                    Custom_Text(text: 'المحتوي التعليمي',
                      color:ColorManager.black,
                      fontSize:19,
                    ),
                  ],
                ),
                SizedBox(height:15,),
Text(doctor),
Text(cat),




                Container(
                  child: ToggleSwitch(
                    initialLabelIndex:controller.activeToggledIndex.value,
                    totalSwitches: 2,
                    inactiveBgColor: ColorManager.black,
                    minWidth: 320.0,
                    minHeight: 70.0,
                    activeFgColor: ColorManager.white,
                    inactiveFgColor: Colors.white54,
                    activeBgColor: [Colors.white10],
                    fontSize: 18.0,
                    labels: [

                      AppStrings.pdf,
                      AppStrings.videos,

                    ],
                    onToggle: (index) {

                      print("index="+index.toString());
                     controller.changeToogleIndex(index!);
                      print(controller.activeToggledIndex.toString());

                    },
                  ),
                ),

                if(controller.activeToggledIndex == 0)

                  PdfWidget(
                    cat:cat,
                    doctor:doctor ,
                  ),

                if(controller.activeToggledIndex == 1)

                  VideoWidget(
                    cat:cat,
                    doctor:doctor ,
                  ),
                //  WorkingRequests(),


                SizedBox(height:20,),

              ],
            ),

          ));
  }




}