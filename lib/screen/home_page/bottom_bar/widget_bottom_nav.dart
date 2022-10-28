import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const NavigationWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              icon,
              Text(
                title,
                style: isSelected
                    ? AppTextStyle.black(10, weight: FontWeight.w600)
                    : AppTextStyle.grey(10, weight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
