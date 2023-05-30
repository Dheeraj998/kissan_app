import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kisan_app/application/bloc/auth_bloc.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/core/route/router.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/firebase_options.dart';

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
            return MaterialApp(
              title: 'kisan app',
              theme: Themes.appTheme,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRouter.generateRoute,
              home: const LoaderScreen(),
            );
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
        print("heree");
        if (state.userModel != null) {
          print("heree1");

          return Navigator.of(context).pushNamed(RouteName.mainScreen);
        } else {
          print("heree2");

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
