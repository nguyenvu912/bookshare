import 'package:flutter/material.dart';

class IllustrationWidget extends StatelessWidget {
  final String imageUrl;
  const IllustrationWidget({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          height: 128,
          width: 128,
        ),
      ],
    );
  }
}
