import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              radius: 40.h,
              backgroundColor:Colors.green ,
              child: Icon(Icons.done , color:ColorManager.sWhite , size: 50.sp ,),
            ),
            SizedBox(height: 15.h,),

            TextUtils(text: AppStrings.success, fontSize: 24.sp, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
            SizedBox(height: 15.h,),
            TextUtils(text: AppStrings.thanks, fontSize: 12.sp, fontWeight: FontWeight.normal, color: ColorManager.gGrey),
            TextUtils(text: AppStrings.mEGAStore, fontSize: 15.sp, fontWeight: FontWeight.bold, color: ColorManager.gGrey),
            SizedBox(height: 15.h,),

            LoginRegisterButton(
              text:AppStrings.backHome ,
              onPressed: () {
                Navigator.pushNamed(context, Routes.layoutPage);



              }, buttonColor:ColorManager.edit, fontSize: AppSize.s20.sp, textColor: ColorManager.sWhite, fontFamily: AppStrings.fontFamily,
            ),



          ],
        ),
      ),
    );
  }
}
