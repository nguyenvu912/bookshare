import 'package:bookshare/app/constant/app_colors.dart';
import 'package:bookshare/screen/home_page/bottom_bar/widget_bottom_nav.dart';
import 'package:bookshare/screen/profile_page/profile_page.dart';
import 'package:bookshare/screen/question_answer_page/question_answer_page.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Row(
        children: [
          Tab(
            child: NavigationWidget(
                icon: const Icon(
                  Icons.home,
                  color: AppColors.grey7A,
                ),
                title: 'Home',
                onTap: () {},
                isSelected: true),
          ),
          Tab(
            child: NavigationWidget(
                icon: const Icon(
                  Icons.question_answer,
                  color: AppColors.grey7A,
                ),
                title: 'Hỏi đáp',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuestionAnswerPage()),
                  );
                },
                isSelected: true),
          ),
          Tab(
            child: NavigationWidget(
                icon: const Icon(
                  Icons.menu_book_outlined,
                  color: AppColors.grey7A,
                ),
                title: 'Sách của tôi',
                onTap: () {},
                isSelected: true),
          ),
          Tab(
            child: NavigationWidget(
                icon: const Icon(
                  Icons.manage_accounts,
                  color: AppColors.grey7A,
                ),
                title: 'Tài khoản',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                isSelected: true),
          )
          // Container(
          //   child: TabBar(
          //     controller: tabController,
          //     tabs: [
          //       Tab(
          //         child: NavigationWidget(
          //             icon: const Icon(
          //               Icons.home,
          //               color: AppColors.grey7A,
          //             ),
          //             title: 'Home',
          //             onTap: () {},
          //             isSelected: true),
          //       ),
          //       Tab(
          //         child: NavigationWidget(
          //             icon: const Icon(
          //               Icons.question_answer,
          //               color: AppColors.grey7A,
          //             ),
          //             title: 'Hỏi đáp',
          //             onTap: () {
          //               Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => const QuestionAnswerPage()),
          //               );
          //             },
          //             isSelected: true),
          //       ),
          //       Tab(
          //         child: NavigationWidget(
          //             icon: const Icon(
          //               Icons.menu_book_outlined,
          //               color: AppColors.grey7A,
          //             ),
          //             title: 'Sách của tôi',
          //             onTap: () {},
          //             isSelected: true),
          //       ),
          //       Tab(
          //         child: NavigationWidget(
          //             icon: const Icon(
          //               Icons.manage_accounts,
          //               color: AppColors.grey7A,
          //             ),
          //             title: 'Tài khoản',
          //             onTap: () {
          //               Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => const ProfilePage()),
          //               );
          //             },
          //             isSelected: true),
          //       )
          //     ],
          //   ),
          // ),
          // Container(
          //   child: TabBarView(
          //     children: [
          //       Center(
          //         child: Text(
          //           'Tab',
          //           style: Theme.of(context).textTheme.headline5,
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
