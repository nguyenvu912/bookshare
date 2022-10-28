import 'package:bookshare/app/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    Key? key,
    required BuildContext context,
    VoidCallback? onBackPressed,
    required String title,
    Widget? icon,
  }) : super(
          key: key,
          elevation: 0,
          backgroundColor: AppColors.white,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
              child: Container(
                color: AppColors.divider,
                height: 1.5,
              ),
              preferredSize: const Size.fromHeight(1.5)),
          title: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: AppColors.main),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    if (onBackPressed != null) {
                      onBackPressed();
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  child: icon ??
                      const Icon(
                        Icons.close,
                        color: AppColors.main,
                      ),
                ),
              )
            ],
          ),
        );
}
