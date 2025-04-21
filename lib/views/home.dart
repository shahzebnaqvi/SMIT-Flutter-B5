import 'package:flutter/material.dart';
import 'package:smit_flutter/components/menu_drawer_widget.dart';
import 'package:smit_flutter/components/message_tile.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List menuItems = [
    {
      "menu_icon": Icons.home,
      "menu_text": "Home",
      "menu_func": () {
        print('this is home');
      },
    },
    {
      "menu_icon": Icons.shop,
      "menu_text": "Shop",
      "menu_func": () {
        print('this is shop');
      },
    },

    {
      "menu_icon": Icons.person,
      "menu_text": "Profile",
      "menu_func": () {
        print('this is Profile');
      },
    },
  ];
  List bodyWidget = [
    Container(color: Colors.red, child: Center(child: Text("Home"))),
    Container(color: Colors.yellow, child: Center(child: Text("Shop"))),
    Container(color: Colors.lightGreen, child: Center(child: Text("Profile"))),
  ];
  int bottomNavInd = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,

                    backgroundImage: NetworkImage(
                      "https://media.licdn.com/dms/image/v2/D4D03AQHNDgUi_Swa_Q/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1712846449265?e=2147483647&v=beta&t=mwYn-GgZ0L-Zz5OODPfk-6T5vksvnBOZyQdGgb_t9DA",
                    ),
                  ),
                  Text("Shahzeb Naqvi"),
                ],
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return MenuDrawerWidget(
                  menuIcon: menuItems[index]["menu_icon"],
                  menuTitle: menuItems[index]["menu_text"],
                  menufunc: menuItems[index]["menu_func"],
                );
              },
            ),
          ],
        ),
      ),
      body: bodyWidget[bottomNavInd],
      appBar: AppBar(),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Wrap(
      //         spacing: 23.33,
      //         children: [
      //           Container(color: Colors.yellow, width: 200, height: 29),
      //           Container(color: Colors.red, width: 200, height: 29),
      //           Container(color: Colors.green, width: 200, height: 29),
      //           Container(color: Colors.blue, width: 200, height: 29),
      //           Container(color: Colors.purple, width: 200, height: 29),
      //         ],
      //       ),
      //       Stack(
      //         alignment: Alignment.bottomRight,
      //         children: [
      //           Container(color: Colors.yellow, width: 200, height: 200),
      //           Container(color: Colors.red, width: 100, height: 100),
      //           Container(color: Colors.green, width: 50, height: 100),
      //         ],
      //       ),
      //       SizedBox(height: 50),
      //       Stack(
      //         children: [
      //           Container(color: Colors.yellow, width: 200, height: 200),
      //           Positioned(
      //             bottom: 0,
      //             left: 0,
      //             child: Container(color: Colors.red, width: 100, height: 100),
      //           ),
      //           Positioned(
      //             top: 0,
      //             right: 10,
      //             child: Container(color: Colors.green, width: 50, height: 100),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),

      // bottomNavigationBar: BottomAppBar(
      //   elevation: 0,
      //   color: Colors.transparent,
      //   child: Container(
      //     padding: EdgeInsets.all(10),
      //     decoration: BoxDecoration(          color: Colors.blue,

      //       borderRadius: BorderRadius.all(Radius.circular(10)),
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Icon(Icons.home),
      //         Icon(Icons.home),
      //         Icon(Icons.home),
      //         Icon(Icons.home),
      //       ],
      //     ),
      // ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavInd,
        onTap: (value) {
          setState(() {
            bottomNavInd = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
            activeIcon: Icon(Icons.hail),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
