import 'package:flutter/material.dart';
import 'package:petnetwork/widgets/commons.dart';
import 'package:petnetwork/widgets/custom_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'About us',
          color: ColorStyles.black,
          fontWeight: FontWeight.bold,
          size: 20,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Text(
          'This is my project.\n Nguyễn Vũ Tuấn Anh',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
