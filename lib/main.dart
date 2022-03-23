import 'package:flutter/material.dart';
import 'package:screen/screens/blog.dart';

void main() {
  runApp(const MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(children: [
          ElevatedButton(
              child: const Text('screen 1'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Blog();
                }));
              }),
        ])),
      ),
    );
  }
}
