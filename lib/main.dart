import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_project/screens/1.1.Onboarding1.dart';
import 'package:masmas_project/screens/1.16.Home.dart';
import 'package:masmas_project/screens/1.17.Explore_Restaruant.dart';
import 'package:masmas_project/screens/1.18.Explore_Menu.dart';
import 'package:masmas_project/screens/1.2.Onboarding2.dart';
import 'package:masmas_project/screens/1.3.Onboatrding3.dart';
import 'package:masmas_project/screens/1.5.Sign_in.dart';
import 'package:masmas_project/screens/1.4.Sign_up.dart';
import 'package:masmas_project/screens/1.11.SignupSuccessNotification.dart';
import 'package:masmas_project/screens/1.24%20and%201.25.CallRingingAndCall.dart';
import 'package:masmas_project/screens/1.33.Payments.dart';
import 'package:masmas_project/screens/1.34.EditPayments.dart';
import 'package:masmas_project/screens/1.35.EditLocation.dart';
import 'package:masmas_project/screens/1.7.Payment_Method.dart';
import 'package:masmas_project/screens/1.6.Signup_Process.dart';
import 'package:masmas_project/screens/1.8.Upload_Photo.dart';
import 'package:masmas_project/screens/1.9.UploadPreview.dart';
import 'package:masmas_project/screens/1.10.SetLocation.dart';

void main() async{
  runApp(const MyApp());
  await ScreenUtil.ensureScreenSize();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const Home(),
    );
  }
}
