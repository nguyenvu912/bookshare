import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/app/constant/app_images.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class ItemBookDetail extends StatelessWidget {
  const ItemBookDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration:
            BoxDecoration(border: Border.all(color: AppColors.main, width: 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              width: 128,
              height: 128,
              child: Image.asset(
                AppImages.icLogoApp,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text(
                    "Sách Giáo Khoa Nhân Tạo",
                    style: AppTextStyle.black(12, weight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Tác giả: Khuyết Danh",
                    style: AppTextStyle.black(12, weight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Đã cho mượn",
                    style: AppTextStyle.black(12, weight: FontWeight.w400),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
