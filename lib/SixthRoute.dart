import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SixthRoute extends StatefulWidget {
  const SixthRoute({Key? key}) : super(key: key);

  @override
  State<SixthRoute> createState() => _SixthRouteState();
}

class _SixthRouteState extends State<SixthRoute> {
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(50, 20, 15, 15),
                        child: Center(
                          child: Text(
                            "Choice of Branch",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 15, 180, 1),
                        child: Center(
                          child: Text(
                            "B.Tech = Bachelors in Technology",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 145, 1),
                        child: Center(
                          child: Text(
                            "CSE = Computer Science & Engineering",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(16, 1, 94, 1),
                        child: Center(
                          child: Text(
                            "ECE = Electronics & Communication Engineering",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 200, 1),
                        child: Center(
                          child: Text(
                            "IT = Informational Technology",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 268, 1),
                        child: Center(
                          child: Text(
                            "BT = Biotechnology",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 240, 15),
                        child: Center(
                          child: Text(
                            "INT = Integrated M Tech",
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice1(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice2(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice3(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice4(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice5(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice6(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice7(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice8(),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                      child: choice9(),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/SeventhRoute');
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
                    // Divider(height: 1),
                  ],
                ),
              ),
            )));
    ;
  }
}

class choice1 extends StatefulWidget {
  const choice1({Key? key}) : super(key: key);

  @override
  State<choice1> createState() => _choice1State();
}

String? init = null;

class _choice1State extends State<choice1> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Choice 1"),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice2 extends StatefulWidget {
  const choice2({Key? key}) : super(key: key);

  @override
  State<choice2> createState() => _choice2State();
}

class _choice2State extends State<choice2> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Choice 2"),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice3 extends StatefulWidget {
  const choice3({Key? key}) : super(key: key);

  @override
  State<choice3> createState() => _choice3State();
}

class _choice3State extends State<choice3> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Choice 3"),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice4 extends StatefulWidget {
  const choice4({Key? key}) : super(key: key);

  @override
  State<choice4> createState() => _choice4State();
}

class _choice4State extends State<choice4> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Choice 4"),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice5 extends StatefulWidget {
  const choice5({Key? key}) : super(key: key);

  @override
  State<choice5> createState() => _choice5State();
}

class _choice5State extends State<choice5> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Choice 5"),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice6 extends StatefulWidget {
  const choice6({Key? key}) : super(key: key);

  @override
  State<choice6> createState() => _choice6State();
}

class _choice6State extends State<choice6> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text('Choice 6'),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice7 extends StatefulWidget {
  const choice7({Key? key}) : super(key: key);

  @override
  State<choice7> createState() => _choice7State();
}

class _choice7State extends State<choice7> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Choice 7"),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice8 extends StatefulWidget {
  const choice8({Key? key}) : super(key: key);

  @override
  State<choice8> createState() => _choice8State();
}

class _choice8State extends State<choice8> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Choice 8"),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class choice9 extends StatefulWidget {
  const choice9({Key? key}) : super(key: key);

  @override
  State<choice9> createState() => _choice9State();
}

class _choice9State extends State<choice9> {
  String? _dropdownvalue = null;
  // List of items in our dropdown menu
  var items = [
    'B.Tech CSE 62',
    'B.Tech ECE 62',
    'B.Tech IT 62',
    'B.Tech BT 62',
    'B.Tech CSE 128',
    'B.Tech ECE 128',
    'INT CSE 62',
    'INT ECE 62',
    'INT BT 62',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
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
          _dropdownvalue = newValue;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      hint: Text("Choice 9"),
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}
