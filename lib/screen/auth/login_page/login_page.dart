import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/app/constant/app_images.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:bookshare/screen/auth/common_widget/widget_illustration.dart';
import 'package:bookshare/screen/auth/register_page/register_page.dart';
import 'package:bookshare/screen/common_widget/app_button.dart';
import 'package:bookshare/screen/common_widget/app_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
            padding: EdgeInsets.only(
                left: 20,
                top: MediaQuery.of(context).viewPadding.top,
                right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text('Đăng nhập',
                      style: AppTextStyle.main(18, weight: FontWeight.w700)),
                  const SizedBox(height: 10),
                  Text(
                    'Để chia sẻ những cuốn sách bổ ích với mọi người nhé!',
                    style: AppTextStyle.grey(14),
                  ),
                  const SizedBox(height: 54),
                  const IllustrationWidget(
                    imageUrl: AppImages.icLogoApp,
                  ),
                  const SizedBox(height: 81),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: const [
                          AppTextField(
                            keyboardType: TextInputType.text,
                            hintText: 'Tên tài khoản ...',
                          ),
                          AppTextField(
                            keyboardType: TextInputType.text,
                            hintText: 'Mật khẩu ...',
                          )
                        ],
                      )),
                  const SizedBox(height: 16),
                  AppButton(
                    color: AppColors.main,
                    width: double.infinity,
                    title: 'Đăng nhập',
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Bạn chưa có tài khoản?',
                        style: AppTextStyle.blue(12),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        },
                        child: Text(
                          'ĐĂNG KÝ',
                          style: AppTextStyle.blue(12),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
