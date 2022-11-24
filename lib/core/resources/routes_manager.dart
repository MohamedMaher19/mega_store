import 'package:flutter/cupertino.dart';
import 'package:mega_store/feautures/add_address_details/add_address_page.dart';
import 'package:mega_store/feautures/address/my_adress.dart';
import 'package:mega_store/feautures/all_categories/all_categ_page.dart';
import 'package:mega_store/feautures/cart/cart_page.dart';
import 'package:mega_store/feautures/cart/success_page.dart';
import 'package:mega_store/feautures/chosed_category/category_name.dart';
import 'package:mega_store/feautures/delete_account/delete_account_page.dart';
import 'package:mega_store/feautures/home/presentation/pages/account_page.dart';
import 'package:mega_store/feautures/home/presentation/pages/favorites_page.dart';
import 'package:mega_store/feautures/home/presentation/pages/home_page.dart';
import 'package:mega_store/feautures/home/presentation/pages/layout_page.dart';
import 'package:mega_store/feautures/home/presentation/pages/offer_page.dart';
import 'package:mega_store/feautures/orders/orders_details.dart';
import 'package:mega_store/feautures/products_details/product_details.dart';
import 'package:mega_store/feautures/profile/profile_page.dart';
import 'package:mega_store/feautures/register/presentation/pages/register_screen.dart';
import 'package:mega_store/feautures/ship_to/ship_to_page.dart';
import '../../feautures/forget_password/presentation/pages/forget_pass_screen.dart';
import '../../feautures/forget_password/presentation/pages/reset_password.dart';
import '../../feautures/forget_password/presentation/pages/verify_screen.dart';
import '../../feautures/login/presentation/pages/login_screen.dart';
import '../../splash_screen.dart';


class Routes {

  static const String loginScreen = '/loginScreen';
  static const String splashScreen = '/splashScreen';
  static const String registerScreen = '/registerScreen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String verifyScreen = '/verifyScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String layoutPage = '/layoutPage';
  static const String homePage = '/homePage';
  static const String favoritesPage = '/favoritesPage';
  static const String offerPage = '/offerPage';
  static const String accountPage = '/accountPage';
  static const String allCategoryPage = '/allCategoryPage';
  static const String categoryNamePage = '/categoryNamePage';
  static const String productDetailsPage = '/productDetailsPage';
  static const String cartPage = '/cartPage';
  static const String profilePage = '/profilePage';
  static const String deleteAccount = '/deleteAccount';
  static const String shipTo = '/shipTo';
  static const String successPage = '/successPage';
  static const String orderDetailsPage = '/orderDetailsPage';
  static const String myAddress = '/myAddress';
  static const String addAdressPage = '/addAdressPage';


  static Map<String, WidgetBuilder> get routes {
    return {
      loginScreen: (context) =>  LoginScreen(),
      splashScreen: (context) => SplashScreen(),
      registerScreen: (context) => RegisterScreen(),
      forgetPasswordScreen: (context) => ForgetPasswordScreen(),
      verifyScreen: (context) => VerifyScreen(),
      resetPasswordScreen: (context) => ResetPasswordScreen(),
      layoutPage: (context) => const LayoutPage(),
      homePage: (context) =>  HomePage(),
      favoritesPage: (context) =>  FavortesPage(),
      offerPage: (context) => const OfferPage(),
      accountPage: (context) => const AccountPage(),
      allCategoryPage: (context) =>  AllCategoryPage(),
      categoryNamePage: (context) =>  CategoryNamePage(),
      productDetailsPage: (context) =>  ProductDetailsPage(),
      cartPage: (context) =>  CartPage(),
      profilePage: (context) =>  ProfilePage(),
      deleteAccount: (context) =>  DeleteAccount(),
      shipTo: (context) =>  ShipTo(),
      successPage: (context) =>  SuccessPage(),
      orderDetailsPage: (context) =>  OrderDetailsPage(),
      myAddress: (context) =>  MyAddress(),
      addAdressPage: (context) =>  AddAdressPage(),

    };
  }
}
