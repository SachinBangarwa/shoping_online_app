import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoping_online_app/json/constant.dart';
import 'package:shoping_online_app/theme/colors.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Phnom Penh',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.mapMarkerAlt,
                  size: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find all\nStores here",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: grey.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 6, bottom: 2),
                      child: TextField(
                        cursorColor: primary,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search",
                            hintStyle: TextStyle(fontSize: 18),
                            suffixIcon: Icon(
                              FontAwesomeIcons.search,
                              size: 16,
                              color: black.withOpacity(0.9),
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: black,
                    ),
                    child: Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: white,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Divider(
            color: grey.withOpacity(0.9),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "All Store",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w400, color: black),
            ),
          ),
          SizedBox(height: 20),
          Column(
              children: List.generate(storeList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(
                            image: NetworkImage(storeList[index]['img']),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: black.withOpacity(0.35),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 20, right: 30, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              width: 67,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: white),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4,right: 6,top: 4,bottom: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      storeList[index]['open'] == 1
                                          ? "OPEN"
                                          : 'CLOSE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: storeList[index]['open'] == 0? Colors.redAccent:Colors.green),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.mapMarkerAlt,size: 20,color: white,),
                            SizedBox(width: 10,),
                            Text(storeList[index]['name'],style: TextStyle(color: white),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }))
        ],
      ),
    );
  }
}
