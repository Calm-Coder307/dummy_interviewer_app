import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pro1/presentation/screens/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (child) => MaterialApp(
        title: 'Interview',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Image.asset('assets/image/coditas1.png'),
          backgroundColor: Colors.blue,
          nextScreen: const MainScreen(),
        ),
      ),
    );
  }
}
