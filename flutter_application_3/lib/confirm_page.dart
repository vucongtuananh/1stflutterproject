// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_3/myhome_display.dart';

class ConFirmPage extends StatelessWidget {
  const ConFirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tuan Anh ',
      home: SafeArea(
        child: Scaffold(
            body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: prefer_const_literals_to_create_immutables
            Row(children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back)),
              const Padding(
                padding: EdgeInsets.only(left: 75, bottom: 40, top: 30),
                child: Text(
                  "Xác nhận đăng kí",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              )
            ]),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text("Nhập mã OTP",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            const Text("Mã OTP đã được gửi về địa chỉ email"),
            RichText(
              text: const TextSpan(
                  text: "tuananhmr2k3@gmail.com ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'của bạn. Vui ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    )
                  ]),
            ),
            const Text("lòng nhập mã"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 35, height: 60, child: TextFormField()),
                  // ignore: sized_box_for_whitespace
                  Container(width: 35, height: 60, child: TextFormField()),
                  // ignore: sized_box_for_whitespace
                  Container(width: 35, height: 60, child: TextFormField()),
                  // ignore: sized_box_for_whitespace
                  Container(width: 35, height: 60, child: TextFormField()),
                  // ignore: sized_box_for_whitespace
                  Container(width: 35, height: 60, child: TextFormField()),
                ],
              ),
            ),
            const Text("Bạn chưa nhận được mã OTP ?"),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "Gửi lại OTP",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          // ignore: unnecessary_new
                          MaterialPageRoute<void>(
                            builder: (context) => const HomeDisplay(),
                          ),
                        );
                      },
                      child: const Text(
                        "Xác nhận",
                        style: TextStyle(color: Colors.white),
                      ))),
            )
          ],
        )),
      ),
    );
  }
}
