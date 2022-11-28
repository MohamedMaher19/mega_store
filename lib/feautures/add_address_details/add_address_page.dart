import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/extensions.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/resources/string_manager.dart';
import 'package:mega_store/core/resources/values_manager.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/core/utils/login_register_button.dart';
import 'package:mega_store/feautures/login/presentation/widgets/default_form_field.dart';


class AddAdressPage extends StatelessWidget {
  AddAdressPage({Key? key}) : super(key: key);


  var formkey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var phoneController = TextEditingController();
  var nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text('Add Adress' , style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20.sp,),
          ) ,
        ),
        body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.all(AppSize.s20.sp),
                child: Form(
                  key: formkey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextUtils(text: 'Country or region', fontSize: AppSize.s14, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                        SizedBox(
                          height: AppSize.s10.h,
                        ),
                        FormFieldAddress(
                          border: const OutlineInputBorder(),
                          controller: nameController,

                          type: TextInputType.emailAddress,
                          validate: ( value) {
                            if (value.isEmpty) {
                              return AppStrings.yourName;
                            }
                            return null ;
                          },
                        ),
                        SizedBox(height: 15.0.h,),
                        TextUtils(text: 'Street Address', fontSize: AppSize.s14, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                        SizedBox(
                          height: AppSize.s10.h,
                        ),
                        FormFieldAddress(
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
                        ),
                        SizedBox(height: 15.0.h,),
                        TextUtils(text: 'Street Address 2 (Optional)', fontSize: AppSize.s14.sp, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                        SizedBox(
                          height: AppSize.s10.h,
                        ),
                        FormFieldAddress(
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
                        ),
                        SizedBox(height: 15.0.h,),
                        TextUtils(text: 'State/Province/Region', fontSize: AppSize.s14.sp, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                        SizedBox(
                          height: AppSize.s10.h,
                        ),
                        FormFieldAddress(
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
                        ),
                        SizedBox(height: 15.0.h,),
                        TextUtils(text:'City', fontSize: AppSize.s14.sp, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                        SizedBox(
                          height: AppSize.s10.h,
                        ),

                        FormFieldAddress(
                          border: const OutlineInputBorder(),
                          controller: phoneController,

                          type: TextInputType.phone,
                          validate: ( value) {
                            if (value.isEmpty) {
                              return AppStrings.validNumber;
                            }
                            return null ;
                          },
                        ),
                        SizedBox(height: 15.0.h,),
                        TextUtils(text: 'Zip Code', fontSize: AppSize.s14.sp, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                        SizedBox(
                          height: AppSize.s10.h,
                        ),

                        FormFieldAddress(
                          border: const OutlineInputBorder(),
                          controller: passwordController,

                          type: TextInputType.visiblePassword,
                          validate: ( value) {
                            if (value.isEmpty) {
                              return AppStrings.enterPassword;
                            }
                            return null ;
                          },
                        ),
                        SizedBox(height: 15.0.h,),

                        TextUtils(text: 'Phone Number', fontSize: AppSize.s14.sp, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                        SizedBox(
                          height: AppSize.s10.h,
                        ),
                        FormFieldAddress(
                          border: const OutlineInputBorder(),
                          onFieldSubmitted: (value){


                          },

                          controller: confirmPasswordController,
                          type: TextInputType.visiblePassword,
                          validate: ( value) {
                            if (value.isEmpty) {
                              return AppStrings.enterPassword;
                            }
                            if(value !=passwordController.text) {
                              return 'Password Not Match';
                            }
                            return null ;
                          },

                        ),
                        SizedBox(height: AppSize.s30.h,),

                        LoginRegisterButton(
                          text: 'Add Address',
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.myAddress);
                          },
                          fontSize: 15.sp,
                          textColor: ColorManager.sWhite,
                          fontFamily: 'Poppins',
                          buttonColor: ColorManager.cartButton,
                        ),
                      ]),
                ),
              ),
            )));

  }
}
