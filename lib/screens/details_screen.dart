import 'package:flutter/material.dart';

class detailsScreen extends StatelessWidget {
  const detailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF89dad0),
      appBar: AppBar(
        elevation: 2,
        title: Text("Level Subject"),
      ),
    );
  }
}
