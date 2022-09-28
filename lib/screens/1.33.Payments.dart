import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(MyImages.image_bg),
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.all(20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                },
                child: SvgPicture.asset(MyImages.icon_back),
              ),
              SizedBox(height: 24.h),
              Padding(
                  padding: EdgeInsets.only(left: 5).r,
                  child: Text(
                    "Confirm Order",
                    style: MyStyles.bentonsansbold400.copyWith(fontSize: 25.sp),
                  )),
              SizedBox(height: 20.h),
              Container(
                height: 120.h,
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5).r,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.4,
                      offset: Offset(0.4, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                ),
                child : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5,top: 5).r,
                          height: 14.h,
                          width: 68.w,
                          child: Text("Deliver To",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14.sp,color: Colors.grey),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 190,top: 5).r,
                          height: 14.h,
                          width: 38.w,
                          child: Text("Edit",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14.sp,color: MyColors.C_53E88B,),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 35,).r,
                          height: 35.h,
                          width: 38.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(MyImages.image_location),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 45).r,
                          height: 40.h,
                          width: 268.w,
                          
                          child: Text("4517 Washington Ave. Manchester,\nKentucky 39495",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14.sp,color: Colors.black,),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 120.h,
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5).r,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.4,
                      offset: Offset(0.4, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
                child : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5,top: 5).r,
                          height: 14.h,
                          width: 118.w,
                          child: Text("Payment Meytod",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14.sp,color: Colors.grey),),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5).r,
                          height: 14.h,
                          width: 33.w,
                          child: Text("Edit",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14.sp,color: MyColors.C_53E88B,),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40).r,
                          height: 23.h,
                          width: 95.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(MyImages.image_paypal),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 45,left: 19).r,
                          height: 40.h,
                          width: 196.w,
                          child: Text("\n        2121 6352 8465 ****",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14.sp,color: Colors.black,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 73.h),
              Container(
                height: 206.h,
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 24).r,
                decoration:  BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(MyImages.image_bg3),
                    fit: BoxFit.cover,
                  ),
                  color: MyColors.C_53E88B,
                  gradient: const LinearGradient(
                  colors: [
                    MyColors.C_53E88B,
                    MyColors.C_15BE77,
                  ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.4,
                      offset: Offset(0.4, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                ),
                child: Column(children:  [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      margin: EdgeInsets.only(top: 5).r,
                      width: 75.w,
                      height: 14.h,
                      child: Text("Sub - Total",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14.sp,color: MyColors.C_FEFEFF),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5).r,
                      width: 75.w,
                      height: 14.h,
                      child: Center(child: Text("120 \$",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14.sp,color: MyColors.C_FEFEFF),)),
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      margin: EdgeInsets.only(top: 5).r,
                      width: 90.w,
                      height: 14.h,
                      child: Text("Delivery Charge",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14.sp,color: MyColors.C_FEFEFF),),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5).r,
                      width: 75.w,
                      height: 14.h,
                      child: Center(child: Text("10 \$",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14.sp,color: MyColors.C_FEFEFF),)),
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5).r,
                      width: 90.w,
                      height: 14.h,
                      child: Text("Discount",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14.sp,color: MyColors.C_FEFEFF),),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5).r,
                      width: 75.w,
                      height: 14.h,
                      child: Center(child: Text("20 \$",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14.sp,color: MyColors.C_FEFEFF),)),
                    ),
                  ]),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20).r,
                      width: 90.w,
                      height: 14.h,
                      child: Text("Total",style: MyStyles.bentonsansbold400.copyWith(fontSize: 18.sp,color: MyColors.C_FEFEFF),),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20).r,
                      width: 75.w,
                      height: 14.h,
                      child: Center(child: Text("150 \$",style: MyStyles.bentonsansbold400.copyWith(fontSize: 18.sp,color: MyColors.C_FEFEFF),)),
                    ),
                  ]),
                  SizedBox(height: 22.h),
                  Container(
                    height: 63.h,
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 0.4,
                          offset: Offset(0.4, 0.4),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    ),
                    child: Center(
                      child: Text(
                        "Place My Order",
                        style: MyStyles.bentonsansbold400.copyWith(fontSize: 14.sp,color: MyColors.C_15BE77),
                      ),
                    ),
                  ),
                ]),
              ),  
            ],
          ),
        ),
      ),
    );
  }
}