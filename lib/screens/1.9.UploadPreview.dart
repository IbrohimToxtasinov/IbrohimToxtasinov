import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_project/screens/1.10.SetLocation.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class UploadPreview extends StatefulWidget {
  const UploadPreview({Key? key}) : super(key: key);

  @override
  State<UploadPreview> createState() => _UploadPreviewState();
}

class _UploadPreviewState extends State<UploadPreview> {
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
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(MyImages.image_bg),
            fit: BoxFit.cover,
          )),
          padding: const EdgeInsets.all(20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(MyImages.icon_back),
              ),
              SizedBox(height: 24.h),
              Padding(
                  padding: const EdgeInsets.only(left: 5).r,
                  child: Text(
                    "Upload Your Photo\nProfile",
                    style: MyStyles.bentonsansbold400.copyWith(fontSize: 25.sp),
                  )),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Text(
                  "This data will be displayed in your account\nprofile for security",
                   style: MyStyles.bentonsansbook400.copyWith(fontSize: 12.sp,height: 1.3, color: isDark
                    ? Colors.grey
                    : MyColors.C_0D0D0D,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              buildButton(),
              buildNextButton(context),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => SetLocation())));
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
            height: 24.h,
          )
        ],
      ),
    );
  }
}

Widget buildButton() {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Container(
            height: 210.h,
            width: 280.w,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(MyImages.image_amaki), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
            ),
          ),
        ),
      ],
    ),
  );
}
