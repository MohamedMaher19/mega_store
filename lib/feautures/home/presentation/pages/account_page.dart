import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';
import 'package:mega_store/feautures/home/presentation/widgets/account_view_icons.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text('Account' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
        leading: GestureDetector(
          onTap: (){
            print('gggggg');
          },
          child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20,),
        ) ,
      ),

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          SizedBox(height: 20,),
          AccountView(name: 'Profile', icon: Icon(Icons.person_outline,color: ColorManager.cartButton,),
            ontap: (){
              Navigator.pushNamed(context, Routes.profilePage);

            }, ),
          SizedBox(height: 15,),
          AccountView(name: 'My Orders', icon: Icon(Icons.shopping_bag_outlined,color: ColorManager.cartButton),ontap: (){
            Navigator.pushNamed(context, Routes.offerPage);

          }),
          SizedBox(height: 15,),
          AccountView(name: 'Address', icon: Icon(Icons.location_on_outlined,color: ColorManager.cartButton),ontap: (){
            Navigator.pushNamed(context, Routes.myAddress);

          }),
          SizedBox(height:25,),
          AccountView(name: 'Log Out', icon: Icon(Icons.logout_sharp,color: ColorManager.cartButton),ontap: (){
            Navigator.pushNamed(context, Routes.loginScreen);

          }),
          SizedBox(height: 30,),
          AccountView(name: 'Delete Account', icon: Icon(Icons.delete_outline,color: ColorManager.buttonColor),ontap: (){
            Navigator.pushNamed(context, Routes.deleteAccount);

          }),
          SizedBox(height: 30,),

        ],
      ),
    );

  }
}
