import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store/feautures/home/presentation/cubit/home_cubit.dart';
import 'package:mega_store/feautures/home/presentation/cubit/home_states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/resources/routes_manager.dart';

void main() {
  runApp( DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
    return BlocProvider<HomeCubit>(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, states) {},
        builder: (context, states) {
          return MaterialApp(
              useInheritedMediaQuery: true,
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              title: 'Mega Store',
              routes: Routes.routes,
              initialRoute: Routes.layoutPage);
        },
      ),
    );
  });}
}
