import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/screens/1.11.SignupSuccessNotification.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

bool isDark = false;

class _SetLocationState extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ? MyColors.C_0D0D0D : MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(MyImages.image_bg),
            fit: BoxFit.cover,
          )),
          padding: const EdgeInsets.all(17).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(MyImages.icon_back),
              ),
              SizedBox(height: 24.h),
              Padding(
                  padding: const EdgeInsets.only(left: 8).r,
                  child: Text(
                    "Set Your Location",
                    style: MyStyles.bentonsansbold400.copyWith(fontSize: 25.sp),
                  )),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Text(
                  "This data will be displayed in your account\nprofile for security",
                  style: MyStyles.bentonsansbook400.copyWith(
                    fontSize: 12.sp,
                    height: 1.3,
                    color: isDark ? Colors.grey : MyColors.C_0D0D0D,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              buildButton(),
              buildNextButton(context)
            ],
          ),
        ),
      ),
    );
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => SignupSuccessNotification())));
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
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}

Widget buildButton() {
  return Column(
    children: [
      SizedBox(height: 30.h),
      Container(
        height: 160.h,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24).r,
        decoration: BoxDecoration(
            color: isDark ? Colors.black.withOpacity(0.8) : Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 0.4,
                offset: Offset(0.4, 0.4),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 65.w,
                  height: 60.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(MyImages.image_location),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20).r,
                  child: Text(
                    "Your Location",
                    style:
                        MyStyles.bentonsansmedium400.copyWith(fontSize: 16.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 23,),
            Container(
              height: 57.h,
              width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24).r,
        decoration: BoxDecoration(
            color: isDark ? Colors.black.withOpacity(0.5) : Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 0.4,
                offset: Offset(0.4, 0.4),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(20.r))),

              child: Container(
                height: 15.h,
                child: Center(
                  child: Text(
                    "Set Location",
                    style: MyStyles.bentonsansmedium400.copyWith(fontSize: 18.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
