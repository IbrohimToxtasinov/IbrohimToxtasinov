import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmas_project/utils/colors.dart';
import 'package:masmas_project/utils/images.dart';
import 'package:masmas_project/utils/styles.dart';

class ExploreMenu extends StatefulWidget {
  const ExploreMenu({Key? key}) : super(key: key);

  @override
  State<ExploreMenu> createState() => _ExploreMenu();
}
 bool isDark = false;
class _ExploreMenu extends State<ExploreMenu> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark
        ? MyColors.C_0D0D0D
        : MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20,top: 50),
              child:  Text(
                "Popular Menu",
                style: MyStyles.bentonsansbold400.copyWith(fontSize: 25),
              ),
            ),
            SizedBox(height: 50,),
            Expanded(
                child: Container(
                  height: 184,
                  child: Column(
                      children: [
                        buildMenuItem("Herbal Pancake", "Warung Herbal",MyImages.image_menu1,"\$7"),
                        SizedBox(height: 20),
                        buildMenuItem("Fruit Salad", "Wijie Resto",MyImages.image_menu2,"\$5"),
                        SizedBox(height: 20),
                        buildMenuItem("Green Noddle", "Noodle Home",MyImages.image_menu3,"\$15"),
                      ],
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}

Widget buildMenuItem(String name, String name2, String imagename, String price ) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: isDark ?Colors.grey.withOpacity(0.2) : Colors.black.withOpacity(0.05)),
        ],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Image.asset(
              imagename,
              width: 64,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 18),
          Column(
            children: [
              Text(name),
              SizedBox(height: 4),
              Text(
                name2,
                style: MyStyles.bentonsansregular200.copyWith(color: Colors.grey),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  price,
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
