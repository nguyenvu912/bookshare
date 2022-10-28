import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/app/constant/app_text_style.dart';
import 'package:bookshare/screen/common_widget/app_bar_widget.dart';
import 'package:bookshare/screen/common_widget/app_button.dart';
import 'package:bookshare/screen/common_widget/app_text_field.dart';
import 'package:flutter/material.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  String dropdownValue = list.first;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static const List<String> list = <String>['Nam', 'Nữ', 'Khác'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          context: context,
          title: 'Thông tin tài khoản',
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.main,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const AppTextField(
                        keyboardType: TextInputType.text,
                        hintText: 'Họ tên ...',
                      ),
                      const AppTextField(
                        keyboardType: TextInputType.text,
                        hintText: 'Tên tài khoản ...',
                      ),
                      const AppTextField(
                        keyboardType: TextInputType.text,
                        hintText: 'Số điện thoại ...',
                      ),
                      const AppTextField(
                        keyboardType: TextInputType.text,
                        hintText: 'Email ...',
                      ),
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
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )
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
