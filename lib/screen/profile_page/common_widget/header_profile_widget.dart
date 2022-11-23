import 'package:bookshare/app/constant/app_images.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class HeaderProfileWidget extends StatelessWidget {
  final String fullName;
  final String imageUrl;
  const HeaderProfileWidget(
      {Key? key, required this.fullName, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 48),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            SizedBox(
              height: 64,
              width: 64,
              child: Container(
                child: Image.asset(
                  imageUrl,
                ),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(32)),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              fullName,
              style: AppTextStyle.black(14, weight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ));
  }
}
