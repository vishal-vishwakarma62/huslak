import 'dart:async';

import 'package:flutter/material.dart';
import 'package:huslak/select.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) => select()
                )
            )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Image.asset("assets/huslak.png"),
      ),


    );
  }
}
