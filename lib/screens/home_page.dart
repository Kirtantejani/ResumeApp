import 'package:flutter/material.dart';
import 'package:resumeapp/screens/Page1/page1_main.dart';
import 'package:resumeapp/screens/Page2/Page2_main.dart';
import 'package:resumeapp/screens/Page3/Page3_main.dart';
import 'package:resumeapp/screens/Page4/page4_main.dart';

import '../common/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> Screens = [Page1(), Page2(), Page3(), Page4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[index],
      bottomNavigationBar: BottomNavigationBar(
        // labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        elevation: 0,
        selectedItemColor: black,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: navigationIconColor1,
        // unselectedLabelStyle:
        // GoogleFonts.poppins(color: black, fontWeight: FontWeight.w600),
        // selectedLabelStyle:
        // GoogleFonts.poppins(color: black, fontWeight: FontWeight.w600),
        onTap: (index) => setState(() {
          this.index = index;
          // bottomNavigationController.currentPage.value = index;
        }),
        currentIndex: index,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.25),

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: index == 0 ? black : navigationIconColor1,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/earning_icon.png"),
              color: index == 1 ? black : navigationIconColor1,
            ),
            label: 'Earning',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/profile_icon.png"),
              color: index == 2 ? black : navigationIconColor1,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: index == 3 ? black : navigationIconColor1,
            ),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
