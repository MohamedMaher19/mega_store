import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';
import 'package:mega_store/core/utils/login_register_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text('Your Cart' , style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20.sp,),
          ) ,
        ),
        body: Padding(
          padding:  EdgeInsets.all(8.0.h),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300.h,
                    child: ListView.separated(
                      itemBuilder: (context, index) => Card(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 15.w , top: 10.0.h,bottom: 10.0.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    height: 90.h,

                                    child: Image.asset(
                                        "assets/images/image2.jpg" , fit: BoxFit.cover,),
                                  ),
                                   SizedBox(
                                    width: 7.w,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children:  [
                                          Text(
                                            "Nike Air Jordan",
                                          ),
                                          SizedBox(
                                            width: 60.w,
                                          ),
                                          Icon(Icons.favorite , color: Colors.red,),
                                          SizedBox(width: 10.w,),
                                          Icon(Icons.delete_outline),
                                        ],
                                      ),
                                       SizedBox(height: 40.h),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            " 699 ",
                                            style: TextStyle(color: Colors.lightBlue),
                                          ),
                                           SizedBox(
                                            width: 90.w,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                    Colors.grey.withOpacity(.5)),
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                            child: Row(
                                              children: [
                                                const Icon(Icons.remove),
                                                Container(
                                                    height: 25.h,
                                                    width: 30.w,
                                                    color: ColorManager.number,
                                                    child: const Center(
                                                        child: Text("1"))),
                                                const Icon(Icons.add),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => Container(
                        height: 1.h,
                      ),
                      itemCount: 5,
                    ),
                  ),
                   SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.all(5.0.h),
                    child: Container(
                      padding:  EdgeInsets.only(left: 10.w),
                      height: 50.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enter Cupon Code",
                            style: TextStyle(color: Colors.grey.withOpacity(.5)),
                          ),
                          Container(
                            height: 60.h,
                            width: 100.w,
                            decoration: const BoxDecoration(
                                color: ColorManager.cartButton,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(3),
                                    topRight: Radius.circular(3))),
                            child: const Center(
                              child: Text(
                                "Apply",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Card(
                      child: Padding(
                        padding:  EdgeInsets.all(12.0.h),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('items (3)'),
                                  Text('\$290' ),
                                ],
                              ),
                              SizedBox(height: 20.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Shipping'),
                                  Text('\$40' ),
                                ],
                              ),
                              SizedBox(height: 20.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('import Charges'),
                                  Text('\$128' ),
                                ],
                              ),
                              SizedBox(height: 20.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Total Price'),
                                  Text('\$40' ),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                            ],
                          ),
                        ),
                      )),

                   SizedBox(
                    height: 15.h,
                  ),
                  Center(
                    child: LoginRegisterButton(
                      text: 'Check Out',
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.shipTo);
                      },
                      fontSize: 15.sp,
                      textColor: ColorManager.sWhite,
                      fontFamily: 'Poppins',
                      buttonColor: ColorManager.cartButton,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
