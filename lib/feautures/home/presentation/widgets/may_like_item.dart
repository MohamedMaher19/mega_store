import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/assets_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';

class MayLikeItem extends StatelessWidget {
  MayLikeItem({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Routes.productDetailsPage);

      },
      child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing:1.0.h ,
          crossAxisSpacing: 15.0.w,
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
              SizedBox(height: 3.h,),
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
    );


  }
}






