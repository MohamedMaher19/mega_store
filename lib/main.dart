import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store/feautures/home/presentation/cubit/home_cubit.dart';
import 'package:mega_store/feautures/home/presentation/cubit/home_states.dart';

import 'core/resources/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, states) {},
        builder: (context, states) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Mega Store',
              routes: Routes.routes,
              initialRoute: Routes.splashScreen);
        },
      ),
    );
  }
}
