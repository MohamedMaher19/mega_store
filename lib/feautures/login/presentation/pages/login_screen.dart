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
import '../widgets/default_form_field.dart';
import '../widgets/face_google_regis.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);


  var formkey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
                          TextUtils(text: AppStrings.welcome, fontSize: AppSize.s16, fontWeight: FontWeight.bold, color: ColorManager.wellcmeTo),
                          SizedBox(
                            height: AppSize.s10,
                          ),
                          TextUtils(text: AppStrings.signInToCont, fontSize: AppSize.s12, fontWeight: FontWeight.normal, color: ColorManager.gGrey),
                          SizedBox(
                            height: AppSize.s20,
                          ),
                          defaultFormField(
                            border: const OutlineInputBorder(),

                            controller: emailController,

                            type: TextInputType.emailAddress,
                            validate: (value) {
                              if (!RegExp(validationEmail).hasMatch(value)) {
                                return AppStrings.validEmail;
                              } else {
                                return null;
                              }
                            },
                            label: AppStrings.yourEmail,
                            prefix: Icons.email_outlined,
                          ),
                          SizedBox(height: 15.0,),
                          defaultFormField(
                            border: const OutlineInputBorder(),
                            onFieldSubmitted: (value){


                            },

                            controller: passwordController,
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
                          SizedBox(height: AppSize.s30,),

                          LoginRegisterButton(
                                text: AppStrings.signIn,
                                onPressed: () {
                                  if ( formkey.currentState!.validate())
                                  {
                                    Navigator.pushNamed(context, Routes.layoutPage);


                                    print('hhello');
                                  }

                                }, buttonColor: ColorManager.buttonColor, fontSize: AppSize.s20, textColor: ColorManager.sWhite, fontFamily: AppStrings.fontFamily,
                                ),

                          SizedBox(height: AppSize.s15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 1,
                                width: 140,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              TextUtils(text: 'OR', fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),
                              Container(
                                height: 1,
                                width: 140,
                                color: Colors.grey.withOpacity(0.4),
                              ),

                            ],
                          ),
                          SizedBox(height: AppSize.s15,),
                          FaceGoogleButton(text:AppStrings.googleSign , onPressed: () {  }, fontSize: AppSize.s14, textColor: ColorManager.gGrey, fontFamily: AppStrings.fontFamily, buttonColor: ColorManager.light, imagePath: ImageAssets.google,),
                          SizedBox(height: AppSize.s10,),
                          FaceGoogleButton(text:AppStrings.faceBookSign , onPressed: () {  }, fontSize: AppSize.s14, textColor: ColorManager.gGrey, fontFamily: AppStrings.fontFamily, buttonColor: ColorManager.light, imagePath: ImageAssets.faceBook,),
                          SizedBox(height: AppSize.s10,),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, Routes.forgetPasswordScreen);

                            },
                              child: TextUtils(text:AppStrings.forgetPass , fontSize: AppSize.s12, fontWeight: FontWeight.bold, color: ColorManager.buttonColor)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextUtils(text:AppStrings.dontHave , fontSize: AppSize.s12, fontWeight: FontWeight.normal, color: ColorManager.gGrey),


                              defaultTextBottom(
                                  onPressed: () {
                                    Navigator.pushNamed(context, Routes.registerScreen);
                                  },
                                  text:AppStrings.register )

                            ],
                          )

                      ]),
                    ),
                  ),
                )));

  }
}
