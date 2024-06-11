import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:adhicine/view/add_medicines_screen.dart";
import "package:adhicine/view/home_screen.dart";
import "package:simple_circular_progress_bar/simple_circular_progress_bar.dart";

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  List<String> _reportLst = ["Total", "Taken", "Missed", "Snoozed"];
  List _reportValuesLst = [5, 2, 1, 1];
  List<String> _days = ["Sun", "Mon", "Tue", "Wed", "Fri", "Sat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  "Report",
                  style: GoogleFonts.quicksand(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 170,
                  width: 400,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 3,
                            color: Colors.grey[350]!)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          "Today's Report",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 70,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _reportLst.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 17),
                                child: Column(
                                  children: [
                                    Text(
                                      "${_reportValuesLst[index]}",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blue[400],
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      _reportLst[index],
                                      style: GoogleFonts.quicksand(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.grey[500],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 140,
                  width: 400,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 3,
                            color: Colors.grey[350]!)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Check Dashboard",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '''Here you will find everything related 
to your active and past medicines''',
                            style: GoogleFonts.quicksand(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey[500],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 15),
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Center(
                              child: SimpleCircularProgressBar(
                                progressStrokeWidth: 7,
                                backStrokeWidth: 16,
                                backColor: Colors.grey[300]!,
                                progressColors: [
                                  Colors.green[300]!,
                                  Colors.orange[300]!,
                                  Colors.red[300]!,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Check History",
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.blue[400], size: 25),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _days.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                _days[index],
                                style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[350],
                                ),
                              ),
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.blueGrey[50],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${index + 1}",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 0,
                ),
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
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                                  fontSize: 17, fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Before Breakfast   Day 01",
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
                                color: const Color.fromARGB(255, 123, 223, 41)),
                            Text(
                              "Taken",
                              style: GoogleFonts.quicksand(
                                  fontSize: 11, fontWeight: FontWeight.w800),
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
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                                color: Colors.pink[100]),
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
                                  fontSize: 17, fontWeight: FontWeight.w800),
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
                                  fontSize: 11, fontWeight: FontWeight.w800),
                            ),
                          ],
                        )
                      ],
                    )),
                const SizedBox(height: 20),
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
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                                  fontSize: 17, fontWeight: FontWeight.w800),
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
                                  fontSize: 11, fontWeight: FontWeight.w800),
                            ),
                          ],
                        )
                      ],
                    )),
              ],
            ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(Icons.home, size: 35, color: Colors.grey[600]),
                        Text(
                          "Home",
                          style: GoogleFonts.quicksand(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    child: Column(
                      children: [
                        Icon(Icons.bar_chart_sharp,
                            size: 35, color: Colors.blue[400]),
                        Text(
                          "Report",
                          style: GoogleFonts.quicksand(
                            fontSize: 15,
                            color: Colors.grey[600],
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
