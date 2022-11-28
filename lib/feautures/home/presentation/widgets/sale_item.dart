import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/assets_manager.dart';

class SaleItem extends StatelessWidget {
  SaleItem({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
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
                          height: 120.0.h,
                          width: 120.0.w,
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
                        SizedBox(height: 3.h,),
                        Text('\$ 299.90'),
                        SizedBox(height: 3.h,),
                        Row(
                          children:[

                            Text(
                              '\$ 500.50',
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
                );

              },

              separatorBuilder: (context , index) => SizedBox(width:10.w,),
              itemCount: myImges.length),
    );

  }
}






