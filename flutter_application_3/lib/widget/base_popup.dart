import 'package:flutter/material.dart';

//

// ignore: unused_element
showMyDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      // ignore: avoid_unnecessary_containers
      return Stack(
        children: [
          AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: const [
                  Text("Bạn đã nhập sai mật khẩu"),
                  Text("Mời bạn nhập lại "),
                ],
              ),
            ),
            actions: <Widget>[
              // ignore: avoid_unnecessary_containers
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: const Text('Thử lại',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(left: 150, top: 250),
              width: 100,
              height: 100,
              child: Image.asset('assets/images/dialog2.png')),
        ],
      );
    },
  );
}
