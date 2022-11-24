import 'package:flutter/material.dart';
import 'package:mega_store/core/utils/custom_text.dart';

class AccountView extends StatelessWidget {
  AccountView({Key? key, required this.name, required this.icon, this.ontap}) : super(key: key);


  final String name;
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
                color:Colors.black)
          ],
        ),
      ),
    );
  }
}

