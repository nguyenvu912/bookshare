import 'package:bookshare/app/app_config.dart';
import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final String? title;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;
  final Widget? child;
  final bool isLoading;
  final bool isEnabled;
  final double? radius;
  final Color? borderColor;
  final Color? loadingColor;

  AppButton({
    Key? key,
    this.title,
    required this.color,
    this.child,
    this.onPressed,
    this.textStyle,
    this.height,
    this.isLoading = false,
    this.isEnabled = true,
    this.width,
    this.radius,
    this.borderColor,
    this.loadingColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isEnabled ? color : const Color(0xFF248FED),
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 8),
          side: borderColor == null
              ? BorderSide.none
              : BorderSide(color: borderColor!)),
      child: InkWell(
        splashColor: color == AppColors.main ? const Color(0xFFf8db8e) : null,
        onTap: isEnabled ? (isLoading ? null : onPressed) : null,
        child: Container(
          height: height ?? 44,
          width: width ?? 80,
          alignment: Alignment.center,
          child: isLoading
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: FittedBox(
                      child: CircularProgressIndicator(
                    color: loadingColor ?? Colors.white,
                  )),
                )
              : child ??
                  Text(
                    title ?? "",
                    style: isEnabled
                        ? textStyle ??
                            AppTextStyle.white(14, weight: FontWeight.bold)
                        : const TextStyle(
                            fontFamily: AppConfig.fontFamily,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7D7D7E)),
                  ),
        ),
      ),
    );
  }
}
