import 'dart:async';
import 'package:flutter/material.dart';
import 'package:seal_line/Components/DesignSystem/Messages/flashMessage.dart';
import 'package:seal_line/Components/DesignSystem/Titles/headerWithString.dart';
import 'package:seal_line/Components/Steppers/home_screen.dart';
import 'package:seal_line/Constants/config.dart';
import 'package:seal_line/Utils/translate.dart';

class OnBoardingSplash extends StatefulWidget {
  const OnBoardingSplash({Key? key}) : super(key: key);

  @override
  _OnBoardingSplashState createState() => _OnBoardingSplashState();
}

class _OnBoardingSplashState extends State<OnBoardingSplash> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(
        const Duration(seconds: DURATIONS_ANIMATION),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
    _showWelcomeMessage();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _showWelcomeMessage() {
    Future<Null>.delayed(Duration.zero, () {
      if (trad(context) != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: FlashMessage(
              title: trad(context)!.information,
              message: trad(context)!.offering),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Scaffold(
        body: Container(
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
                  style: Theme.of(context).textTheme.displayLarge,
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: HeaderWithString(
                          title: trad(context)!.seal,
                          subTitle: trad(context)!.line),
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
