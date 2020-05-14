import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answers extends StatelessWidget{
  final Function selectAnswer;
  String answerTxt;
  Answers(this.selectAnswer,this.answerTxt);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child:  RaisedButton(
        color: Colors.teal,
        textColor: Colors.deepOrange,
        child: Text(answerTxt == null? '' : answerTxt),
        onPressed: selectAnswer,
      ),

    );
  }
}