import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";
import "package:adhicine/view/add_medicines_screen.dart";
import "package:adhicine/view/report_screen.dart";

class HomeScreenFilled extends StatefulWidget {
  const HomeScreenFilled({super.key});

  @override
  State<HomeScreenFilled> createState() => _HomeScreenFilledState();
}

class _HomeScreenFilledState extends State<HomeScreenFilled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(children: [
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Hi Harry!",
                  style: GoogleFonts.quicksand(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(width: 160),
                Icon(
                  Icons.medical_services,
                  color: Colors.blue,
                  size: 30,
                ),
                const SizedBox(
                  width: 30,
                ),
                
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/old_lady_picture.jpg"),
              ),

              ]),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "5 Medicines Left",
                  style: GoogleFonts.quicksand(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 50),
              //date wise slider here
              Stack(
                children: [
                  Row(),
                  Row(),
                ],
              ),

              const SizedBox(height: 50),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Morning 08:00 am",
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 100,
                        width: 400,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey[50]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.pink[100]),
                                child: Icon(
                                  Icons.water_drop_rounded,
                                  size: 30,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Calpol 500mg Tablet",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Before breakfast   Day 01",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Icon(Icons.notifications_none_outlined,
                                    size: 40,
                                    color: const Color.fromARGB(
                                        255, 123, 223, 41)),
                                Text(
                                  "Taken",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 100,
                        width: 400,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey[50]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.lightBlue[100]),
                                child: Icon(
                                  Icons.medication_outlined,
                                  size: 30,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Calpol 500mg Tablet",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Before Breakfast   Day 27",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Icon(Icons.notifications_none_outlined,
                                    size: 40, color: Colors.red),
                                Text(
                                  "Missed",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Afternoon 02:00 pm",
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 100,
                        width: 400,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey[50]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.purple[200]),
                                child: Icon(
                                  Icons.water_drop_rounded,
                                  size: 30,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Calpol 500mg Tablet",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "After Food   Day 01",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Icon(Icons.notifications_none_outlined,
                                    size: 40, color: Colors.amber),
                                Text(
                                  "Snoozed",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Night 09:00 pm",
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 100,
                        width: 400,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey[50]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red[300]),
                                child: Icon(
                                  Icons.personal_injury_outlined,
                                  size: 30,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Calpol 500mg Tablet",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Before Sleep   Day 03",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Icon(Icons.notifications_none_outlined,
                                    size: 40, color: Colors.grey[400]),
                                Text(
                                  "Left",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AddMedicinesPage();
            }));
          },
          child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.home, size: 35, color: Colors.blue[400]),
                      Text(
                        "Home",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ReportScreen();
                        }),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(Icons.bar_chart_sharp, size: 35),
                        Text(
                          "Report",
                          style: GoogleFonts.quicksand(
                            fontSize: 15,
                            color: Colors.blue[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
