import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class CallRingingAndCall extends StatefulWidget {
  const CallRingingAndCall({Key? key}) : super(key: key);

  @override
  State<CallRingingAndCall> createState() => _CallRingingAndCallState();
}

class _CallRingingAndCallState extends State<CallRingingAndCall> {
  bool isMuted = false; 
  String words = "Ringing...";
  String Ikon = MyImages.icon_volume; 
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.image_bg2),
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
                      height: 161.h,
                      width: 180.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(MyImages.image_brat),
                          fit: BoxFit.cover),
                      )
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Container(
                    height: 72.h,
                    width: 170.w,
                    child: Column(
                      children: [
                        Text("Richard Lewis",style: MyStyles.bentonsansbold400.copyWith(fontSize: 25),),
                        SizedBox(height: 10.h),
                        Text(words,style: MyStyles.bentonsansregular200.copyWith(fontSize: 19),),
                      ],
                    ),
                  ),
                  SizedBox(height: 183.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState((){
                            isMuted =! isMuted;
                            if(isMuted){
                              Ikon = MyImages.icon_no_volume; 
                            }
                            else {
                              Ikon = MyImages.icon_volume;
                            }
                          });
                        },
                        child: Container(
                        height: 78.h,
                        width: 78.w,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(300.r)),
                          color: Color.fromARGB(255, 209, 226, 210),
                        ),
                        
                          child: Center(child: SvgPicture.asset(Ikon,color: MyColors.C_53E88B,)),
                      ),
                    ),
                    SizedBox(width: 20.w,),
                    InkWell(
                        onTap: () {
                          setState((){
                            isMuted =! isMuted;
                            if(isMuted){
                              words = "15.23 Min";
                            }
                            else {
                              words = "Ringing...";
                            }
                          });
                        },
                        child: Container(
                          height: 78.h,
                          width: 78.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(300.r)),
                            color: Colors.red,
                          ),
                          child: Center(child: SvgPicture.asset(MyImages.icon_call_back),
                        ),
                      ),
                    ),
                  ],),
                  SizedBox(height: 65.h),
                ],
              )),
          ],),
        ),
      ),
    );
  }
}