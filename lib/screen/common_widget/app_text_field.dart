import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final FormFieldSetter<String>? onSaved;

  final bool enable;
  final int? maxLength;
  final ValueChanged<String>? onFieldSubmitted;

  final AutovalidateMode? autoValidateMode;
  final String? initialValue;
  final bool? obscureText;
  final Widget? suffixIcon;
  final bool? readOnly;
  final VoidCallback? onTap;

  final Color? disableColor;

  final int? maxLine;

  const AppTextField(
      {Key? key,
      this.initialValue,
      this.hintText = '',
      this.controller,
      this.onChanged,
      this.keyboardType = TextInputType.text,
      this.autoValidateMode,
      this.validator,
      this.onSaved,
      this.enable = true,
      this.obscureText = false,
      this.suffixIcon,
      this.readOnly,
      this.onTap,
      this.maxLine,
      this.disableColor,
      this.maxLength,
      this.onFieldSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      maxLength: maxLength,
      onTap: onTap,
      readOnly: readOnly ?? false,
      obscureText: obscureText!,
      obscuringCharacter: "*",
      enabled: enable,
      controller: controller,
      maxLines: maxLine,
      decoration: InputDecoration(
        counter: const Offstage(),
        filled: enable ? null : true,
        fillColor: enable ? null : disableColor ?? AppColors.greyD8,
        contentPadding: const EdgeInsets.only(
          left: 5,
          right: 15,
          top: 13,
          bottom: 13,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.greyD8),
        ),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.greyD8),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.greyD8),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.main),
            borderRadius: BorderRadius.circular(8)),
        errorStyle: AppTextStyle.errorText(14),
        hintText: hintText,
        hintStyle: AppTextStyle.hintText(14, weight: FontWeight.normal),
        suffixIcon: suffixIcon != null
            ? Padding(padding: const EdgeInsets.only(right: 10), child: suffixIcon)
            : null,
        suffixIconConstraints: const BoxConstraints(minWidth: 15, minHeight: 15),
        isDense: true,
      ),
      initialValue: initialValue,
      autovalidateMode: autoValidateMode,
      validator: validator,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: AppTextStyle.black(14, weight: FontWeight.bold),
      onSaved: onSaved,
    );
  }
}
