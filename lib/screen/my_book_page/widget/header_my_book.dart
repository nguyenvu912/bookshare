import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class HeaderMyBook extends StatelessWidget {
  const HeaderMyBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 148),
      child: Text(
        "My Book",
        style: AppTextStyle.white(24, weight: FontWeight.w400),
      ),
    );
  }
}
