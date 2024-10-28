import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_online_app/json/constant.dart';
import 'package:shoping_online_app/page/account_page.dart';
import 'package:shoping_online_app/page/home_page.dart';
import 'package:shoping_online_app/page/store_page.dart';
import 'package:shoping_online_app/provider/root_provider.dart';
import 'package:shoping_online_app/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RootProvider>(context);
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getFooter(context),
      appBar: getAppBar(provider.activeTab),
      body: getBody(provider.activeTab),
    );
  }

  Widget getBody(int activeTab){
    return IndexedStack(
      index: activeTab,
       children: [
        HomePage(),
         StorePage(),
         AccountPage(),
         Center(
           child: Text("cart"),
         ), Center(
           child: Text("more"),
         )
       ],
    );
  }
  PreferredSizeWidget? getAppBar(int activeTab) {
    switch (activeTab) {
      case 0:
        return  null;
      case 1:
        return null;
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Center(
            child: Text(
              "ACCOUNT",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        );
        break;
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Center(
            child: Text(
              "CART",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        );
      case 4:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Center(
            child: Text(
              "MORE",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        );
        break;
      default:
        null;
    }
  }
  Widget getFooter(BuildContext contect) {
    final provider =Provider.of<RootProvider>(context,listen: false,);
    return Container(

      height: 60,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.3)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List<Widget>.generate(
              itemsTab.length,
              (index) => IconButton(
                    icon: Icon(
                      itemsTab[index]['icon'],
                      size: itemsTab[index]['size'],
                    ),
                    color: provider.activeTab == index ? accent : black,
                    onPressed: () {
                      provider.updateTab( index);
                    },
                  )),
        ),
      ),
    );
  }

}
