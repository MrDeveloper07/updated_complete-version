import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:project/commentScreen.dart';
import 'package:project/likePage.dart';
import 'package:project/navBarSetting.dart';
import 'package:project/setting.dart';

import 'package:provider/provider.dart';
import 'theme_provider.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Drawer(
      child: Container(
        color: themeProvider.isDarkMode
            ? Colors.grey[800]
            : const Color.fromARGB(255, 39, 91, 41),
        padding: EdgeInsets.only(top: 50, bottom: 30, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              height: 85,
              width: 280,
              decoration: BoxDecoration(
                color: themeProvider.isDarkMode
                    ? Color.fromARGB(255, 49, 52, 50)
                    : Color.fromARGB(255, 36, 86, 53),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 211, 223, 218)
                        .withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 188, 188, 188),
                            width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        height: 45,
                        "assets/profileimg.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nadia Santini",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 193, 192, 192),
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                        Text(
                          "Chef",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      height: 380,
                      width: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brows Menu's",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 210, 209, 209),
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfileScreen()),
                              );
                            },
                            child: Container(
                              height: 310,
                              width: 280,
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: themeProvider.isDarkMode
                                          ? Color.fromARGB(255, 49, 52, 50)
                                          : Color.fromARGB(255, 36, 86, 53),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: themeProvider.isDarkMode
                                              ? Color.fromARGB(
                                                  255, 98, 104, 100)
                                              : Color.fromARGB(255, 8, 130, 79)
                                                  .withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/profile-svgrepo-com.svg",
                                          color: Color.fromARGB(
                                              255, 211, 211, 211),
                                        ),
                                        // Icon(
                                        //   Icons.settings,
                                        //   color: Color.fromARGB(255, 211, 211, 211),
                                        //   size: 30,
                                        // ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Account & Profile",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 211, 211, 211),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              NotificationSettingsPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      width: 250,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: themeProvider.isDarkMode
                                            ? Color.fromARGB(255, 49, 52, 50)
                                            : Color.fromARGB(255, 36, 86, 53),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: themeProvider.isDarkMode
                                                ? Color.fromARGB(
                                                    255, 98, 104, 100)
                                                : Color.fromARGB(
                                                        255, 8, 130, 79)
                                                    .withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.notifications,
                                            color: Color.fromARGB(
                                                255, 211, 211, 211),
                                            size: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Notifications",
                                            style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 211, 211, 211),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TermsAndConditionsScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      width: 250,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: themeProvider.isDarkMode
                                            ? Color.fromARGB(255, 49, 52, 50)
                                            : Color.fromARGB(255, 36, 86, 53),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: themeProvider.isDarkMode
                                                ? Color.fromARGB(
                                                    255, 98, 104, 100)
                                                : Color.fromARGB(
                                                        255, 8, 130, 79)
                                                    .withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/signing-the-contract-svgrepo-com.svg",
                                            height: 26,
                                            color: Color.fromARGB(
                                                255, 211, 211, 211),
                                          ),
                                          // Icon(
                                          //   Icons.settings,
                                          //   color: Color.fromARGB(255, 211, 211, 211),
                                          //   size: 30,
                                          // ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Terms & Conditions",
                                            style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 211, 211, 211),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              HelpAndSupportScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      width: 250,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: themeProvider.isDarkMode
                                            ? Color.fromARGB(255, 49, 52, 50)
                                            : Color.fromARGB(255, 36, 86, 53),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: themeProvider.isDarkMode
                                                ? Color.fromARGB(
                                                    255, 98, 104, 100)
                                                : Color.fromARGB(
                                                        255, 8, 130, 79)
                                                    .withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/support-svgrepo-com.svg",
                                            height: 28,
                                            color: Color.fromARGB(
                                                255, 211, 211, 211),
                                          ),
                                          // Icon(
                                          //   Icons.settings,
                                          //   color: Color.fromARGB(255, 211, 211, 211),
                                          //   size: 30,
                                          // ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Help & Support",
                                            style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 211, 211, 211),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              SettingsScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      width: 250,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: themeProvider.isDarkMode
                                            ? Color.fromARGB(255, 49, 52, 50)
                                            : Color.fromARGB(255, 36, 86, 53),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: themeProvider.isDarkMode
                                                ? Color.fromARGB(
                                                    255, 98, 104, 100)
                                                : Color.fromARGB(
                                                        255, 8, 130, 79)
                                                    .withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.settings,
                                            color: Color.fromARGB(
                                                255, 211, 211, 211),
                                            size: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Settings",
                                            style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 211, 211, 211),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color.fromARGB(255, 149, 148, 148),
                      height: 20,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      width: 280,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Activities",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 210, 209, 209),
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 280,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Likepage()),
                                    );
                                  },
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: themeProvider.isDarkMode
                                          ? Color.fromARGB(255, 49, 52, 50)
                                          : Color.fromARGB(255, 36, 86, 53),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: themeProvider.isDarkMode
                                              ? Color.fromARGB(
                                                  255, 98, 104, 100)
                                              : Color.fromARGB(255, 8, 130, 79)
                                                  .withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite,
                                          color: Color.fromARGB(
                                              255, 211, 211, 211),
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Likes",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 211, 211, 211),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CommentScreen()));
                                  },
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: themeProvider.isDarkMode
                                          ? Color.fromARGB(255, 49, 52, 50)
                                          : Color.fromARGB(255, 36, 86, 53),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: themeProvider.isDarkMode
                                              ? Color.fromARGB(
                                                  255, 98, 104, 100)
                                              : Color.fromARGB(255, 8, 130, 79)
                                                  .withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.message,
                                          color: Color.fromARGB(
                                              255, 211, 211, 211),
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Comments",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 211, 211, 211),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      height: 90,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/moon-stars-svgrepo-com.svg",
                                  color: Color.fromARGB(255, 211, 211, 211),
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Dark Mode",
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 211, 211, 211),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FlutterSwitch(
                                  width: 58.0,
                                  height: 28.0,
                                  valueFontSize: 13.0,
                                  toggleSize: 20.0,
                                  value: themeProvider.isDarkMode,
                                  borderRadius: 30.0,
                                  padding: 4.0,
                                  showOnOff: true,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                      themeProvider.toggleTheme();
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: const Color.fromARGB(255, 149, 148, 148),
                            height: 20,
                            thickness: 1,
                            indent: 5,
                            endIndent: 5,
                          ),
                          Container(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/logout-svgrepo-com.svg",
                                  color: Color.fromARGB(255, 211, 211, 211),
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Logout",
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 211, 211, 211),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
