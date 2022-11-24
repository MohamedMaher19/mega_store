import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/feautures/register/presentation/pages/register_screen.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/extensions.dart';
import '../../../../core/resources/routes_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/utils/login_register_button.dart';
import '../../../login/presentation/widgets/default_form_field.dart';



class VerifyScreen extends StatelessWidget {
  VerifyScreen({Key? key}) : super(key: key);


  var formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(AppSize.s20),
                child: Form(
                  key: formkey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: AppSize.s20),
                          child: Image.asset(ImageAssets.megaLogo ,fit: BoxFit.fill,),
                        ),
                        SizedBox(height: AppSize.s20,),
                        TextUtils(text: AppStrings.verifyAccount, fontSize: AppSize.s16, fontWeight: FontWeight.bold, color: ColorManager.wellcmeTo),
                        SizedBox(
                          height: AppSize.s10,
                        ),
                        TextUtils(text: AppStrings.checkEmail, fontSize: AppSize.s12, fontWeight: FontWeight.normal, color: ColorManager.gGrey),
                        SizedBox(
                          height: AppSize.s90,
                        ),

                        LoginRegisterButton(
                          text: AppStrings.verify,
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.resetPasswordScreen);


                          }, buttonColor: ColorManager.buttonColor, fontSize: AppSize.s20, textColor: ColorManager.sWhite, fontFamily: AppStrings.fontFamily,
                        ),
                      ]),
                ),
              ),
            )));

  }
}
