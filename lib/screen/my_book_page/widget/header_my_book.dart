import 'package:flutter/material.dart';

class HeaderMyBook extends StatelessWidget {
  const HeaderMyBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
      child: const Text("Heelo"),
    );
  }
}
