import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/screens/1.4.Sign_up.dart';
import 'package:masmas_project/screens/1.6.Signup_Process.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              height: 40,
            ),
            Center(
              child: Container(
                width: 250.r,
                height: 26.h,
                child: Center(
                  child: Text(
                    "Sign Up For Free ",
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
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10).r,
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
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5).r,
                        height: 25.h,
                        width: 25.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(MyImages.image_profile),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 20).r,
                        height: 14.h,
                        width: 85.w,
                        child: Text(
                          "Anamwp...",
                          style: MyStyles.bentonsansregular200
                              .copyWith(fontSize: 14.sp, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              height: 57.h,
              margin: EdgeInsets.only(left: 25, right: 25),
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10).r,
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
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5).r,
                        height: 25.h,
                        width: 25.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(MyImages.image_message),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 20).r,
                        height: 14.h,
                        width: 85.w,
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
            SizedBox(height: 12.h),
            Container(
              height: 57.h,
              margin: EdgeInsets.only(left: 25, right: 25),
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10).r,
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
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5).r,
                        height: 25.h,
                        width: 25.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(MyImages.image_lock),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 20).r,
                        height: 14.h,
                        width: 85.w,
                        child: Text(
                          "Password",
                          style: MyStyles.bentonsansregular200
                              .copyWith(fontSize: 14.sp, color: Colors.grey),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 130).r,
                        height: 25.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(isDark
                            ? MyImages.image_koz_dark
                            : MyImages.image_koz),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, left: 30).r,
                  height: 25.h,
                  width: 25.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(MyImages.image_galochka),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20).r,
                  height: 20.h,
                  width: 150.w,
                  child: Text(
                    "Keep Me Signed In",
                    style: MyStyles.bentonsansregular200
                        .copyWith(fontSize: 12.sp, color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, left: 30).r,
                  height: 25.h,
                  width: 25.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(MyImages.image_galochka),
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20).r,
                  height: 20.h,
                  width: 250.w,
                  child: Text(
                    "Email Me About Special Pricing",
                    style: MyStyles.bentonsansregular200
                        .copyWith(fontSize: 12.sp, color: Colors.grey),
                  ),
                ),
              ],
            ),
            buildNextButton(context),
            SizedBox(height: 5),
            Container(
              width: 170.w,
              height: 20.h,
              child: Center(
                child: Text(
                  "already have an account?",
                  style: MyStyles.bentonsansmedium400.copyWith(
                    fontSize: 12,
                    color: MyColors.C_53E88B,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
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
             Navigator.push(context, MaterialPageRoute(builder: ((context) => SignupProcess())));
          },
          child: Container(
            height: 56.h,
            width: 150.w,
            decoration: BoxDecoration(
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
              "Create Account",
              style: MyStyles.bentonsansbold400.copyWith(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            )),
          ),
        )),
      ],
    ),
  );
}
