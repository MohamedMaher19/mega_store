import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/feautures/home/presentation/widgets/steeper_widget.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text('Order Details' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20,),
          ) ,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            width: double.infinity,
            height: 80,
            child: Stepper(type: StepperType.horizontal, steps: getSteps()),
          ),
          SizedBox(
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
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 10.0, bottom: 10.0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    height: 90,
                                    child: Image.asset(
                                      "assets/images/image2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Nike Air Jordan",
                                      ),
                                       SizedBox(height: 50,),

                                       Row(
                                         children: [
                                           Text(
                                            " \$ 699 ",
                                            style: TextStyle(
                                                color: Colors.lightBlue),
                                      ),
                                         ],
                                       ),

                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey
                                                    .withOpacity(.5)),
                                            borderRadius:
                                                BorderRadius.circular(5)),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, Routes.myAddress);


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
                                    TextUtils(
                                        text: 'LQNSU346JK',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: ColorManager.bBlack),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('items (3)'),
                                        Text('\$290'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Order Status'),
                                        Text('Shipping'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Items'),
                                        Text('1 Items purchased'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Total Price'),
                                        TextUtils(
                                            text: '\$ 299.43',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: ColorManager.bBlack),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, Routes.myAddress);


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
                                    TextUtils(
                                        text: 'SDG1345KJD',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: ColorManager.bBlack),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('items (3)'),
                                        Text('\$290'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Shipping'),
                                        Text('\$40'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Items'),
                                        Text('1 Items purchased'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Total Price'),
                                        TextUtils(
                                            text: '\$ 299.43',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: ColorManager.bBlack),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ])));
  }

  List<Step> getSteps() => [
        Step(title: Text('Packing'), content: Container()),
        Step(title: Text('Shipping'), content: Container()),
        Step(title: Text('Arriving'), content: Container()),
      ];
}
