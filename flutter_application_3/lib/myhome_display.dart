// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widget/banking_display.dart';

class HomeDisplay extends StatefulWidget {
  const HomeDisplay({Key? key}) : super(key: key);

  @override
  State<HomeDisplay> createState() => _HomeDisplayState();
}

class _HomeDisplayState extends State<HomeDisplay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // ignore: unnecessary_const
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
                    height: 1000,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/ho.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      width: double.infinity,
                      height: 1200,
                      // height: double.infinity,
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: body(),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  header()
                ],
              ),
            ),
          )),
        ));
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                // ignore: prefer_const_constructors
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
            Row(
              children: [
                const Text("Your HDCoin ready to use",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
                const Icon(Icons.ice_skating),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.icecream,
                        color: Colors.white,
                      ),
                      const Text("0",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          )),
                      // ignore: prefer_const_constructors
                      Icon(
                        Icons.reviews_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      // ignore: prefer_const_constructors
                      Icon(
                        Icons.card_giftcard,
                        color: Colors.black,
                      ),
                      // ignore: prefer_const_constructors
                      Text("My Rewards",
                          style: const TextStyle(
                            color: Colors.black,
                          ))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.work_history_outlined),
              const Icon(Icons.arrow_circle_right),
            ],
          ),
          Row(
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(right: 10),
                // ignore: prefer_const_constructors
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dialog2.png'),
                  ),
                ),
              ),
              // ignore: duplicate_ignore
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "TuấnAnh Vũ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      const Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Sunday at 2:40",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const Icon(Icons.network_wifi_1_bar_outlined),
                    ],
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              const Text("Tuấn Anh đẹp trai",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              const Text("Tuấn Anh đẹp trai",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              const Text("Tuấn Anh đẹp trai",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.more_horiz),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("OKRs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  )),
              const Icon(Icons.arrow_circle_right, color: Colors.grey),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 110,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 197, 219, 238),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("On Track",
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 101, 101),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("3",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                            )),
                        const Text("/6",
                            style: TextStyle(
                              color: Color.fromARGB(255, 149, 179, 203),
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 110,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 163, 165, 238),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Completed",
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 101, 101),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("2",
                            style: TextStyle(
                              color: Color.fromARGB(255, 2, 25, 44),
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 110,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 197, 219, 238),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Progress",
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 101, 101),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("50%",
                            style: TextStyle(
                              color: Color.fromARGB(255, 227, 52, 52),
                              fontSize: 20,
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Stack(
                        children: [
                          Container(
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                              // ignore: prefer_const_constructors
                              color: Color.fromARGB(255, 235, 181, 181),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: double.infinity,
                            height: 5,
                            // ignore: prefer_const_constructors
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 175, 14, 14),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 40,
                            height: 5,
                            // ignore: prefer_const_constructors
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          RichText(
              // ignore: prefer_const_constructors
              text: TextSpan(
                  text: "Due day:",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  children: [
                // ignore: prefer_const_constructors
                TextSpan(
                    text: "May 30, 2022 days ",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ))
              ])),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(Icons.plus_one, color: Colors.white),
              const Text("Add new OKR",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ))
            ]),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color:
                          // ignore: unnecessary_const
                          Color.fromARGB(255, 239, 227, 227),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // ignore: prefer_const_constructors
                        Text("Getting Employee Onboard in HDBank",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // ignore: prefer_const_constructors
                            Text(
                              "ON TRACK",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                const Text("Jun 12",
                                    // ignore: unnecessary_const
                                    style: const TextStyle(
                                      fontSize: 15,
                                    )),
                                Stack(
                                  children: [
                                    Container(
                                      // ignore: prefer_const_constructors
                                      decoration: BoxDecoration(
                                        // ignore: prefer_const_constructors
                                        color: const Color.fromARGB(
                                            255, 235, 181, 181),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 30,
                                      height: 5,
                                      // ignore: prefer_const_constructors
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        // ignore: prefer_const_constructors
                                        color: Color.fromARGB(255, 8, 130, 83),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: 15,
                                      height: 5,
                                      // ignore: prefer_const_constructors
                                    ),
                                  ],
                                ),
                                const Text("48%",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 600,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 189, 186, 186),
                        borderRadius: BorderRadius.only(
                            bottomLeft: const Radius.circular(10),
                            bottomRight: const Radius.circular(10))),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // ignore: prefer_const_constructors
                              Text("eSign to get 100 HDCoins",
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  )),
                              Row(
                                children: [
                                  const Text("1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  const Text("/3 - ",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 116, 115, 115),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  const Text("30%",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ))
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 170,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _tile(
                                  "Fill Employee Details",
                                  "May 5",
                                ),
                                _tile("Equipment", "May 5"),
                                _tile("Employee", "May 31")
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            height: 170,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _tile2(
                                  'you are Welcome',
                                  'ok',
                                  'Completed',
                                ),
                                _tile2('Duc Nguyen', 'Deputy CEO', 'May 25'),
                                _tile2('Ally Tran', 'Product Team', 'May 16'),
                              ],
                            ),
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Job Trainings",
                                  // ignore: unnecessary_const
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Row(
                                children: [
                                  const Text("1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  const Text("/2 - ",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 116, 115, 115),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  const Text("50%",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ))
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _tile('Sovico Portal', 'Completed'),
                                _tile('Office Training', 'May 5'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                  const Text("Home",
                      style: TextStyle(color: Colors.red, fontSize: 15)),
                ],
              ),
              _footer(Icons.present_to_all, 'Rewards'),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const BankingDisplay(),
                      ),
                    );
                  },
                  child: _footer(Icons.wallet, 'Banking')),
              _footer(Icons.comment, 'Community'),
              _footer(Icons.people, 'HR'),
            ],
          ),
        ],
      ),
    );
  }
}

Row _tile(String title, String subtitle) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Row(
      children: [
        const Icon(Icons.book, color: Colors.grey),
        Text(title,
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            )),
      ],
    ),
    Text(
      subtitle,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    )
  ]);
}

Row _tile2(String undertitle, String bottomtitle, String subtitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/hdbank.png',
            ),
            radius: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(undertitle,
                    style: const TextStyle(color: Colors.black, fontSize: 15)),
                Text(bottomtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
      Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 15)),
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
