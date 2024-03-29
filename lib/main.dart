import 'package:flutter/material.dart';
import 'package:flutter_news/pages/welcome/welcome.dart';
import 'package:flutter_news/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'global.dart';

void main() =>  runApp(const MyApp());//Global.init().then((value) => ));


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812-44-34),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const WelcomePage(),
            routes: staticRoutes,);
      },
    );
  }
}
