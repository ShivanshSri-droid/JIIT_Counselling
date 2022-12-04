import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 2,
                backgroundColor: Colors.white,
                leading: Image.asset('images/jiit_logo.png'),
                title: const Center(
                    child: Text('Welcome to JIIT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black)))),
            body: Scrollbar(
              //ADDED THIS
              thumbVisibility: true, //always show scrollbar
              thickness: 10, //width of scrollbar
              radius: Radius.circular(10), //corner radius of scrollbar
              scrollbarOrientation:
                  ScrollbarOrientation.right, //which side to show scrollbar
              child: Scrollbar(
                //ADDED THIS
                thumbVisibility: true, //always show scrollbar
                thickness: 10, //width of scrollbar
                radius: Radius.circular(10), //corner radius of scrollbar
                scrollbarOrientation:
                    ScrollbarOrientation.right, //which side to show scrollbar
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          // padding: EdgeInsets.fromLTRB(10, 15, 100, 15),
                          margin: EdgeInsets.all(20),
                          child: Center(
                              child: Text(
                                  'Details of Qualifying Exam (10+2 Equivalent)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black)))),
                      Container(
                          child: Column(children: [
                        Container(
                            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                            child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              // controller: nameController,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white24,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                ),
                                labelText: 'Name of the School',
                                // errorText: 'Wrong User Name',
                              ),
                            )),
                        Container(
                            padding: const EdgeInsets.fromLTRB(40, 30, 40, 15),
                            child: TextField(
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                // controller: nameController,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                    ),
                                    labelText: "City/Distt. of School"
                                    // errorText: 'Wrong Password',
                                    ))),
                        Container(
                            padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                            child: TextField(
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                // controller: nameController,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                    ),
                                    labelText: "State of the School"
                                    // errorText: 'Wrong Password',
                                    ))),
                        Container(
                            padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                            child: TextField(
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                // controller: nameController,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                    ),
                                    labelText: "Board"
                                    // errorText: 'Wrong Password',
                                    ))),
                        Container(
                            padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                            child: TextField(
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                // controller: nameController,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                maxLength: 4,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  labelText: "Year of Passing",
                                  // errorText: 'Wrong Password',
                                ))),
                        Container(
                            padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                            child: TextField(
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                // controller: nameController,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  labelText: "10+2 Roll Number",
                                  // errorText: 'Wrong Password',
                                ))),
                        Container(
                            // padding: EdgeInsets.fromLTRB(0, 15, 210, 15),
                            margin: EdgeInsets.all(20),
                            child: Center(
                                child: Text('Score in 10+2 Exam',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black)))),
                        Container(
                          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Mathematics",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                          margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                          child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
// controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  labelText: "Max Marks"
// errorText: 'Wrong Password',
                                  )),
                        ),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          margin: EdgeInsets.only(left: 40, right: 40, top: 0),
                          child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
// controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                  )),
                        ),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Physics",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                            // padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                            margin:
                                EdgeInsets.only(left: 40, right: 40, top: 10),
                            child: TextField(
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
// controller: nameController,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                maxLength: 3,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    labelText: "Max Marks"
// errorText: 'Wrong Password',
                                    ))),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          margin: EdgeInsets.only(left: 40, right: 40, top: 0),
                          child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
// controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                  )),
                        ),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                          margin: EdgeInsets.only(
                              top: 20, bottom: 20, left: 40, right: 40),
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: subject3(),
                          ),
                        ),
                        Container(
                            // padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                            margin:
                                EdgeInsets.only(left: 40, right: 40, top: 10),
                            child: TextField(
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
// controller: nameController,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                maxLength: 3,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.black),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    labelText: "Max Marks"
// errorText: 'Wrong Password',
                                    ))),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          margin: EdgeInsets.only(left: 40, right: 40, top: 0),
                          child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
// controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                  )),
                        ),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                          margin: EdgeInsets.all(20),
                          child: Text(
                            "Total",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                          margin: EdgeInsets.only(left: 40, right: 40, top: 10),
                          child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
// controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  labelText: "Max Marks"
// errorText: 'Wrong Password',
                                  )),
                        ),
                        Container(
                          // padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          margin: EdgeInsets.only(left: 40, right: 40, top: 0),
                          child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
// controller: nameController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                  )),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 30),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      //ADDED THIS
                                      context,
                                      '/FifthRoute');
                                },
                                child: Center(
                                    widthFactor: 1,
                                    heightFactor: 1,
                                    child: Text(
                                      'Next Page',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )))),
                      ])),
                      // Divider(height: 1),
                    ],
                  ),
                ),
              ),
            )));
    ;
  }
}

class subject3 extends StatefulWidget {
  const subject3({Key? key}) : super(key: key);

  @override
  State<subject3> createState() => _subject3State();
}

class _subject3State extends State<subject3> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'Chemistry',
    'Computer Science',
    'Informatics Practices',
    'Information Technology',
    'Biology',
    'Biotechnology',
    'Technical Vocational Subjects',
    'Agriculture',
    'Engineering Graphics and Business Studies',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton(
      // Initial Value
      value: _dropdownvalue,
      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (newValue) {
        setState(() {
          _dropdownvalue = newValue!;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Subject 3"),
      isExpanded: true,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    ));
  }
}
