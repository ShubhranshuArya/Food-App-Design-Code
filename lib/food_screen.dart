import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1_food_app_design/constants/fitness__app_icons.dart';
import 'package:project1_food_app_design/constants/food_list.dart';
import 'package:project1_food_app_design/constants/food_model.dart';
import 'package:project1_food_app_design/constants/my_flutter_app_icons.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Container(
              width: size.width,
              height: size.height * 0.06,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 48,
                      color: Color(0xFF262626).withOpacity(0.8),
                    ),
                    Container(
                      width: size.width * 0.56,
                      height: size.height * 0.048,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5E5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'What are you looking for?',
                              style: GoogleFonts.poppins(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            width: size.width * 0.16,
                            height: size.height * 0.048,
                            decoration: BoxDecoration(
                              color: Color(0xFF09B44D),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Icon(
                                MyFlutterApp.search,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: tap_list.length,
                  itemBuilder: (_, idx) {
                    return Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                        padding: EdgeInsets.all(0),
                        width: size.width * 0.34,
                        decoration: BoxDecoration(
                          color: Color(0xFF09B44D).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              tap_list[idx].icon,
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Text(
                              tap_list[idx].name,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            customListView(
              contHeight: size.height * 0.3,
              contWidth: size.width,
              headerText: 'Popular Food',
              viewHeight: size.height * 0.04,
              viewWidth: size.width * 0.16,
              listContHeight: size.height * 0.2,
              innerContWidth: size.width * 0.34,
              list: popular_food,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            customListView(
              contHeight: size.height * 0.3,
              contWidth: size.width,
              headerText: 'Special Food',
              viewHeight: size.height * 0.04,
              viewWidth: size.width * 0.16,
              listContHeight: size.height * 0.2,
              innerContWidth: size.width * 0.34,
              list: special_food,
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            Container(
              width: size.width,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF262626).withOpacity(0.25),
                        blurRadius: 12)
                  ]),
              child: Row(
                children: [
                  customNavItem(
                    icon: Fitness_App.home,
                    text: 'Home',
                  ),
                  customNavItem(
                    icon: Fitness_App.heart,
                    text: 'Favourite',
                  ),
                  customNavItem(
                    icon: Fitness_App.shopping_cart,
                    text: 'Cart',
                  ),
                  customNavItem(
                    icon: Fitness_App.user,
                    text: 'Profile',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customListView({
    @required double contHeight,
    @required double contWidth,
    @required String headerText,
    @required double viewHeight,
    @required double viewWidth,
    @required double listContHeight,
    @required double innerContWidth,
    @required List<FoodModel> list,
  }) {
    return Container(
      width: contWidth,
      height: contHeight,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  headerText,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: viewHeight,
                  width: viewWidth,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xFF09B44D),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      'View All',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: Color(0xFF09B44D),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 16,
            ),
            child: Container(
              width: contWidth,
              height: listContHeight,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (_, idx) {
                  return Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: innerContWidth,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(list[idx].image),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 8,
                          top: 20,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (list == special_food)
                                ? Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(16),
                                        ),
                                        color: Colors.green,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '-${list[idx].discount}%',
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      list[idx].name,
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    list[idx].description,
                                    style: GoogleFonts.poppins(
                                      fontSize: 6,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 2,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$ ${list[idx].price}',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Fitness_App.star,
                                              size: 10, color: Colors.white),
                                          Text(
                                            '${list[idx].rating}',
                                            style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
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
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customNavItem({
    IconData icon,
    String text,
  }) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Color(0xFF262626),
              size: 26,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
