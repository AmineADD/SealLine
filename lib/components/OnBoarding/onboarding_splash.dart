import 'dart:async';
import 'package:flutter/material.dart';
import 'package:seal_line/Components/DesignSystem/Messages/flashMessage.dart';
import 'package:seal_line/Components/DesignSystem/Titles/headerWithString.dart';
import 'package:seal_line/Components/Steppers/home_screen.dart';
import 'package:seal_line/Constants/config.dart';
import 'package:seal_line/Utils/translate.dart';

class OnBoardingSplash extends StatelessWidget {
  const OnBoardingSplash({Key? key}) : super(key: key);

  void showWelcomeMessage(BuildContext context) {
    Future.delayed(Duration.zero, () {
      final translation = trad(context);
      if (translation != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: FlashMessage(
              title: translation.information,
              message: translation.offering,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: DURATIONS_ANIMATION),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
      ),
    );
    showWelcomeMessage(context);
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/start.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displayLarge!,
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: HeaderWithString(
                        title: trad(context)!.seal,
                        subTitle: trad(context)!.line,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}