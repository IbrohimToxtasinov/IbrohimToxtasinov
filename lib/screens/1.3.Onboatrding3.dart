import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/screens/1.4.Sign_up.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
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
                image: AssetImage(MyImages.image_burger),
              ),
            ),
          ),
          Container(
            width: 348.w,
            height: 58.h,
            child: Center(
              child: Text(
                "Food Ninja is Where Your\n     Comfort Food Lives",
                style: MyStyles.bentonsansbold400
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
            ),
          ),
          Container(
            width: 300.w,
            height: 44.h,
            child: Center(
              child: Text(
                "Enjoy a fast and smooth food delivery at\n                         your doorstep",
                style: MyStyles.bentonsansbook400.copyWith(fontSize: 12.sp),
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
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
            child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          splashColor: Colors.white,
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: ((context) => SignUp())));
          },
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
          ),
        )),
        SizedBox(
          height: 65.h,
        )
      ],
    ),
  );
}
