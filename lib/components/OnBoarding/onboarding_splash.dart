import 'package:flutter/material.dart';
import 'package:seal_line/Components/DesignSystem/Titles/headerWithString.dart'; 

class OnBoardingSplash extends StatelessWidget {
  const OnBoardingSplash({Key? key}) : super(key: key);

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
                  style: Theme.of(context).textTheme.displaySmall,
                  children: const <InlineSpan>[
                    WidgetSpan(
                      child: HeaderWithString(title: "Seal", subTitle: "Line"),
                    )
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