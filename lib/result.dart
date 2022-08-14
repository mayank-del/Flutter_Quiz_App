import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const MyWidget({Key? key}) : super(key: key);
  final int resultScore;
  final void Function() resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 5) {
      resultText = 'You are Awesome';
    } else if (resultScore >= 8) {
      resultText = 'Uo, are Dashing Man, You Rocked Man!!!';
    } else {
      resultText = 'Better luck next time.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.pink,
            onPressed: resetHandler,
          ),
          const Text("New buttons Without deprication warning "),

          //RaisedButton alternative

          ElevatedButton(
              //RaisedButton alternative
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                onPrimary: Colors.black38,
              ),
              onPressed: () {
                print("Elevated pressed");
              },
              child: Text('Elevated')),

          //FlatButton Alternative

          TextButton(
              //FlatButton Alternative
              onPressed: () {
                print("TextButton pressed");
              },
              style: TextButton.styleFrom(primary: Colors.orange),
              child: Text('TextButton')),

          OutlinedButton(
              onPressed: () {
                print("OutLinedButton pressed");
              },
               style:
                OutlinedButton.styleFrom(
                  primary: Colors.red,
                  side: BorderSide(color: Colors.red),
                ),
              child: Text('OutlinedButton'))
        ],
      ),
    );
  }
}
