import 'package:course_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmojiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Student Of \nCommerce El Mansoura ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: kFont)),
          TextSpan(text: "")
        ]),
      ),
    );
  }
}
