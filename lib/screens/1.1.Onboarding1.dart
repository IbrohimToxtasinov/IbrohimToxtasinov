import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/screens/1.2.Onboarding2.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  void initState(){
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding2())),
    );
  }
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.image_bg2),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 272).r,
                width: 175.r,
                height: 139.h,
                decoration: const BoxDecoration(
                  image :DecorationImage(
                    image: AssetImage(MyImages.image_masmas),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 300.r,
                height: 50.h,
                child: Center(
                  child: Text("MasmasFood",style: MyStyles.bentonsansbold400.copyWith(color: MyColors.C_53E88B, fontSize: 40.sp),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 162.r,
                height: 16.h,
                child: Center(
                  child: Text("Deliever Favorite Food",style: MyStyles.bentonsansbold400.copyWith(color: Colors.black, fontSize: 13.sp),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}