import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:bookshare/app/constant/validators.dart';
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
  static const List<String> list = <String>['Mới', "Cũ"];
  String dropdownValue = list.first;
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
              color: AppColors.white,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLabel("Tên sách"),
                    AppTextField(
                      keyboardType: TextInputType.text,
                      hintText: 'Nhập tên sách ...',
                      maxLength: 100,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Vui lòng nhập tên sách";
                        } else if (!Validator.validateFullName(value)) {
                          return "Tên sách không hợp lệ";
                        } else {
                          return null;
                        }
                      },
                    ),
                    _buildLabel("Tên tác giả"),
                    AppTextField(
                      keyboardType: TextInputType.text,
                      hintText: 'Nhập tên tác giả ...',
                      maxLength: 100,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Vui lòng nhập tên tác giả";
                        } else if (!Validator.validateFullName(value)) {
                          return "Tên tác giả không hợp lệ";
                        } else {
                          return null;
                        }
                      },
                    ),
                    _buildLabel("Mô tả cuốn sách"),
                    AppTextField(
                      keyboardType: TextInputType.text,
                      hintText: 'Mô tả khái quát ...',
                      maxLength: 1000,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Vui lòng nhập mô tả cuốn sách của bạn";
                        } else if (!Validator.validateFullName(value)) {
                          return "Mô tả không hợp lệ";
                        } else {
                          return null;
                        }
                      },
                    ),
                    _buildLabel("Tình trạng sách"),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: AppColors.greyD8,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Container(
                          margin: const EdgeInsets.only(left: 0),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: AppColors.black2C),
                        underline: Container(
                          height: 0,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.only(bottom: 36),
        child: AppButton(
          color: AppColors.main,
          width: double.infinity,
          onPressed: () {},
          title: 'Lưu thông tin',
          isEnabled: true,
        ),
      ),
    );
  }

  _buildLabel(String label) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(label, style: AppTextStyle.main(14, weight: FontWeight.w500)),
    );
  }
}
