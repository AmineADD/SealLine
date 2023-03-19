import 'package:flutter/material.dart';
import 'package:seal_line/Components/OnBoarding/OnBoarding.dart';
import 'package:seal_line/Components/OnBoarding/onboarding_splash.dart';
import 'package:seal_line/Components/Steppers/home_screen.dart';
import 'package:seal_line/Constants/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _hasAlreadySeenOnBoarding = false;

  @override
  void initState() {
    super.initState();
    _checkIfAlreadySeenOnBoarding();
  }

  Future<void> _checkIfAlreadySeenOnBoarding() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _hasAlreadySeenOnBoarding = prefs.getBool(ONBOARDING_LOCAL_SAVE) ?? false;
      if (!_hasAlreadySeenOnBoarding) {
        prefs.setBool(ONBOARDING_LOCAL_SAVE, true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _hasAlreadySeenOnBoarding
        ? HomeScreen()
        : const OnBoarding();
  }
}
