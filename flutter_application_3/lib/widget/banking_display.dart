// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';

import '../icons/app_icons.dart.dart';

class BankingDisplay extends StatefulWidget {
  const BankingDisplay({Key? key}) : super(key: key);

  @override
  State<BankingDisplay> createState() => _BankingDisplayState();
}

class _BankingDisplayState extends State<BankingDisplay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    // height: double.infinity,
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/h2.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                        width: double.infinity,
                        height: 700,
                        // height: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 70, left: 20, right: 20),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Send money to :",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 35, 34, 34),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    avatar('Add new'),
                                    avatar('Joe'),
                                    avatar('Mike'),
                                    avatar('Hennie'),
                                    avatar('Jude'),
                                    avatar('Dume'),
                                  ],
                                ),
                                Text("Favorite service :",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 35, 34, 34),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Container(
                                    width: double.infinity,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 2,
                                            spreadRadius: 1,
                                          )
                                        ],
                                        color:
                                            Color.fromARGB(255, 211, 203, 203),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            TextIcon(Icons.qr_code, 'QR',
                                                'Transfer'),
                                            TextIcon(Icons.phone, 'Topup', ''),
                                            TextIcon(Icons.wifi, 'Interbank',
                                                'Transfer'),
                                            TextIcon(Icons.comment, 'BSMS',
                                                'Registation'),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            TextIcon(
                                                Icons.lock, 'Lock Card', ''),
                                            TextIcon(Icons.handshake,
                                                'Desposit', 'Online'),
                                            TextIcon(Icons.circle_outlined,
                                                'Finance', 'Plane'),
                                            TextIcon(Icons.wallet, 'Salary',
                                                'Advance'),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 164, 159, 159),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: TextButton(
                                                onPressed: () {},
                                                child: Text("Customize",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          ),
                                        )
                                      ],
                                    )),
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: _footer(Icons.home, 'Home')),
                                    _footer(Icons.present_to_all, 'Rewards'),
                                    Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Icon(
                                          Icons.wallet,
                                          color: Colors.red,
                                        ),
                                        const Text("Banking",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 15)),
                                      ],
                                    ),
                                    _footer(Icons.comment, 'Community'),
                                    _footer(Icons.people, 'HR'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                  // ignore: sized_box_for_whitespace
                  header(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 170, left: 20, right: 20),
                    child: Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2,
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _mid(
                            Icons.transfer_within_a_station,
                            'Transfer',
                          ),
                          _mid(Icons.card_membership, 'Cards'),
                          _mid(Icons.handshake, 'Save'),
                          _mid(Icons.shopping_bag, 'Shopping'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}

Padding header() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SizedBox(
        height: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: const SizedBox(
                    width: 40,
                    height: 40,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/groupicon.png'),
                      radius: 100,
                    ),
                  ),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Tuấn Anh",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    Text("HD Bank - HD180103",
                        style: TextStyle(
                          color: Colors.white,
                        ))
                  ],
                ),
              ],
            ),
            const Text("Balance",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                )),
            Row(
              children: const [
                Text("VND 8,000,000",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5)),
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.white,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      // ignore: prefer_const_literals_to_create_immutables

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.wallet, color: Colors.red),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text("Current account",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  )),
                              Text("18012003064003",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_downward, color: Colors.grey),
                  ]),
            ),
          ],
        )),
  );
}

Column _mid(IconData icon, String name) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(
        icon,
        color: Colors.black,
      ),
      Text(name, style: TextStyle(color: Colors.black, fontSize: 16)),
    ],
  );
}

Column avatar(String name) {
  return Column(
    children: [
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/groupicon.png'),
      ),
      Text(name, style: TextStyle(color: Colors.black, fontSize: 14)),
    ],
  );
}

Column _footer(IconData icon, String title) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.grey,
      ),
      Text(title, style: const TextStyle(color: Colors.grey, fontSize: 15)),
    ],
  );
}

Container TextIcon(IconData icon, String title1, String title2) {
  return Container(
      child: Column(
    children: [
      Icon(icon, color: Colors.orange),
      Column(
        children: [
          Text(title1, style: TextStyle(color: Colors.black, fontSize: 15)),
          Text(title2, style: TextStyle(color: Colors.black, fontSize: 15)),
        ],
      )
    ],
  ));
}
