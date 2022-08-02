import 'package:flutter/material.dart';
import 'package:flutter_start/learn_flutter_page.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const LearnFlutterPage();
                },
              ),
            );
          },
          child: const Text('Learn Flutter')),
    );
  }
}
