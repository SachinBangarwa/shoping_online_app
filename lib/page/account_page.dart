import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoping_online_app/json/constant.dart';
import 'package:shoping_online_app/theme/colors.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(profileUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daniel',
                    style: TextStyle(
                      fontSize: 25,
                      color: black,
                    ),
                  ),
                  Text(
                    'Member since 2019',
                    style: TextStyle(
                      fontSize: 14,
                      color: black,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(11),
                      child: Text(
                        'EDITE ACCOUNT ',
                        style: TextStyle(
                          fontSize: 12,
                          color: white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(FontAwesomeIcons.box,size: 17),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.mapMarkerAlt,size: 17),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "My Address",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(FontAwesomeIcons.cog,size: 17,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Divider(
          thickness: 1,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15,right: 15,top: 5),
          child: Column(
            children: List.generate(accountList.length, (index) {
              return Column(
                children: [
                  ListTile(
                    leading: Text(
                      accountList[index],
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_sharp,size: 22,),
                  ),
                  Divider(color: grey.withOpacity(0.40),),
                ],
              );
            }),
          ),
        ),
        SizedBox(height: 50,),
      ],
    );
  }
}
