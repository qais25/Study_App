import 'package:flutter/material.dart';
import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width,
              height: height * 0.6,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo.png"))),
            ),
            Text(
              textAlign: TextAlign.center,
              "The Only Study App \n You'll ever need",
              style: Style.textStyle28.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              textAlign: TextAlign.center,
              "Upload class study matarials, create \n electronic flashcards to study.",
              style: Style.textStyle14
                  .copyWith(fontWeight: FontWeight.w400, letterSpacing: 0.8),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: ColorsApp.primaryColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "Let's start",
                    style: Style.textStyle16
                        .copyWith(color: ColorsApp.secondaryColor),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
