import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoping_online_app/json/constant.dart';
import 'package:shoping_online_app/theme/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Divider(
          color: grey.withOpacity(0.4),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 12),
          child: Column(
              children: List.generate(
                  cartList.length,
                  (index) => Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 160,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image:
                                          NetworkImage(cartList[index]['img']),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartList[index]['name'],
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        color: black),
                                  ),
                                  Text(
                                    cartList[index]['ref'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: black.withOpacity(0.9)),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    cartList[index]['size'],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Text(
                                        cartList[index]['price'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1,
                                                color: black.withOpacity(0.5))),
                                        child: Icon(
                                          FontAwesomeIcons.minus,
                                          size: 13,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1,
                                                color: black.withOpacity(0.5))),
                                        child: Icon(
                                          Icons.add,
                                          size: 15,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ))),
        ),
        Divider(
          color: grey.withOpacity(0.2),
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Text(
            'Do you have a promotional code',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
        SizedBox(height: 4),
        Divider(
          color: grey.withOpacity(0.2),
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery",
                style: TextStyle(fontSize: 17),
              ),
              Text("Standard - Free", style: TextStyle(fontSize: 17)),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: 18,right: 18,top: 5),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: black,
          ),
          child: Center(
            child: Text(
              style: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
              ),
              "BUY FOR \$100",
            ),
          ),
        )
      ],
    );
  }
}
