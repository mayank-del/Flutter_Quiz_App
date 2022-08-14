import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQues;
  final int quesIndex;

  //const Quiz({Key? key}) : super(key: key);
  Quiz({required this.question,required this.answerQues,required this.quesIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[quesIndex]['questionText'] as String,
        ),

        ...(question[quesIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQues(answer['score']) , answer['text'] as String);
        }).toList()
        /* RaisedButton(
            child: Text('ans1'),
            onPressed: _answerQues,
          ), //it should be without parenthesis, bcoz we re passing entire fxn instead of result.
          RaisedButton(
              child: Text('ans2'), onPressed: () => print('ans is coorect')), */
        //Answer(_answerQues),
        //Answer(_answerQues),

        //onPressed: answerQues,
      ],
    );
  }
}
