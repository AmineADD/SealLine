import 'package:flutter/material.dart'; 

class HeaderWithString extends StatelessWidget {
  final String title;
  final String subTitle;

  const HeaderWithString({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 55, color: Colors.black),
        children: [
          TextSpan(
            text: title,
          ),
           TextSpan(
            text: subTitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}