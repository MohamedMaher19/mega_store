import 'package:flutter/material.dart';
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
          title: Text('Your Cart' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20,),
          ) ,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300,
                    child: ListView.separated(
                      itemBuilder: (context, index) => Card(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15 , top: 10.0,bottom: 10.0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    height: 90,

                                    child: Image.asset(
                                        "assets/images/image2.jpg" , fit: BoxFit.cover,),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            "Nike Air Jordan",
                                          ),
                                          SizedBox(
                                            width: 60,
                                          ),
                                          Icon(Icons.favorite , color: Colors.red,),
                                          SizedBox(width: 10,),
                                          Icon(Icons.delete_outline),
                                        ],
                                      ),
                                      const SizedBox(height: 40),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            " 699 ",
                                            style: TextStyle(color: Colors.lightBlue),
                                          ),
                                          const SizedBox(
                                            width: 90,
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
                                                    height: 25,
                                                    width: 30,
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
                        height: 1,
                      ),
                      itemCount: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: 50,
                      width: double.infinity,
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
                            height: 60,
                            width: 100,
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
                  SizedBox(height: 20,),
                  Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
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
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Shipping'),
                                  Text('\$40' ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('import Charges'),
                                  Text('\$128' ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Total Price'),
                                  Text('\$40' ),
                                ],
                              ),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      )),

                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: LoginRegisterButton(
                      text: 'Check Out',
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.shipTo);
                      },
                      fontSize: 15,
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
