import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store/feautures/home/presentation/cubit/home_states.dart';
import 'package:mega_store/feautures/home/presentation/pages/account_page.dart';
import 'package:mega_store/feautures/home/presentation/pages/favorites_page.dart';
import 'package:mega_store/feautures/home/presentation/pages/home_page.dart';
import 'package:mega_store/feautures/home/presentation/pages/offer_page.dart';




class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialStates());

  static HomeCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;

  List<Widget> screens = [
    HomePage(),
    const AccountPage(),
    const OfferPage(),
     FavortesPage(),

  ];
  List<String> label = [
    'Home',
    'Account',
    'Offer',
    'Favorite',
  ];

  void changeNavbarBottom({required int index}) {
    currentIndex = index;
    emit(ChangeNavbarBottomStates());
  }
}