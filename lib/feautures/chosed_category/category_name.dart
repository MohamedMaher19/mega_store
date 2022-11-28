import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        title: Text('Category Name' , style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20.sp,),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.0.w),
          child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing:1.0 .h,
              crossAxisSpacing: 20.0.w,
              childAspectRatio: 1 / 1.75.h ,
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
                            height:200.h,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0.w,vertical: 5.0.h),
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
                              fontSize: 14.0.sp,
                              height: 1.3.h,
                            ),

                          ),
                          SizedBox(height: 3,),
                          Text('\$ 299.90'),
                          Row(
                            children:[

                              Text(
                                '\$ 299.90',
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,

                                ),
                              ),
                              SizedBox(width: 5.0.w,),
                              Text(
                                '25% off',
                                style: TextStyle(
                                  fontSize: 10.0.sp,
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
