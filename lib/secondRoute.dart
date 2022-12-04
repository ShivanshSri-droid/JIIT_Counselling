import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 2,
                backgroundColor: Colors.white,
                leading: Image.asset('images/jiit_logo.png'),
                title: Center(
                    child: Text('Welcome to JIIT',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black)))),
            body: Scrollbar(
              //ADDED THIS
              thumbVisibility: true, //always show scrollbar
              thickness: 10, //width of scrollbar
              radius: Radius.circular(10), //corner radius of scrollbar
              scrollbarOrientation: ScrollbarOrientation.right,
              child: SingleChildScrollView(
                child: SafeArea(
                    child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                      child: Text(
                        'Scan this QR code at the scanner to start the admission process',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 50),
                      child: Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/330px-QR_code_for_mobile_English_Wikipedia.svg.png'),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/third'); //ADDED THIS
                        },
                        child: Center(
                            widthFactor: 1,
                            heightFactor: 1,
                            child: Text(
                              'Next Page',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))),
                  ],
                )),
              ),
            )));
  }
}
