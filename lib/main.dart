import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/application/bloc/auth_bloc.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/core/route/router.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/firebase_options.dart';

///////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
//////////////////  sdk 3.7.3////////////////////////////////
/////////////////////////////////////////////////////////////
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          create: (context) => AuthBloc()..add(AuthEvent.started()),
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
              initialRoute: RouteName.signinScreen,
            );
          }),
    );
  }
}
