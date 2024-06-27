import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/SplashScreen/SplashScreen.dart';

void main() {
  runApp(
      const FluxStore()
  );
}

class FluxStore extends StatelessWidget {
  const FluxStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FluxStore',
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            fontFamily: 'Montserrat',
            textTheme: TextTheme(
              headlineMedium: TextStyle(fontSize: 22.sp, color: Colors.black38),
              headlineSmall: TextStyle(fontSize: 20.sp, color: Colors.black38),
              bodyMedium: TextStyle(fontSize: 14.sp, color: Colors.black38),
              bodySmall: TextStyle(fontSize: 11.sp, color: Colors.black54, fontWeight: FontWeight.w500)
            ),
            iconTheme: IconThemeData(
              size: 24.sp,
              color: Colors.black87
            ),
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}

