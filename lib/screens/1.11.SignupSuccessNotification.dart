import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_project/screens/1.16.Home.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class SignupSuccessNotification extends StatefulWidget {
  const SignupSuccessNotification({Key? key}) : super(key: key);

  @override
  State<SignupSuccessNotification> createState() => _SignupSuccessNotificationState();
}

class _SignupSuccessNotificationState extends State<SignupSuccessNotification> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark
        ? MyColors.C_0D0D0D
        : MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage(isDark 
              ? MyImages.image_bg2_dark 
              : MyImages.image_bg2),
              fit: BoxFit.cover,
              )
            ),
          child: Column(children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      height: 165.h,
                      width: 192.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(MyImages.image_galochka),
                          fit: BoxFit.cover),
                      )
                    ),
                  ),
                  SizedBox(height: 33.h),
                  Center(
                    child: Container(
                      width: 165.w,
                      height: 39.h,
                      child: Text(
                        "Congrats!",
                        style: MyStyles.bentonsansbold400.copyWith(fontSize: 30.sp,color: MyColors.C_53E88B,),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Center(
                    child: Container(
                      width: 350.w,
                      height: 30.h,
                      child: Text(
                        "Your Profile Is Ready To Use",
                        style: MyStyles.bentonsansbold400.copyWith(fontSize: 23.sp,),
                      ),
                    ),
                  ),
                  SizedBox(height: 192.h),
                  Center(
                    child: Container(
                      height: 57.h,
                      width: 157.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.r)),
                        gradient: const LinearGradient(
                        colors: [
                        MyColors.C_53E88B,
                        MyColors.C_15BE77,
                        ],
                        )),
                      child: InkWell(
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: ((context) => Home())));
                        },
                        child: Center(
                          child: Text("Try Order", style: MyStyles.bentonsansbold400.copyWith(fontSize: 16.sp,color: MyColors.C_FEFEFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60.h),
                ],
              )),
          ],),
        ),
      ),
    );
  }
}