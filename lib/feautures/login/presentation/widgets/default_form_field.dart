import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mega_store/core/utils/custom_text.dart';

import '../../../../core/resources/color_manager.dart';



Widget myDivider() {
  return Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  );
}


Widget defaultFormField(
    {onTap,
      required TextInputType type,
      required String label,
      required IconData prefix,
      required TextEditingController controller,
      IconData? suffix,
      bool isPassword = false,
      bool isClickable = true,
      onChanged,
      validate,
      onFieldSubmitted,
      suffixPreseed,
      InputBorder? border}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onFieldSubmitted,
      validator: validate,
      onChanged: onChanged,
      onTap: onTap,
      enabled: isClickable,
      cursorHeight: 20.0,
      decoration: InputDecoration(
        border: border,
        suffixIcon: suffix != null
            ? IconButton(
          icon: Icon(suffix),
          onPressed: suffixPreseed,
        )
            : null,
        labelText: label,
        labelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12
        ),
        prefixIcon: Icon(prefix),
      ),
    );


Widget FormFieldBottomSheet(
    {onTap,
      required TextInputType type,
      required String label,
      required IconData prefix,
      required TextEditingController controller,
      IconData? suffix,
      bool isPassword = false,
      bool isClickable = true,
      onChanged,
      validate,
      onFieldSubmitted,
      suffixPreseed,
      InputBorder? border}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onFieldSubmitted,
      validator: validate,
      onChanged: onChanged,
      onTap: onTap,
      enabled: isClickable,
      cursorHeight: 20.0,
      decoration: InputDecoration(
        border: border,
        suffixIcon: suffix != null
            ? IconButton(
          icon: Icon(suffix),
          onPressed: suffixPreseed,
        )
            : null,
        labelText: label,
        labelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12
        ),
        prefixIcon: Icon(prefix),
      ),
    );



Widget FormFieldAddress(
    {onTap,
      required TextInputType type,
       String  ?label,
      IconData? prefix,
      required TextEditingController controller,
      IconData? suffix,
      bool isPassword = false,
      bool isClickable = true,
      onChanged,
      validate,
      onFieldSubmitted,
      suffixPreseed,
      InputBorder? border}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onFieldSubmitted,
      validator: validate,
      onChanged: onChanged,
      onTap: onTap,
      enabled: isClickable,
      cursorHeight: 20.0,
      decoration: InputDecoration(
        border: border,
        suffixIcon: suffix != null
            ? IconButton(
          icon: Icon(suffix),
          onPressed: suffixPreseed,
        )
            : null,
        labelText: label,
        labelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12
        ),

      ),
    );



void navigationTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));




void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
      (Route<dynamic> route) => false,
);



/////////////////////////////////////////////////////////


Widget defaultTextBottom({
  required onPressed,
  required String? text,
}) =>
    TextButton(
      onPressed: onPressed,
      child: TextUtils(
         text: text!, fontSize: 12, fontWeight:FontWeight.bold , color: ColorManager.buttonColor,

      ),
    );



////////////////////////////////////////////////////////////////////

void printFullText (String text){
  final pattern =RegExp('.{1.800}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));


}
//////////////////////////////////////////////////////////////////////////



