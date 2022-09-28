import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/screens/1.3.Onboatrding3.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Column(children: [
          Container(
            width: 409.w,
            height: 435.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.image_ponchik),
              ),
            ),
          ),
          Container(
            width: 348.w,
            height: 58.h,
            child: Center(
              child: Text("Find your Comfort\n        Foodhere",style: MyStyles.bentonsansbold400.copyWith(fontWeight: FontWeight.bold,fontSize: 20.sp),
              ),
            ),
          ),
          Container(
            width: 300.w,
            height: 44.h,
            child: Center(
              child: Text("Here You Can find a chef or dish for every\n                 taste and color. Enjoy!",style: MyStyles.bentonsansbook400.copyWith(fontSize: 12.sp),
              ),
            ),
          ),
          buildNextButton(context),
        ]),
      ),
    );
  }
}

Widget buildNextButton(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(15.r)),
      splashColor: Colors.white,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => Onboarding3())));
      },
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
                child: Container(
              height: 56.h,
              width: 150.w,
              decoration: BoxDecoration(
                  color: MyColors.C_53E88B,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.r),
                  ),
                  gradient: const LinearGradient(
                    colors: [
                      MyColors.C_53E88B,
                      MyColors.C_15BE77,
                    ],
                  )),
              child: Center(
                  child: Text(
                "Next",
                style: MyStyles.bentonsansbold400.copyWith(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              )),
            )),
            SizedBox(
              height: 24.h,
            )
          ],
        ),
      ),
    );
  }