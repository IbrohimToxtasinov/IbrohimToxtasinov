import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class EditLocation extends StatelessWidget {
  const EditLocation({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Shipping",
                    style: MyStyles.bentonsansbold400.copyWith(fontSize: 25),
                )),
              const SizedBox(height: 20),
              Container(
                height: 107,
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
                        Container(
                          margin: const EdgeInsets.only(left: 5,top: 5),
                          height: 14,
                          width: 104,
                          child: Text("Order Location",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: Colors.grey),),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 300,top: 5),
                          height: 14,
                          width: 3,
                          child: Text("",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: MyColors.C_53E88B,),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12,top: 12,),
                          height: 33,
                          width: 33,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(MyImages.image_location),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15,top: 24),
                          height: 40,
                          width: 250,
                          child: Text("8502 Preston Rd. Inglewood, \nMaine 98380",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14,color: Colors.black,),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 141,
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
                        Container(
                          margin: const EdgeInsets.only(left: 5,top: 5),
                          height: 14,
                          width: 104,
                          child: Text("Deliver To",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: Colors.grey),),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 300,top: 5),
                          height: 14,
                          width: 3,
                          child: Text("",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: MyColors.C_53E88B,),),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12,top: 12,),
                          height: 33,
                          width: 33,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(MyImages.image_location),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15,top: 24),
                          height: 40,
                          width: 250,
                          child: Text("4517 Washington Ave. Manchester, \nKentucky 39495",style: MyStyles.bentonsansmedium400.copyWith(fontSize: 14,color: Colors.black,),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 60,top: 5),
                          height: 14,
                          width: 104,
                          child: Text("set location",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: MyColors.C_15BE77),),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 200,top: 5),
                          height: 14,
                          width: 3,
                          child: Text("",style: MyStyles.bentonsansregular200.copyWith(fontSize: 14,color: MyColors.C_53E88B,),),
                        ),
                      ]
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