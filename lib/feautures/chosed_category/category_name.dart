import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';

class CategoryNamePage extends StatelessWidget {
  CategoryNamePage({Key? key}) : super(key: key);

  final myImges = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text('Category Name' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20,),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing:1.0 ,
              crossAxisSpacing: 20.0,
              childAspectRatio: 1 / 1.75 ,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(myImges.length, (index) =>
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children:[
                          Image(
                            image: AssetImage(myImges[index]),
                            height:200,
                            width: double.infinity,
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
                          Row(
                            children:[

                              Text(
                                '\$ 299.90',
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
                  ))),
        ),
      ),
    );
  }
}
