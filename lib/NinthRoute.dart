import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NinthRoute extends StatefulWidget {
  const NinthRoute({Key? key}) : super(key: key);

  @override
  State<NinthRoute> createState() => _NinthRouteState();
}

class _NinthRouteState extends State<NinthRoute> {
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
          body: Container(
              child: Container(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 15),
                  child: Text(
                    "The form has been submitted.",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 15),
                  child: Text(
                    "Thank You.",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ))),
    );
    ;
  }
}
