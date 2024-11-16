import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/theme_provider.dart';
import 'package:provider/provider.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 40),
            child: Text(
              "LeaderBoard",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
            )),
        Container(
          alignment: AlignmentDirectional.bottomCenter,
          height: 250,
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 200,
                width: 105,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          top: -4,
                          right: 12,
                          child: Transform.rotate(
                            angle: 32 * 3.141592653589793 / 180,
                            child: SizedBox(
                              width: 38,
                              height: 38,
                              child: Image.asset(
                                "assets/crown.png",
                                height: 24,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        // Avatar image
                        Container(
                          height: 95,
                          child: Center(
                            child: Container(
                              height: 70,
                              width: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: Image.network(
                                "https://img.freepik.com/premium-photo/portrait-handsome-anime-boy-avatar-computer-graphic-background-2d-illustration_67092-1984.jpg?w=2000",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          "2",
                          style: GoogleFonts.merriweather(
                            fontSize: 65,
                            fontWeight: FontWeight.w900,
                            color: themeProvider.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 245,
                width: 105,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          top: -4,
                          right: 12,
                          child: Transform.rotate(
                            angle: 32 * 3.141592653589793 / 180,
                            child: SizedBox(
                              width: 38,
                              height: 38,
                              child: Image.asset(
                                "assets/crown.png",
                                height: 24,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        // Avatar image
                        Container(
                          height: 95,
                          child: Center(
                            child: Container(
                              height: 70,
                              width: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: Image.network(
                                "https://play-lh.googleusercontent.com/7Ak4Ye7wNUtheIvSKnVgGL_OIZWjGPZNV6TP_3XLxHC-sDHLSE45aDg41dFNmL5COA",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      width: 105,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          "1",
                          style: GoogleFonts.merriweather(
                            fontSize: 75,
                            fontWeight: FontWeight.w900,
                            color: themeProvider.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 105,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          top: -4,
                          right: 12,
                          child: Transform.rotate(
                            angle: 32 * 3.141592653589793 / 180,
                            child: SizedBox(
                              width: 38,
                              height: 38,
                              child: Image.asset(
                                "assets/crown.png",
                                height: 24,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        // Avatar image
                        Container(
                          height: 95,
                          child: Center(
                            child: Container(
                              height: 70,
                              width: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: Image.network(
                                "https://img.freepik.com/premium-photo/illustration-cute-boy-avatar-graphic-white-background-created-with-generative-ai-technology_67092-4570.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 90,
                      width: 105,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          "3",
                          style: GoogleFonts.merriweather(
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                            color: themeProvider.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(4),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: themeProvider.isDarkMode
                        ? [
                            const Color.fromARGB(255, 64, 64, 64),
                            Colors.grey.shade900
                          ]
                        : [Colors.purple, Colors.orange]),
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    child: const Text(
                      "Rank",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 420,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: themeProvider.isDarkMode
                                    ? Color.fromARGB(255, 49, 52, 50)
                                    : Color.fromARGB(255, 50, 162, 54),
                                border: Border.all(
                                    color: themeProvider.isDarkMode
                                        ? Colors.grey.shade400
                                        : Colors.white,
                                    width: 2),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: themeProvider.isDarkMode
                                        ? Color.fromARGB(255, 98, 104, 100)
                                        : Color.fromARGB(255, 8, 130, 79)
                                            .withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                              "https://tse4.mm.bing.net/th?id=OIP.wEsBe2udHBieFeZVmus8qAHaHk&pid=Api&P=0&h=180"),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text(
                                        "Prathamesh Godage",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      width: 30,
                                      child: Center(
                                          child: Text(
                                        "${index + 1}",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ))),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
