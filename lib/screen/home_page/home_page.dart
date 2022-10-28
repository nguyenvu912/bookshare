import 'package:bookshare/app/constant/constant_barrel.dart';
import 'package:bookshare/screen/home_page/home_widget/book_list_widget.dart';
import 'package:bookshare/screen/my_book_page/my_book_page.dart';
import 'package:bookshare/screen/profile_page/profile_page.dart';
import 'package:bookshare/screen/question_answer_page/question_answer_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: bottomBarWidget(),
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              BookListWidget(),
              QuestionAnswerPage(),
              MyBookPage(),
              ProfilePage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomBarWidget() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      color: AppColors.white,
      child: const TabBar(
        labelColor: AppColors.main,
        unselectedLabelColor: AppColors.grey36,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.only(bottom: 0),
        tabs: [
          Tab(
            text: "Home",
            icon: Icon(Icons.home),
          ),
          Tab(
            text: "Q&A",
            icon: Icon(Icons.question_answer),
          ),
          Tab(
            text: "My Book",
            icon: Icon(Icons.book),
          ),
          Tab(
            text: "Account",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
