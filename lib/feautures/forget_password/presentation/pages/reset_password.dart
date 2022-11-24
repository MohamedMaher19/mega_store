import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/utils/custom_text.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/extensions.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/utils/login_register_button.dart';
import '../../../login/presentation/widgets/default_form_field.dart';
import '../../../login/presentation/widgets/face_google_regis.dart';


class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);


  var formkey = GlobalKey<FormState>();

  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

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
                          child: Image.asset(ImageAssets.megaLogo ,fit: BoxFit.fill,),),
                        SizedBox(height: AppSize.s30,),
                        TextUtils(text: AppStrings.resetPassword, fontSize: AppSize.s16, fontWeight: FontWeight.bold, color: ColorManager.wellcmeTo),
                        SizedBox(height: AppSize.s50,),

                        defaultFormField(
                          border: const OutlineInputBorder(),
                          controller: passwordController,
                          suffix: Icons.remove_red_eye,

                          type: TextInputType.visiblePassword,
                          validate: ( value) {
                            if (value.isEmpty) {
                              return AppStrings.enterPassword;
                            }
                            return null ;
                          },
                          label: AppStrings.password,
                          prefix: Icons.lock_outline,
                        ),
                        SizedBox(height: AppSize.s20,),


                        defaultFormField(
                          border: const OutlineInputBorder(),
                          onFieldSubmitted: (value){


                          },
                          suffix: Icons.remove_red_eye,


                          controller: confirmPasswordController,
                          type: TextInputType.visiblePassword,
                          validate: ( value) {
                            if (value.isEmpty) {
                              return AppStrings.enterPassword;
                            }
                            if(value !=passwordController.text)
                              return 'Password Not Match';
                            return null ;
                          },
                          label: AppStrings.confirmPass,
                          prefix: Icons.lock_outline,
                        ),
                        SizedBox(height: AppSize.s30,),

                        LoginRegisterButton(
                          text: AppStrings.confirm,
                          onPressed: () {
                            if ( formkey.currentState!.validate())
                            {
                              Navigator.pushNamed(context, Routes.homePage);


                              print('hhello');
                            }

                          }, buttonColor: ColorManager.buttonColor, fontSize: AppSize.s20, textColor: ColorManager.sWhite, fontFamily: AppStrings.fontFamily,
                        ),


                      ]),
                ),
              ),
            )));

  }
}
