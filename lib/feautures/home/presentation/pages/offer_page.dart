import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';
import 'package:mega_store/core/utils/custom_text.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text('My Orders' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
        leading: GestureDetector(
          onTap: (){
          },
          child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20,),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, Routes.orderDetailsPage);

                },
                child: Card(
                  elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextUtils(text: 'LQNSU346JK', fontSize: 15, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                              SizedBox(height: 10,),
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
                                  Text('Order Status'),
                                  Text('Shipping' ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('Items'),
                                  Text('1 Items purchased' ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  Text('Total Price'),
                                  TextUtils(text: '\$ 299.43', fontSize: 15, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                                ],
                              ),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextUtils(text: 'SDG1345KJD', fontSize: 15, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                            SizedBox(height: 10,),

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
                                Text('Items'),
                                Text('1 Items purchased' ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Text('Total Price'),
                                TextUtils(text: '\$ 299.43', fontSize: 15, fontWeight: FontWeight.bold, color: ColorManager.bBlack),
                              ],
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
