import "package:adhicine/view/home_screen_filled.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";

class AddMedicinesPage extends StatefulWidget {
  const AddMedicinesPage({super.key});

  @override
  State<AddMedicinesPage> createState() => _AddMedicinesPageState();
}

class _AddMedicinesPageState extends State<AddMedicinesPage> {
  List<Color> colorsList = [
    Colors.pink[100]!,
    Colors.purple[200]!,
    Colors.red[300]!,
    Colors.green[300]!,
    Colors.orange[300]!,
    Colors.blue[200]!
  ];

  List iconList = [
    Icons.tablet,
    Icons.medication_liquid,
    Icons.bolt_outlined,
    Icons.biotech_outlined
  ];
  List iconNamesList = ["Tablet", "MediLiq", "Energy Drink", "Bio Drink"];

  List<String> foodList = ["Before Food", "After Food", "Before Sleep"];
  double quantity = 0.5;
  double _currentSliderValue = 01;
  String _todayDate = "Today";
  String _endDate = "End Date";
  String _freqDays = "Everyday";
  String _timesDay = "Three Time";
  String _dose1 = "Dose1";
  String _dose2 = "Dose 2";
  String _dose3 = "Dose 3";
  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("< Add Medicines",
                      style: GoogleFonts.quicksand(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 400,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: "Search Medicine Name",
                    hintStyle: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.mic_none,
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Compartment",
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 60,
                      width: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                        child: Text("${index + 1}",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 10),
            Text(
              "Color",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colorsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 60,
                      width: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: colorsList[index],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Type",
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: iconList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Icon(
                            iconList[index],
                            color: Colors.pink[100],
                            size: 45,
                          ),
                          Text(
                            "${iconNamesList[index]}",
                            style: GoogleFonts.quicksand(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Quantity",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 260,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: Center(
                    child: Text("Take 1/2 pill",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[700]!, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.remove_outlined,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[700]!, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.add,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Total Count",
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Container(
                    height: 23,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                    child: Center(
                      child: Text(
                        "${_currentSliderValue.round()}",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ))
              ],
            ),
            Slider(
              value: _currentSliderValue,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
              activeColor: Colors.blue,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "01",
                    style: GoogleFonts.quicksand(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    "100",
                    style: GoogleFonts.quicksand(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Set Date",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!, width: 3),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: _todayDate,
                  icon: Icon(Icons.arrow_back_ios),
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    setState(() {});
                    _todayDate = value!;
                  },
                  items: [
                    DropdownMenuItem(
                        value: "Today",
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("Today",
                              style: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        )),
                    DropdownMenuItem(
                        value: "Yesterday",
                        child: Text("Yesterday",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ))),
                    DropdownMenuItem(
                        value: "Tomorrow",
                        child: Text("Tomorrow",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ))),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!, width: 3),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: _endDate,
                  icon: Icon(Icons.arrow_back_ios),
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    setState(() {});
                    _endDate = value!;
                  },
                  items: [
                    DropdownMenuItem(
                        value: "End Date",
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("End Date",
                              style: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        )),
                    DropdownMenuItem(
                        value: "Yesterday",
                        child: Text("Yesterday",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ))),
                    DropdownMenuItem(
                        value: "Tomorrow",
                        child: Text("Tomorrow",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ))),
                  ],
                ),
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Frequency of Days",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!, width: 3),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                isExpanded: true,
                value: _freqDays,
                icon: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.expand_more,
                  ),
                ),
                style: GoogleFonts.quicksand(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                onChanged: (value) {
                  setState(() {});
                  _freqDays = value!;
                },
                items: [
                  DropdownMenuItem(
                      value: "Everyday",
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text("Everyday",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                  DropdownMenuItem(
                      value: "Once in Three Days",
                      child: Text("Once in Three Days",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                  DropdownMenuItem(
                      value: "Once in a Week",
                      child: Text("Once in a week",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "How many times a Day",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!, width: 3),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                isExpanded: true,
                value: _timesDay,
                icon: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.expand_more,
                  ),
                ),
                style: GoogleFonts.quicksand(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                onChanged: (value) {
                  setState(() {});
                  _timesDay = value!;
                },
                items: [
                  DropdownMenuItem(
                      value: "Three Time",
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text("Three Time",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                  DropdownMenuItem(
                      value: "Two Time",
                      child: Text("Two Time",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                  DropdownMenuItem(
                      value: "One Time",
                      child: Text("One Time",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.timelapse),
              ),
              isExpanded: true,
              value: _dose1,
              icon: Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(Icons.arrow_forward_ios, size: 15),
              ),
              style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              onChanged: (value) {
                setState(() {});
                _dose1 = value!;
              },
              items: [
                DropdownMenuItem(
                    value: "Dose1",
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text("Dose 1",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    )),
                DropdownMenuItem(
                    value: "Dose 2",
                    child: Text("Dose 2",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                DropdownMenuItem(
                    value: "Dose 3",
                    child: Text("Dose 3",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.timelapse),
              ),
              isExpanded: true,
              value: _dose2,
              icon: Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(Icons.arrow_forward_ios, size: 15),
              ),
              style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              onChanged: (value) {
                setState(() {});
                _dose2 = value!;
              },
              items: [
                DropdownMenuItem(
                    value: "Dose 2",
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text("Dose 2",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    )),
                DropdownMenuItem(
                    value: "Dose 1",
                    child: Text("Dose 1",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                DropdownMenuItem(
                    value: "Dose 3",
                    child: Text("Dose 3",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.timelapse),
              ),
              isExpanded: true,
              value: _dose2,
              icon: Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(Icons.arrow_forward_ios, size: 15),
              ),
              style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              onChanged: (value) {
                setState(() {});
                _dose3 = value!;
              },
              items: [
                DropdownMenuItem(
                    value: "Dose 3",
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text("Dose 3",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    )),
                DropdownMenuItem(
                    value: "Dose 1",
                    child: Text("Dose 1",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                DropdownMenuItem(
                    value: "Dose 2",
                    child: Text("Dose 2",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodList.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 20,
                      width: 110,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[50],
                      ),
                      child: Center(
                        child: Text(
                          "${foodList[index]}",
                        ),
                      ));
                },
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreenFilled();
                }));
              },
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.blue[400]),
                child: Center(
                    child: Text("Add",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ))),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
