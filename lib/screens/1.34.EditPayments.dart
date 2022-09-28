import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class EditPayments extends StatelessWidget {
  const EditPayments({Key? key}) : super(key: key);

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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                },
                child: SvgPicture.asset(MyImages.icon_back),
              ),
              const SizedBox(height: 24),
              Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Payment",
                    style: MyStyles.bentonsansbold400.copyWith(fontSize: 25),
                  )),
              const SizedBox(height: 20),
              Container(
                height: 73,
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.4,
                      offset: Offset(0.4, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 5,top: 5),
                            height: 23,
                            width: 86,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(MyImages.image_paypal),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 100,top: 18),
                            height: 14,
                            width: 144,
                            child: Text("2121 6352 8465 ****",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: Colors.black),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 73,
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.4,
                      offset: Offset(0.4, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 5,top: 12),
                            height: 23,
                            width: 86,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(MyImages.image_visa),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 100,top: 18),
                            height: 14,
                            width: 144,
                            child: Text("2121 6352 8465 ****",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: Color.fromARGB(255, 208, 201, 201)),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                            SizedBox(height: 20),
              Container(
                height: 73,
                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.4,
                      offset: Offset(0.4, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 5,top: 12),
                            height: 23,
                            width: 86,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(MyImages.image_payoneer),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 100,top: 18),
                            height: 14,
                            width: 144,
                            child: Text("2121 6352 8465 ****",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: Color.fromARGB(255, 208, 201, 201)),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}