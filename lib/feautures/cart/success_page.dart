import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/resources/string_manager.dart';
import 'package:mega_store/core/resources/values_manager.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/core/utils/login_register_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor:Colors.green ,
              child: Icon(Icons.done , color:ColorManager.sWhite , size: 50 ,),
            ),
            SizedBox(height: 15,),

            TextUtils(text: 'Success', fontSize: 24, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
            SizedBox(height: 15,),
            TextUtils(text: 'thank you for shopping From', fontSize: 12, fontWeight: FontWeight.normal, color: ColorManager.gGrey),
            TextUtils(text: 'MEGA Store', fontSize: 15, fontWeight: FontWeight.bold, color: ColorManager.gGrey),
            SizedBox(height: 15,),

            LoginRegisterButton(
              text: 'Back To Home ',
              onPressed: () {
                Navigator.pushNamed(context, Routes.homePage);



              }, buttonColor:ColorManager.edit, fontSize: AppSize.s20, textColor: ColorManager.sWhite, fontFamily: AppStrings.fontFamily,
            ),



          ],
        ),
      ),
    );
  }
}
