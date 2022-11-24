import 'package:flutter/material.dart';

import '../../../../core/utils/custom_text.dart';


class FaceGoogleButton extends StatelessWidget {
  FaceGoogleButton({Key? key, required this.text, required this.onPressed, required this.fontSize, required this.textColor, required this.fontFamily, required this.buttonColor, required this.imagePath}) : super(key: key);

  final String text;
  final Function() onPressed;
  final double fontSize;
  final Color textColor;
  final Color buttonColor;
  final String  fontFamily;
  final String  imagePath;




  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),),
          primary: buttonColor,

          minimumSize: Size(320, 65),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Image.asset(imagePath),
            SizedBox(width: 60,),
            TextUtils(
            fontFamily: fontFamily,
            text: text,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ]));
  }
}



