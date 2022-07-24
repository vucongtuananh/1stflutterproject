// ignore: avoid_web_libraries_in_flutter

// ignore_for_file: prefer_const_constructors

// ignore: unnecessary_import
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/bank_choice.dart';

class HomeMyWidget extends StatefulWidget {
  const HomeMyWidget({Key? key}) : super(key: key);

  @override
  State<HomeMyWidget> createState() => _HomeMyWidgetState();
}

class _HomeMyWidgetState extends State<HomeMyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/sovico-2.png'),
            Text("What are you at Sovico Group",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Text("Please select the appropriate :",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.groups_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text("Employee at Sovico",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            TextButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const BankChoice(),
                  ),
                  // ignore: empty_statements
                );
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.badge_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text("Partner of Sovico",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.skip_next,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text("Back",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
