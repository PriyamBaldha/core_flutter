import 'dart:async';

import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  initState() {
    super.initState();

    Duration duration = const Duration(seconds: 3);

    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('HomePage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.production_quantity_limits_outlined),
              iconSize: 200,
            ),
            const CircularProgressIndicator(
              color: Colors.blue,
            ),
            const Text(
              "Pramukh Electronic",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 40,
                  color: Colors.teal),
            )
          ],
        ),
      ),
    );
  }
}
