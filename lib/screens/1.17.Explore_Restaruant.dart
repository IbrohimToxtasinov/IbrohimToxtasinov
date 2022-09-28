import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class ExploreRestaruant extends StatefulWidget {
  const ExploreRestaruant({Key? key}) : super(key: key);

  @override
  State<ExploreRestaruant> createState() => _ExploreRestaruantState();
}

class _ExploreRestaruantState extends State<ExploreRestaruant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20,top: 50),
              child:  Text(
                "Popular Restaurant",
                style: MyStyles.bentonsansbold400.copyWith(fontSize: 25),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildNearestRestaurantItem(MyImages.image_vegan, "Vegan Resto", "12 Mins"),
                        SizedBox(width: 15),
                        buildNearestRestaurantItem(MyImages.image_healthy, "Healthy Food", "8 Mins"),
                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildNearestRestaurantItem(MyImages.image_good_food, "Good Food", "12 Mins"),
                        SizedBox(width: 15),
                        buildNearestRestaurantItem(MyImages.image_smart, "Smart Resto", "8 Mins"),
                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildNearestRestaurantItem(MyImages.image_vegan_resto, "Vegan Resto", "15 Mins"),
                        SizedBox(width: 15),
                        buildNearestRestaurantItem(MyImages.image_healthy_food, "Healthy Food", "10 Mins"),
                      ],
                    ),
                  ],
                ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget buildNearestRestaurantItem(String imagename, String name, String price) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05)),
        ],
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 90,
                height: 98,
                child: Image.asset(imagename))),
          Text(
            name,
            style: MyStyles.bentonsansbold400,
          ),
          SizedBox(height: 8),
          Text(price,
              style: MyStyles.bentonsansregular200.copyWith(color: Colors.grey)),
        ],
      ),
    );
  }