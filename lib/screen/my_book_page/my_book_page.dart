import 'package:bookshare/screen/my_book_page/widget/header_my_book.dart';
import 'package:bookshare/screen/my_book_page/widget/tab_my_book_page.dart';
import 'package:flutter/material.dart';

class MyBookPage extends StatefulWidget {
  const MyBookPage({Key? key}) : super(key: key);

  @override
  State<MyBookPage> createState() => _MyBookPageState();
}

class _MyBookPageState extends State<MyBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(actions: const [
        //   HeaderMyBook(),
        // ]),
        body: Container(
      child: const TabMyBookPage(),
    ));
  }
}
