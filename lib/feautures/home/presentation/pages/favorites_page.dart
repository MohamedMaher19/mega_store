
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/assets_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';

class FavortesPage extends StatelessWidget {
  FavortesPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Favorite List', icon: Icon(Icons.arrow_back_ios), elvation: 0.5, context: context, onTap: () {  },

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing:1.0.h ,
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
                            height:200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0.w,vertical: 5.0.h),
                              child: Icon(Icons.delete_outline_rounded , color: Colors.white,)
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
                                  fontFamily:'Poppins' ,
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

