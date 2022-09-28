import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/screens/1.17.Explore_Restaruant.dart';
import 'package:masmas_project/screens/1.18.Explore_Menu.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(MyImages.image_bg))),
          child: Column(
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find Your\nFavorite Food",
                    style: MyStyles.bentonsansbold400
                        .copyWith(fontSize: 32, height: 1.2),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: 45,
                    height: 45,
                    child: Image.asset(MyImages.image_notification),
                  )
                ],
              ),
              SizedBox(height: 44),
              Row(children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColors.C_F9A84D.withOpacity(0.2)),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: MyColors.C_F9A84D,
                          ),
                          hintText: "What do you want to order?",
                          hintStyle: TextStyle(color: MyColors.C_F9A84D),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  width: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: MyColors.C_F9A84D.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset(MyImages.icon_settings),
                )
              ]),
              const SizedBox(height: 24),
              Container(
                height: 150,
                width: double.infinity,
                padding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(MyImages.image_bg4),
                    fit: BoxFit.cover,
                  ),
                  color: MyColors.C_53E88B,
                  gradient: LinearGradient(
                    colors: [
                      MyColors.C_53E88B,
                      MyColors.C_15BE77,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.4,
                      offset: Offset(0.4, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Stack(
                  children: [
                    Image.asset(MyImages.image_ice_cream),
                    Positioned(
                      left: 160,
                      top: 25,
                      child: Text("Special Deal For\nOctober",style: MyStyles.bentonsansbold400.copyWith(fontSize: 17,color: MyColors.C_FEFEFF))
                    ),
                    Positioned(
                      bottom: 30,
                      right: 100,
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        splashColor: Colors.red,
                        child: Container(
                          width: 92,
                          height: 42,
                          decoration: const BoxDecoration(
                            color: MyColors.C_FEFEFF,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                          child: Center(
                            child: Text("Buy now",style: MyStyles.bentonsansbold400.copyWith(color: MyColors.C_53E88B, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Nearest Restaurant",
                    style: MyStyles.bentonsansbold400,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                    ),
                    clipBehavior: Clip.none,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => ExploreRestaruant())));
                    },
                    child: Text(
                      "View More",
                      style: MyStyles.bentonsansregular200
                          .copyWith(color: MyColors.C_F9A84D),
                    )
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildNearestRestaurantItem(MyImages.image_vegan, "Vegan Resto", "12 Mins"),
                      SizedBox(width: 15),
                      buildNearestRestaurantItem(MyImages.image_healthy, "Healthy Food", "8 Mins"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Menu",
                    style: MyStyles.bentonsansbold400,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                    ),
                    clipBehavior: Clip.none,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => ExploreMenu())));
                    },
                    child: Text(
                      "View More",
                      style: MyStyles.bentonsansregular200
                          .copyWith(color: MyColors.C_F9A84D),
                    )
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  height: 184,
                  child: Column(
                      children: [
                        buildMenuItem()
                      ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildNearestRestaurantItem(String imagename, String name, String price) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      width: 150,
      height: 160,
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


Widget buildMenuItem() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05)),
        ],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Image.asset(
              MyImages.image_menu3,
              width: 64,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 18),
          Column(
            children: [
              Text("Green Noddle"),
              SizedBox(height: 4),
              Text(
                "Noodle Home",
                style: MyStyles.bentonsansregular200.copyWith(color: Colors.grey),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "\$15",
                  style: MyStyles.bentonsansbold400
                      .copyWith(color: MyColors.C_F9A84D, fontSize: 28),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

