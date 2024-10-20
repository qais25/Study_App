import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: height * 0.8,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/logo.png"))),
          ),
          const Text("The Only Study App")
        ],
      ),
    );
  }
}
