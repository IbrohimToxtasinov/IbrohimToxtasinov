import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/screens/1.9.UploadPreview.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  bool isDark =false;
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
              SizedBox(height: 24.h),
              buildButton(MyImages.image_gallery, "From Galery"),
              SizedBox(height: 24.h),
              buildButton(MyImages.image_camera, "Take Photo"),
              buildNextButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String imageName, String text) {
    return Container(
      height: 150.h,
      width: double.infinity.w,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24).r,
      decoration: BoxDecoration(
          color: isDark
          ? Colors.black.withOpacity(0.7)
          : Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 0.4,
              offset: Offset(0, 0.4),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: Column(
        children: [
          Container(
            height: 80.h,
            child: Image.asset(imageName),
          ),
          SizedBox(height: 10.h,),
          Container(
            height: 25.h,
            width: 88.w,
            child: Center(
              child: Text(text, style: MyStyles.bentonsansbold400.copyWith(fontSize: 14),) 
              ),
          ),
          

        ],
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
                  MaterialPageRoute(builder: ((context) => UploadPreview())));
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
