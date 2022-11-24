import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/feautures/home/presentation/widgets/account_view_icons.dart';
import 'package:mega_store/feautures/home/presentation/widgets/bottom_sheet_email.dart';
import 'package:mega_store/feautures/home/presentation/widgets/bottom_sheet_name.dart';
import 'package:mega_store/feautures/home/presentation/widgets/bottom_sheet_number.dart';
import 'package:mega_store/feautures/home/presentation/widgets/bottom_sheet_password.dart';
import 'package:mega_store/feautures/home/presentation/widgets/profile_view_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text('Account' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20,),
          ) ,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/man.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: (){
                      showModalBottomSheet(
                          enableDrag: true,
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)
                              )
                          ),
                          builder:(context)=>
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  BottomSheetCont()
                                ],
                              ));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextUtils(
                            text: 'James Lawson',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.bBlack),
                        SizedBox(
                          height: 5,
                        ),
                        TextUtils(
                            text: '@dominvic_ovo',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: ColorManager.gGrey),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ProfileView(
                    name: 'Email',
                    subName: 'rex4dom@gmail.com',
                    icon: Icon(
                      Icons.email_outlined,
                      color: ColorManager.cartButton,
                    ),
                    ontap: () {
                      print('hello');
                      showModalBottomSheet(
                          enableDrag: true,
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)
                              )
                          ),
                          builder:(context)=>
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  BottomSheetEmail()
                                ],
                              ));
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ProfileView(
                      name: 'Phone Numbers',
                      subName: '(307) 555-0133',
                      icon: Icon(Icons.phone_iphone_outlined,
                          color: ColorManager.cartButton),
                      ontap: () {
                        showModalBottomSheet(
                            enableDrag: true,
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)
                                )
                            ),
                            builder:(context)=>
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    BottomSheetNumber()
                                  ],
                                ));
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  ProfileView(
                      name: 'Change Password',
                      subName: '***********',

                      icon: Icon(Icons.lock_outline_sharp,
                          color: ColorManager.cartButton),
                      ontap: () {
                        showModalBottomSheet(
                            enableDrag: true,
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)
                                )
                            ),
                            builder:(context)=>
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    BottomSheetPassword()
                                  ],
                                ));
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  ProfileView(
                      name: 'Change Language',
                      subName: '',
                      icon: Icon(Icons.language,
                          color: ColorManager.cartButton),
                      ontap: () {}),


                ],
              ),
            ),
          ]),
        ));
  }
}
