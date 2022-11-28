import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/resources/assets_manager.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/string_manager.dart';
import 'package:mega_store/feautures/home/presentation/widgets/bade_widget.dart';
import 'package:mega_store/feautures/home/presentation/widgets/categry_item.dart';
import 'package:mega_store/feautures/home/presentation/widgets/indicator.dart';
import 'package:mega_store/feautures/home/presentation/widgets/may_like_item.dart';
import 'package:mega_store/feautures/home/presentation/widgets/sale_item.dart';


class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(15.0.w),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 20.h,),

              SizedBox(
                width: 400.w,
                height: 70.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: ColorManager.textField,

                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      height:50.h,
                      width: 280.w,
                      child: Padding(
                        padding:  EdgeInsets.all(8.0.h),
                        child: Row(
                          children: [
                            const Icon(Icons.search),
                            SizedBox(width: 10.w,),
                             const Text(AppStrings.search)
                          ],
                        ),
                      ),
                    ),
                    // TextFormField(),
                    const BadgeWidget()  ],
                ),
              ),
              SizedBox(height: 10.h,),

              CarouselSlider.builder(
              itemCount: myImges.length,
                  itemBuilder: (context , index , realIndex){
                final imageList = myImges[index];
                return buildImage(imageList,index);
                  },
                  options: CarouselOptions(
                    height: 250.0.h,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                      onPageChanged: (index, reason) {
                          setState(() => activeIndex = index);},
                    scrollDirection: Axis.horizontal,


                  )),
              SizedBox(height: 10.h,),
              Center(child: buildIndicator()),
              SizedBox(height: 10.h,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CategoryItem(),
                ],
              ),

              SizedBox(height: 10.h,),
              SizedBox(
                child: Image.asset(ImageAssets.clockImage , fit: BoxFit.cover,width: double.infinity,),
              ),
              SizedBox(height: 15.h,),
              const Text(AppStrings.flash),
              SizedBox(height: 15.h,),
              SaleItem(),
              const Text(AppStrings.mayLike),
              MayLikeItem()


            ],
          ),
        ),
      ) );
  }


}








