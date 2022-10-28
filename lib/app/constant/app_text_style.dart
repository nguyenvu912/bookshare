import 'package:bookshare/app/app_config.dart';
import 'package:bookshare/app/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const _textStyle = TextStyle(fontFamily: AppConfig.fontFamily);

  static TextStyle main(double size, {FontWeight? weight}) =>
      _textStyle.copyWith(
        color: AppColors.main,
        fontSize: size,
        fontWeight: weight,
      );

  static TextStyle black(double size,
          {FontWeight? weight, TextDecoration? decoration}) =>
      _textStyle.copyWith(
        color: AppColors.bodyBlackText,
        fontSize: size,
        fontWeight: weight,
        decoration: decoration,
        decorationColor: Colors.black,
      );

  static TextStyle grey(double size,
          {FontWeight? weight, TextDecoration? decoration}) =>
      _textStyle.copyWith(
        color: AppColors.bodyGreyText,
        fontSize: size,
        fontWeight: weight,
        decoration: decoration,
        decorationColor: Colors.black,
      );

  static TextStyle hintText(double size, {FontWeight? weight}) =>
      _textStyle.copyWith(
        color: AppColors.hintGreyText,
        fontSize: size,
        fontWeight: weight,
      );

  static TextStyle errorText(double size, {FontWeight? weight}) =>
      _textStyle.copyWith(
        color: AppColors.errorText,
        fontSize: size,
        fontWeight: weight,
      );

  static TextStyle redD9(double size, {FontWeight? weight}) =>
      _textStyle.copyWith(
        color: AppColors.redD9,
        fontSize: size,
        fontWeight: weight,
      );

  static TextStyle red(double size, {FontWeight? weight}) =>
      _textStyle.copyWith(
        color: AppColors.redE1,
        fontSize: size,
        fontWeight: weight,
      );

  static TextStyle blue(double size, {FontWeight? weight}) =>
      _textStyle.copyWith(
        color: AppColors.blue24,
        fontSize: size,
        fontWeight: weight,
      );

  static TextStyle orange(double size, {FontWeight? weight}) =>
      _textStyle.copyWith(
        color: AppColors.orangeF0,
        fontSize: size,
        fontWeight: weight,
      );

  static TextStyle white(double size, {FontWeight? weight}) =>
      _textStyle.copyWith(
        color: AppColors.white,
        fontSize: size,
        fontWeight: weight,
      );
}
