import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/color_manager.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.topEnd(top: -10.h, end: -3.w),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeContent: Text(
        '1',
        style: TextStyle(color: Colors.white),
      ),
      child: InkWell(
        onTap: (){
        },
        child: Icon(Icons.shopping_cart_outlined , color: ColorManager.gGrey ,size: 30.sp,),
      ),
    );
  }
}
