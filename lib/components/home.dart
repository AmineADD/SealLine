import 'package:flutter/material.dart';
import 'package:seal_line/Components/DesignSystem/rounded_button.dart';
import 'package:seal_line/Components/Steppers/home_screen.dart'; 
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(alignment: Alignment.topLeft,
      child: SafeArea (child: Scaffold(
        body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: const [
                  TextSpan(
                    text: "Seal",
                  ),
                  TextSpan(
                    text: "Line",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: "Start",
                fontSize: 20,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )
      )),
      )); 
  }
}
