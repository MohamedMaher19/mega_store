import 'package:flutter/material.dart';

class SaleItem extends StatelessWidget {
  SaleItem({Key? key}) : super(key: key);

  final myImges = [
    'assets/images/slider.png',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context , index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children:[
                        Image(
                          image: AssetImage(myImges[index]),
                          height: 120.0,
                          width: 120.0,
                          fit: BoxFit.cover,
                        ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                            child: Icon(Icons.favorite_border , color: Colors.white,)
                          ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Fs-Nike Air Max',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.0,
                            height: 1.3,
                          ),

                        ),
                        SizedBox(height: 3,),
                        Text('\$ 299.90'),
                        SizedBox(height: 3,),
                        Row(
                          children:[

                            Text(
                              '\$ 500.50',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,

                              ),
                            ),
                            SizedBox(width: 5.0,),
                              Text(
                                '25% off',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.red,
                                ),
                              ),

                          ],
                        ),
                      ],
                    ),

                  ],
                );

              },

              separatorBuilder: (context , index) => SizedBox(width:10,),
              itemCount: myImges.length),
    );

  }
}






