import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/screens/1.5.Sign_in.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(isDark
                ? MyImages.image_bg2_dark
                :MyImages.image_bg2),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10).r,
                width: 175.r,
                height: 139.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
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
                  child: Text(
                    "MasmasFood",
                    style: MyStyles.bentonsansbold400
                        .copyWith(color: MyColors.C_53E88B, fontSize: 40.sp),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 162.r,
                height: 16.h,
                child: Center(
                  child: Text(
                    "Deliever Favorite Food",
                    style: MyStyles.bentonsansbold400
                        .copyWith(fontSize: 13.sp),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                width: 250.r,
                height: 26.h,
                child: Center(
                  child: Text(
                    "Login To Your Account",
                    style: MyStyles.bentonsansbold400.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 57.h,
              margin: EdgeInsets.only(left: 25, right: 25),
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20).r,
              decoration: BoxDecoration(
                color: isDark
                ? Colors.black.withOpacity(0.7)
                : Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.4,
                    offset: Offset(0.4, 0.4),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.sp)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 5).r,
                        height: 14.h,
                        width: 68.w,
                        child: Text(
                          "Email",
                          style: MyStyles.bentonsansregular200
                              .copyWith(fontSize: 14.sp, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 57.h,
              margin: EdgeInsets.only(left: 25, right: 25),
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20).r,
              decoration: BoxDecoration(
                color: isDark
                ? Colors.black.withOpacity(0.7)
                : Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.4,
                    offset: Offset(0.4, 0.4),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.sp)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 5).r,
                        height: 14.h,
                        width: 75.w,
                        child: Text(
                          "Password",
                          style: MyStyles.bentonsansregular200
                              .copyWith(fontSize: 14.sp, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 120.r,
                height: 20.h,
                child: Center(
                  child: Text(
                    "Or Continue With",
                    style: MyStyles.bentonsansbold400.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 57.h,
                  width: 152,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10)
                          .r,
                  decoration: BoxDecoration(
                    color: isDark
                    ? Colors.black.withOpacity(0.7)
                    : Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.4,
                        offset: Offset(0.4, 0.4),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8).r,
                            height: 25.h,
                            width: 25.w,
                            child: SvgPicture.asset(MyImages.icon_facebook),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8).r,
                            height: 14.h,
                            width: 75.w,
                            child: Text(
                              "Facebook",
                              style: MyStyles.bentonsansmedium400.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 21,
                ),
                Container(
                  height: 57.h,
                  width: 152,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10)
                          .r,
                  decoration: BoxDecoration(
                    color: isDark
                    ? Colors.black.withOpacity(0.7)
                    : Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.4,
                        offset: Offset(0.4, 0.4),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                  ),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8).r,
                            height: 25.h,
                            width: 25.w,
                            child: SvgPicture.asset(MyImages.icon_google),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8).r,
                            height: 14.h,
                            width: 70.w,
                            child: Text(
                              "Google",
                              style: MyStyles.bentonsansmedium400.copyWith(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ]),
                  ]),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Center(
              child: Container(
                width: 160.r,
                height: 20.h,
                child: Center(
                  child: Text(
                    "Forgot Your Password?",
                    style: MyStyles.bentonsansbold400
                        .copyWith(color: MyColors.C_53E88B, fontSize: 12.sp),
                  ),
                ),
              ),
            ),
            buildNextButton(context),
          ]),
        ),
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
             Navigator.push(context, MaterialPageRoute(builder: ((context) => SignIn())));
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
              "Login",
              style: MyStyles.bentonsansbold400.copyWith(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            )),
          ),
        )),
        SizedBox(
          height: 15,
        ),
      ],
    ),
  );
}
