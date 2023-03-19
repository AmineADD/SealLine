import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class FlashMessage extends StatelessWidget {
  final String title;
  final String message;

  const FlashMessage({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: Row(
        children: [
          Flexible(
            child: AwesomeSnackbarContent(
              title: title,
              message: message,
              contentType: ContentType.success,
              inMaterialBanner: true,
            ),
          ),
        ],
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);

    return Container();
  }
}
