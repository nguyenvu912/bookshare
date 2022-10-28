import 'package:bookshare/app/constant/constant_barrel.dart';
import 'package:bookshare/screen/home_page/home_widget/search_home_widget.dart';
import 'package:bookshare/screen/home_page/tab_menu_book/tab_book_detail_page.dart';
import 'package:flutter/material.dart';

class BookListWidget extends StatefulWidget {
  const BookListWidget({Key? key}) : super(key: key);

  @override
  State<BookListWidget> createState() => _BookListWidgetState();
}

class _BookListWidgetState extends State<BookListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [SearchHomeWidget()],
        backgroundColor: AppColors.white,
      ),
      body: const TabBookDetail(),
    );
  }
}
