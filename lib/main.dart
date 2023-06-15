import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/core/route/router.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/firebase_options.dart';

import 'application/Auth/auth_bloc.dart';
import 'core/injection/injectable.dart';

///////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
//////////////////  sdk 3.7.3////////////////////////////////
/////////////////////////////////////////////////////////////
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependancies();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.started()),
        )
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 800),
          builder: (context, snapshot) {
            return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
              return MaterialApp(
                title: 'kisan app',
                theme: Themes.appTheme,
                debugShowCheckedModeBanner: false,
                onGenerateRoute: AppRouter.generateRoute,
                home: const LoaderScreen(),
                // initialRoute: state.userModel != null
                //     ? RouteName.mainScreen
                //     : RouteName.signinScreen,
              );
            });
          }),
    );
  }
}

class LoaderScreen extends StatelessWidget {
  const LoaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        log("inside bloc-----------------------------------");
        if (state.userModel != null) {
          log("inside if  -----------------------------------");

          Navigator.of(context).pushNamed(RouteName.mainScreen);
        } else {
          log("inside else -----------------------------------");

          Navigator.of(context).pushNamed(RouteName.signinScreen);
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
