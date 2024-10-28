import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoping_online_app/json/constant.dart';
import 'package:shoping_online_app/main.dart';
import 'package:shoping_online_app/theme/colors.dart';
import 'package:shoping_online_app/widgets/CustomeCarouselHomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            Container(
              height: 440,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(homeImg), fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.only(top: 35, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 26,
                      color: white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.search,
                      size: 22,
                      color: white,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 370,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Winter Collectioon",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: white.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: white.withOpacity(0.8),
                        size: 16,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: black,
                ),
              ),
              Row(
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                    size: 12,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List<Widget>.generate(
                categories.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  categories[index]["imgUrl"].toString()),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            categories[index]['title'].toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    )),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommmended for you",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: black,
                ),
              ),
              Row(
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                    size: 12,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      recommends.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(recommends[index]
                                                ["imgUrl"]
                                            .toString()),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        recommends[index]["title"].toString(),
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: black.withOpacity(0.6),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                       '\$ '+ recommends[index]["price"].toString(),
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: black.withOpacity(0.4),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))),
            )),
        SizedBox(height: 20),
        CustomeCarouselHomePage(items:slider,),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent viewed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: black,
                ),
              ),
              Row(
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: grey,
                    size: 12,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      recently.length,
                          (index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 160,
                              width: 120,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(recently[index]
                                    ["imgUrl"]
                                        .toString()),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Container(
                              width: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    recently[index]["title"].toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: black.withOpacity(0.6),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '\$ '+ recently[index]["price"].toString(),
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: black.withOpacity(0.4),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))),
            )),
        SizedBox(height: 80),

      ],
    );
  }
}
