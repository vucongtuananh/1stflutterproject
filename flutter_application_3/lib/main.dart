import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_page.dart';
import 'package:flutter_application_3/widget/base_popup.dart';
import 'package:flutter_application_3/widget/base_textField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                header(),
                login(),
                continue_button(context, email, password),
                notice_title(),
                footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column footer() {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
                onPressed: (() {}),
                child: const Text("Đăng kí",
                    style: TextStyle(
                      color: Colors.black,
                    ))),
          ),
        ),
        const Text("Hỗ trợ",
            style: TextStyle(
                color: Colors.red,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Padding notice_title() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          const Text(
            "Nhấn \"Đăng nhập \" đồng nghĩa với việc bạn sẽ đồng ý với ",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          RichText(
            text: const TextSpan(
                text: "Điều khoản và điều kiện ",
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                      text: "của People App(Sovico)",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 12,
                      ))
                ]),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("Forgot Password",
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding continue_button(BuildContext context, TextEditingController email,
      TextEditingController password) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(10)),
        child: TextButton(
            onPressed: () {
              if (email.text == '1' && password.text == '1') {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HomeMyWidget(),
                  ),
                );
              } else {
                // ignore: unused_element
                showMyDialog(context);
              }
              // ignore: empty_statements
              ;
            },
            child: const Text(
              "Continue",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }

  Container login() {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Column(
      children: [
        // ignore: prefer_const_constructors
        MyTextField(text: "Email", icon: Icons.email, data: email),

        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: MyTextField(text: 'Password', icon: Icons.key, data: password),
        ),
      ],
    ));
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 20),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20, left: 50),
              child: Image.asset(
                'assets/images/Logo-HDBank.webp',
                width: 300,
                height: 100,
                alignment: Alignment.topCenter,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: RichText(
                text: const TextSpan(
                    text: "PEOPLE",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                    ),
                    children: [
                      TextSpan(
                        text: "HUB",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1),
                      )
                    ]),
              ),
            ),
            const Text("Connecting HD people",
                style: TextStyle(color: Colors.black, fontSize: 18))
          ],
        ),
      ),
    );
  }
}
