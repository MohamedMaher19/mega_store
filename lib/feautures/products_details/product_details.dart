import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mega_store/core/resources/color_manager.dart';
import 'package:mega_store/core/resources/routes_manager.dart';
import 'package:mega_store/core/utils/appbar.dart';
import 'package:mega_store/core/utils/custom_text.dart';
import 'package:mega_store/core/utils/login_register_button.dart';
import 'package:mega_store/feautures/home/presentation/widgets/categry_item.dart';
import 'package:mega_store/feautures/home/presentation/widgets/may_like_item.dart';
import 'package:mega_store/feautures/home/presentation/widgets/sale_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsPage extends StatefulWidget {
  ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int activeIndex = 0;

  final controller = CarouselController();

  final myImges = [
    'assets/images/image4.jpg',
    'assets/images/image4.jpg',
    'assets/images/image4.jpg',
    'assets/images/image4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text('Product Name' , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins', color: Colors.black),),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded , color: ColorManager.gGrey,size: 20,),
          ) ,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselSlider.builder(
                    itemCount: myImges.length,
                    itemBuilder: (context, index, realIndex) {
                      final imageList = myImges[index];
                      return buildImage(imageList, index);
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
                        setState(() => activeIndex = index);
                      },
                      scrollDirection: Axis.horizontal,
                    )),
                SizedBox(
                  height: 10,
                ),
                Center(child: buildIndicator()),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextUtils(
                        text: 'Product Name',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RatingBar.builder(
                  initialRating: 4,
                  itemSize: 25,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextUtils(
                        text: '\$ 299.90',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    Text(
                      '\$ 299.90  24% Off',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                TextUtils(
                    text: 'Details',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.details),
                SizedBox(
                  height: 10,
                ),
                TextUtils(
                    text:
                        'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: ColorManager.gGrey),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextUtils(
                        text: 'Review Product',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.bBlack),
                    TextUtils(
                        text: 'See More',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.gGrey),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      itemSize: 25,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextUtils(
                        text: '4.5 (5 Review)',
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.gGrey),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextUtils(
                            text: 'James Lawson',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorManager.bBlack),
                        SizedBox(
                          height: 5,
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          itemSize: 25,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextUtils(
                    text:
                        'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites..',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: ColorManager.gGrey),
                SizedBox(
                  height: 20,
                ),
                TextUtils(
                    text: 'December 10, 2016',
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    color: ColorManager.gGrey),
                SizedBox(
                  height: 20,
                ),
                TextUtils(
                    text: 'You Might Also Like',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.bBlack),
                SizedBox(
                  height: 15,
                ),
                SaleItem(),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: LoginRegisterButton(
                    text: 'Add To Cart',
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.cartPage);
                    },
                    fontSize: 15,
                    textColor: ColorManager.sWhite,
                    fontFamily: 'Poppins',
                    buttonColor: ColorManager.cartButton,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildImage(String urlImage, int index) =>
      Container(child: Image.asset(urlImage, fit: BoxFit.fill));

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: ColorManager.indicator),
        activeIndex: activeIndex,
        count: myImges.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}
