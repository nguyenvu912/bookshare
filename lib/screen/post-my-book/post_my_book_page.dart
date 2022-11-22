import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/screen/common_widget/app_bar_widget.dart';
import 'package:bookshare/screen/common_widget/app_button.dart';
import 'package:bookshare/screen/common_widget/app_text_field.dart';
import 'package:flutter/material.dart';

class PostMyBook extends StatefulWidget {
  const PostMyBook({Key? key}) : super(key: key);

  @override
  State<PostMyBook> createState() => _PostMyBookState();
}

class _PostMyBookState extends State<PostMyBook> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
            context: context,
            title: 'Đăng sách',
            icon: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.main,
              ),
            )),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: const [
                      AppTextField(
                        keyboardType: TextInputType.text,
                        hintText: 'Tên sách ...',
                      ),
                      AppTextField(
                        keyboardType: TextInputType.text,
                        hintText: 'Tác giả ...',
                      ),
                      AppTextField(
                        keyboardType: TextInputType.text,
                        hintText: 'Mô tả ...',
                      ),
                      AppTextField(
                        keyboardType: TextInputType.text,
                        hintText: 'Tình trạng ...',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: AppButton(
                    color: AppColors.main,
                    width: double.infinity,
                    onPressed: () {},
                    title: 'Lưu thông tin',
                    isEnabled: true,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
