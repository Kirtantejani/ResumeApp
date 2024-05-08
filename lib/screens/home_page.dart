import 'package:flutter/material.dart';
import 'package:resumeapp/screens/Page1/page1_main.dart';
import 'package:resumeapp/screens/Page2/Page2_main.dart';

import '../common/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> Screens = [Page1(), Page2()];
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
              color: index == 0
                  ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                  : Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
            ),
            label: 'Resume',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
              color: index == 1
                  ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                  : Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
            ),
            label: 'TEMPLATE',
          ),
        ],
      ),
    );
  }
}
