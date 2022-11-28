import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/assets_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/resources/string_manager.dart';

class CategoryItem extends StatelessWidget {
   const CategoryItem({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Routes.allCategoryPage);

      },
      child: SizedBox(
        height: 120.h,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context , index) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage:AssetImage(myImges[index]),
                    ),
                  SizedBox(height: 5.h,),
                  const Text(AppStrings.category)
                ],
              );

      },

            separatorBuilder: (context , index) => SizedBox(width: 10.0.w,),
            itemCount: myImges.length)),
    );

  }
}
