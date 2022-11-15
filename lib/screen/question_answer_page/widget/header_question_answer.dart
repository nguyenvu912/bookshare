import 'package:bookshare/app/constant/app_images.dart';
import 'package:bookshare/app/constant/constant_barrel.dart';
import 'package:flutter/material.dart';

class HeaderQuestionPage extends StatelessWidget {
  const HeaderQuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(),
      child: Row(
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: Container(
              child: Image.asset(
                AppImages.icLogoApp,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(32)),
            ),
          ),
          Text(
            'Nguyen Huy Vu',
            style: AppTextStyle.white(14),
          )
        ],
      ),
    );
  }
}
