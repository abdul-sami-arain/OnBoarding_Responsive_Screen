import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding/features/onBoardingFeature/presentation/contentModel.dart';
import 'package:onboarding/features/widgets/description.dart';
import 'package:onboarding/features/widgets/heading.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  int activeStep = 0;
  int dotCount = 4;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 68.h,
          ),
          SizedBox(
            height: 272.h,
            width: 280.w,
            child: Image(
              image: AssetImage(contents[activeStep].image),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          DotStepper(
            activeStep: activeStep,
            dotCount: dotCount,
            shape: Shape.circle,
            dotRadius: 6,
            spacing: 8,
            indicator: Indicator.worm,
            onDotTapped: (dotindex) {
              setState(() {
                activeStep = dotindex;
              });
            },
            fixedDotDecoration: FixedDotDecoration(
              color: HexColor("#DADADA"),
              
            ),
            indicatorDecoration: IndicatorDecoration(color: Colors.black),
          ),
          SizedBox(height: 15.h),
          Heading(heading: contents[activeStep].title),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Description(description: contents[activeStep].description),
          ),
          SizedBox(
            height: 120.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Container(
              child: activeStep > 2
                  ? Container(
                      height: 48.h,
                      width: 312.w,
                      child: ElevatedButton(
                        onPressed: () {
                         
                        },
                        child: Text("Lets start"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(HexColor("#1C1C1C")),
                        ),
                      ))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                activeStep++;
                              });
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(color: HexColor("#1C1C1C")),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                activeStep++;
                              });
                            },
                            child: Text("Next"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  HexColor("#1C1C1C")),
                            ),
                          ),
                        ]),
            ),
          )
        ],
      )),
    );
  }
}
