import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/assets_manager.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/resources/string_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';

class AllCategoryPage extends StatelessWidget {
   AllCategoryPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(AppStrings.allCategories , style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20.sp,),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10.0.sm),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context, Routes.categoryNamePage);

            },
            child: GridView.count(
              scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                shrinkWrap: true,
                mainAxisSpacing:1.0.h ,
                crossAxisSpacing: 10.0.w,
                childAspectRatio: 1 / 1.3.h ,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(myImges.length, (index) =>
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50.w,
                          backgroundImage:AssetImage(myImges[index]),
                        ),
                        SizedBox(height: 5.h,),
                        const Text(AppStrings.category)
                      ],
                    )
                ),
            ),
          ),
        ),
      ),
    );
  }
}
