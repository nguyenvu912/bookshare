import 'package:bookshare/screen/question_answer_page/widget/header_question_answer.dart';
import 'package:flutter/material.dart';

class QuestionAnswerPage extends StatefulWidget {
  const QuestionAnswerPage({Key? key}) : super(key: key);

  @override
  State<QuestionAnswerPage> createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [HeaderQuestionPage()]),
      body: Column(
        children: const [],
      ),
    );
  }
}
