import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/utils/custom_text.dart';

class ProfileView extends StatelessWidget {
   ProfileView({Key? key, required this.name, required this.icon, this.ontap, required this.subName}) : super(key: key);


  final String name;
  final String subName;
  final Widget icon;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: ontap,
        child: Row(
          children: [
            Container(

              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: icon,
            ),
            SizedBox(
              width: 20,
            ),
            TextUtils(
                text: name,
                fontSize: 14,
                fontFamily:'Poppins',
                fontWeight: FontWeight.bold,
                color:ColorManager.bBlack),
            Spacer(),
            TextUtils(
                text: subName,
                fontSize: 12,
                fontFamily:'Poppins',
                fontWeight: FontWeight.normal,
                color:ColorManager.gGrey),
            SizedBox(width: 10,),
            Icon(Icons.arrow_forward_ios , size: 16,),

          ],
        ),
      ),
    );
  }
}

