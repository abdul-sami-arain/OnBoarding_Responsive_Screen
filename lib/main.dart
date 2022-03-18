import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding/features/onBoardingFeature/presentation/onBoarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=>MaterialApp(
        debugShowCheckedModeBanner: false,
        home:OnBoarding() ,
      ),
      designSize: Size(360,800)
      );
  }
}
