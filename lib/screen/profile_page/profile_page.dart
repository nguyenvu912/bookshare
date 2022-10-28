import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/screen/profile_page/common_widget/header_profile_widget.dart';
import 'package:bookshare/screen/profile_page/common_widget/menu_item_widget.dart';
import 'package:bookshare/screen/profile_page/profile_detail/profile_detail_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const HeaderProfileWidget(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              shrinkWrap: true,
              children: [
                MenuItemWidget(
                    title: 'Personal Infomation',
                    icon: const Icon(
                      Icons.person,
                      color: AppColors.main,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileDetailPage()),
                      );
                    }),
                const SizedBox(
                  height: 24,
                ),
                MenuItemWidget(
                    title: 'My Book',
                    icon: const Icon(
                      Icons.menu_book_outlined,
                      color: AppColors.main,
                    ),
                    onTap: () {}),
                const SizedBox(
                  height: 24,
                ),
                MenuItemWidget(
                    title: 'Log Out',
                    icon: const Icon(
                      Icons.logout,
                      color: AppColors.main,
                    ),
                    onTap: () {})
              ],
            ),
          ),
        )
      ],
    ));
  }
}
