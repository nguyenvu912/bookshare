import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:bookshare/screen/common_widget/app_bar_widget.dart';
import 'package:bookshare/screen/common_widget/app_button.dart';
import 'package:bookshare/screen/common_widget/app_text_field.dart';
import 'package:bookshare/screen/home_page/home_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
            context: context,
            title: 'Thông tin tài khoản',
            icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.main,
              ),
            )),
        body: SingleChildScrollView(
          reverse: true,
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Cung cấp thông tin cá nhân của bạn để hoàn tất đăng ký tài khoản nhé!',
                      style: AppTextStyle.grey(16)),
                  const SizedBox(height: 24),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: 'Họ tên', style: AppTextStyle.grey(14)),
                    TextSpan(
                        text: ' *',
                        style:
                            AppTextStyle.grey(14).copyWith(color: Colors.red))
                  ])),
                  const SizedBox(height: 8),
                  const AppTextField(
                    hintText: 'Nhập họ tên của bạn...',
                    maxLength: 100,
                    // controller: nameController,
                    // validator: (value) {
                    //   if (value == null || value.isEmpty)
                    //     return "Vui lòng nhập họ và tên";
                    //   else if (!Validator.validateFullName(value))
                    //     return "Họ và tên không hợp lệ";
                    //   else
                    //     return null;
                    // },
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: 'Tài khoản', style: AppTextStyle.grey(14)),
                    TextSpan(
                        text: ' *',
                        style:
                            AppTextStyle.grey(14).copyWith(color: Colors.red))
                  ])),
                  const SizedBox(height: 8),
                  const AppTextField(
                    hintText: 'Nhập tài khoản của bạn...',
                    maxLength: 100,
                    // controller: nameController,
                    // validator: (value) {
                    //   if (value == null || value.isEmpty)
                    //     return "Vui lòng nhập họ và tên";
                    //   else if (!Validator.validateFullName(value))
                    //     return "Họ và tên không hợp lệ";
                    //   else
                    //     return null;
                    // },
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(text: 'Mật khẩu', style: AppTextStyle.grey(14)),
                    TextSpan(
                        text: ' *',
                        style:
                            AppTextStyle.grey(14).copyWith(color: Colors.red))
                  ])),
                  const SizedBox(height: 8),
                  const AppTextField(
                    hintText: 'Nhập mật khẩu của bạn...',
                    maxLength: 100,
                    // controller: nameController,
                    // validator: (value) {
                    //   if (value == null || value.isEmpty)
                    //     return "Vui lòng nhập họ và tên";
                    //   else if (!Validator.validateFullName(value))
                    //     return "Họ và tên không hợp lệ";
                    //   else
                    //     return null;
                    // },
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Xác nhận mật khẩu',
                        style: AppTextStyle.grey(14)),
                    TextSpan(
                        text: ' *',
                        style:
                            AppTextStyle.grey(14).copyWith(color: Colors.red))
                  ])),
                  const SizedBox(height: 8),
                  const AppTextField(
                    hintText: 'Xác nhận mật khẩu của bạn...',
                    maxLength: 100,
                    // controller: nameController,
                    // validator: (value) {
                    //   if (value == null || value.isEmpty)
                    //     return "Vui lòng nhập họ và tên";
                    //   else if (!Validator.validateFullName(value))
                    //     return "Họ và tên không hợp lệ";
                    //   else
                    //     return null;
                    // },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppButton(
                    color: AppColors.main,
                    width: double.infinity,
                    title: 'Đăng ký ngay',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
