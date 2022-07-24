// ignore: file_names, unused_import
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final TextEditingController? data;
  // ignore: use_key_in_widget_constructors
  const MyTextField({this.text, this.icon, this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text!,
              style: const TextStyle(fontSize: 12),
            ),
            if (text == "Password")
              TextFormField(
                controller: data,
                decoration: InputDecoration(
                  icon: Icon(
                    icon,
                    color: Colors.black,
                  ) ,
                ),
                obscureText: true,
              ),
            if (text == "Email")
              TextFormField(
                controller: data,
                decoration: InputDecoration(
                  icon: Icon(
                    icon,
                    color: Colors.black,
                  ),
                ),
                obscureText: false,
              ),
          ],
        ),
      ),
    );
  }
}
