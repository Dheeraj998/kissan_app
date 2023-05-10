import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/core/route/router.dart';
import 'package:kisan_app/core/utils/themes.dart';

///////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
//////////////////  sdk 3.7.3////////////////////////////////
/////////////////////////////////////////////////////////////
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'kisan app',
            theme: Themes.appTheme,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: RouteName.landingPage,
          );
        });
  }
}
