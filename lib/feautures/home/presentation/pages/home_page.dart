import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/feautures/home/presentation/widgets/bade_widget.dart';
import 'package:mega_store/feautures/home/presentation/widgets/categry_item.dart';
import 'package:mega_store/feautures/home/presentation/widgets/may_like_item.dart';
import 'package:mega_store/feautures/home/presentation/widgets/sale_item.dart';
import 'package:mega_store/feautures/home/presentation/widgets/search_bar.dart';
import 'package:mega_store/feautures/login/presentation/widgets/default_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int activeIndex = 0;

   final controller = CarouselController();
   var nameController = TextEditingController();


   final myImges = [
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/slider.png',
    'assets/images/markus-spiske-wL7pwimB78Q-unsplash.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 20,),

              Container(
                width: 400,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: ColorManager.textField,

                          borderRadius: BorderRadius.circular(10)
                      ),
                      height:50,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 15,),
                            Text('Search Products')
                          ],
                        ),
                      ),
                    ),
                    // TextFormField(),
                    BadgeWidget()  ],
                ),
              ),
              SizedBox(height: 10,),

              CarouselSlider.builder(
              itemCount: myImges.length,
                  itemBuilder: (context , index , realIndex){
                final imageList = myImges[index];
                return buildImage(imageList,index);
                  },
                  options: CarouselOptions(
                    height: 250.0,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                      onPageChanged: (index, reason) {
                          setState(() => activeIndex = index);},
                    scrollDirection: Axis.horizontal,


                  )),
              SizedBox(height: 10,),
              Center(child: buildIndicator()),
              SizedBox(height: 10,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryItem(),
                ],
              ),

              SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: Image.asset('assets/images/advertise.png'),
              ),
              SizedBox(height: 15,),
              Text('Flash Sale'),
              SizedBox(height: 15,),
              SaleItem(),
              Text('You May Like'),
              MayLikeItem()


            ],
          ),
        ),
      ) );
  }

   Widget buildImage(String urlImage, int index) =>
       Container(child: Image.asset(urlImage, fit: BoxFit.fill));

   Widget buildIndicator() => AnimatedSmoothIndicator(
     onDotClicked: animateToSlide,
     effect: ExpandingDotsEffect(dotWidth: 10,dotHeight: 10, activeDotColor: ColorManager.indicator),
     activeIndex: activeIndex,
     count: myImges.length,
   );

   void animateToSlide(int index) => controller.animateToPage(index);
}




    // Widget buildGridViewProduct (ProductModel model , context ) => Container(
    //   color: Colors.white,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //
    //       Stack(
    //         alignment: AlignmentDirectional.bottomStart,
    //         children:[
    //           Image(
    //
    //             image: NetworkImage(model.image!),
    //             width: double.infinity,
    //             height: 200.0,
    //           ),
    //
    //           if (model.discount != 0)
    //
    //
    //             Container(
    //               color: Colors.red,
    //               padding: EdgeInsets.symmetric(horizontal: 5.0),
    //               child: Text(
    //                 'DISCOUNT',
    //                 style: TextStyle(
    //                   fontSize: 9,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //             ),
    //         ],
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(12.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //
    //           children: [
    //             Text(
    //               model.name!,
    //               maxLines: 2,
    //               overflow: TextOverflow.ellipsis,
    //               style: TextStyle(
    //                 fontSize: 14.0,
    //                 height: 1.3,
    //               ),
    //
    //             ),
    //             SizedBox(height: 3,),
    //             Row(
    //               children:[
    //
    //                 Text(
    //                   '${model.price!.round()}',
    //                   style: TextStyle(
    //                     fontSize: 12.0,
    //                     color: defaultColor,
    //                   ),
    //                 ),
    //                 SizedBox(width: 5.0,),
    //
    //                 if (model.discount != 0)
    //
    //                   Text(
    //                     '${model.old_price!.round()}',
    //                     style: TextStyle(
    //                       fontSize: 10.0,
    //                       color: Colors.grey,
    //                       decoration: TextDecoration.lineThrough,
    //                     ),
    //                   ),
    //                 Spacer(),
    //                 IconButton(
    //                   icon:CircleAvatar(
    //                     backgroundColor:ShopCubit.get(context).favorites[model.id]! ? Colors.red : Colors.grey ,
    //                     child : Icon(
    //                       Icons.favorite_border,
    //                       size: 14.0,
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                   onPressed: (){
    //
    //                     ShopCubit.get(context).changeFavorites(model.id!);
    //
    //                     print(model.id);
    //                   },
    //                 )
    //
    //
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //
    //     ],
    //   ),
    // );



