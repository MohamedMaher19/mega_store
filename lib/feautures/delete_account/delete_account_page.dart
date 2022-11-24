import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/resources/string_manager.dart';
import 'package:mega_store/core/resources/values_manager.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/core/utils/login_register_button.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor:ColorManager.avatar ,
              child: Icon(Icons.question_mark , color:ColorManager.sWhite , size: 30 ,),
            ),
            SizedBox(height: 15,),

            TextUtils(text: 'Confirmation', fontSize: 24, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
            TextUtils(text: 'Are you sure wanna delete address', fontSize: 12, fontWeight: FontWeight.normal, color: ColorManager.gGrey),
            SizedBox(height: 15,),

            LoginRegisterButton(
              text: 'Delete',
              onPressed: () {
                Navigator.pushNamed(context, Routes.loginScreen);



              }, buttonColor: ColorManager.buttonColor, fontSize: AppSize.s20, textColor: ColorManager.sWhite, fontFamily: AppStrings.fontFamily,
            ),
            SizedBox(height: 15,),

            LoginRegisterButton(
              text: 'Cancel',
              onPressed: () {
                Navigator.pushNamed(context, Routes.accountPage);



              }, buttonColor: ColorManager.sWhite, fontSize: AppSize.s20, textColor: ColorManager.gGrey, fontFamily: AppStrings.fontFamily,
            ),


          ],
        ),
      ),
    );
  }
}
