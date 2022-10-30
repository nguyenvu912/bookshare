import 'dart:async';

import 'package:bookshare/app/constant/app_images.dart';
import 'package:bookshare/app/constant/constant_barrel.dart';
import 'package:bookshare/screen/auth/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Share',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenView(
        navigateRoute: const LoginPage(),
        duration: 3000,
        imageSize: 130,
        imageSrc: AppImages.icLogoApp,
        backgroundColor: AppColors.white,
      ),
    );
  }
}
