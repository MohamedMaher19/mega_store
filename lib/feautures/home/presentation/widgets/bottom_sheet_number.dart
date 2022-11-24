import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/string_manager.dart';
import 'package:mega_store/core/resources/values_manager.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/core/utils/login_register_button.dart';
import 'package:mega_store/feautures/login/presentation/widgets/default_form_field.dart';

class BottomSheetNumber extends StatelessWidget {

  BottomSheetNumber({Key? key,}) : super(key: key);

  var formkey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var NameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: 300,
        child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.s10),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          TextUtils(text: AppStrings.phoneNumber, fontSize: AppSize.s14, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                          SizedBox(
                            height: AppSize.s10,
                          ),
                          FormFieldBottomSheet(
                            border: const OutlineInputBorder(),

                            controller: emailController,

                            type: TextInputType.name,
                            validate: ( value) {
                              if (value.isEmpty) {
                                return AppStrings.validNumber;
                              }
                              return null ;
                            },
                            label: AppStrings.phone,
                            prefix: Icons.phone_iphone_sharp,
                          ),
                          SizedBox(height: AppSize.s30,),
                          Center(child: LoginRegisterButton(text: 'Save',
                            onPressed: () {
                              // Navigator.pushNamed(context, Routes.cartPage);

                            },
                            fontSize: 15, textColor: ColorManager.sWhite, fontFamily: 'Poppins', buttonColor: ColorManager.cartButton,))



                        ]),
                  ),
                ))
        ),
      ),
    );
  }
}
