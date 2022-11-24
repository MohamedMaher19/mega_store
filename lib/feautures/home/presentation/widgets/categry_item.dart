import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/routes_manager.dart';

class CategoryItem extends StatelessWidget {
   CategoryItem({Key? key}) : super(key: key);

  final myImges = [
    'assets/images/slider.png',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',
    'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',


  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Routes.allCategoryPage);

      },
      child: Container(
        height: 120,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context , index) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:AssetImage(myImges[index]),
                    ),
                  SizedBox(height: 5,),
                  Text('Category')
                ],
              );

      },

            separatorBuilder: (context , index) => SizedBox(width: 10.0,),
            itemCount: myImges.length)),
    );

  }
}
