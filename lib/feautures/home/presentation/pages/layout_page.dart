import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store/feautures/home/presentation/cubit/home_cubit.dart';
import 'package:mega_store/feautures/home/presentation/cubit/home_states.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: SizedBox(
              width: double.infinity,
              height: 75,

              child: BottomNavigationBar(
                onTap: (index) {
                  cubit.changeNavbarBottom(index: index);
                },
                selectedItemColor: Colors.black,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                iconSize: 30,
                unselectedItemColor: Colors.grey,
                currentIndex: cubit.currentIndex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline), label: 'Account'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.local_offer_outlined), label: 'Offer'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_border), label: 'Favorite'),
                ],
              ),
            ),

          );
        });
  }
}
