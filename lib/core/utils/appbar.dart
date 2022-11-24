import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/utils/custom_text.dart';


appBar({
  required String title,
  required Widget  icon,
  required double elvation,
  required BuildContext context,
  required Function()? onTap,
}){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: elvation,
    title: TextUtils(text: title, fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),
    leading:GestureDetector(
      onTap: (){
        print('gggggg');
      },
      child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20,),
    ) ,
    actions: [
      icon
    ],
  );
}