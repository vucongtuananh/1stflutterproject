
import 'package:flutter/material.dart';
import 'package:flutter_application_3/confirm_page.dart';

class BankChoice extends StatelessWidget {
  const BankChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // ignore: unnecessary_const
        home: SafeArea(
          child: Scaffold(
              body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                  ),
                ),
                Image.asset(
                  'assets/images/sovico-2.png',
                  height: 150,
                  width: 150,
                ),
                const Text(
                  "Bạn là nhân viên công tác tại : ",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),

                // ignore: avoid_unnecessary_containers
                SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 244, 243, 243),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        height: 60,
                        child: TextButton(
                          onPressed: (() {
                            // ignore: prefer_const_constructors
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ConFirmPage(),
                              ),
                            );
                          }),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/hdbank.png',
                                height: 100,
                                width: 100,
                              ),
                              const Icon(
                                Icons.skip_next,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 244, 243, 243),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/vietjet.png',
                              height: 100,
                              width: 100,
                            ),
                            const Icon(
                              Icons.skip_next,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 244, 243, 243),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/hdsaigon.jpg',
                              height: 100,
                              width: 100,
                            ),
                            const Icon(
                              Icons.skip_next,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 244, 243, 243),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/pvoil.jpg',
                              height: 100,
                              width: 100,
                            ),
                            const Icon(
                              Icons.skip_next,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 243, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/phulong.jpg',
                        height: 100,
                        width: 100,
                      ),
                      const Icon(
                        Icons.skip_next,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
