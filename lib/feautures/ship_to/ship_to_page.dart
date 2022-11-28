import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/core/utils/login_register_button.dart';

class ShipTo extends StatelessWidget {
  const ShipTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text('Ship To' , style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20.sp,),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450.h,
              child: ListView.separated(
                itemBuilder: (context, index) => Padding(
                  padding:  EdgeInsets.all(8.0.h),
                  child: Card(
                    elevation: 3,
                      child: Padding(
                        padding:  EdgeInsets.all(13.0.h),
                        child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        TextUtils(
                            text: 'Priscekila',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.bBlack),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextUtils(
                            text: '3711 Spring Hill Rd undefined Tallahassee',
                            fontSize: 12.h,
                            fontWeight: FontWeight.normal,
                            color: ColorManager.gGrey),
                        TextUtils(
                            text: 'Nevada 52874 United States',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: ColorManager.gGrey),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextUtils(
                            text: '+99 1234567890',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                            color: ColorManager.gGrey),
                        SizedBox(
                          height: 15.h,
                        ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              color:ColorManager.edit ,

                            ),
                            height: 70.h,
                            width: 70.w,
                            child:   Center(
                              child: TextUtils(
                                  text: 'Edit',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: ColorManager.sWhite),
                            ),
                          ),
                          SizedBox(width: 20.w,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline , size: 30.sp,color:ColorManager.gGrey ,))
                        ],
                      )
                    ],
                  ),
                      )),
                ),
                separatorBuilder: (context, index) => Container(
                  height: 1.h,
                ),
                itemCount: 6,
              ),
            ),
            SizedBox(height: 50.h,),

            LoginRegisterButton(
              text: 'Next',
              onPressed: () {
                Navigator.pushNamed(context, Routes.successPage);
              },
              fontSize: 15.sp,
              textColor: ColorManager.sWhite,
              fontFamily: 'Poppins',
              buttonColor: ColorManager.cartButton,
            ),
          ],
        ),
      ),
    );
  }
}
