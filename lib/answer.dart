import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);
//function can be replaced with voidCallback if an error occurs
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      //width: double.infinity,
      width: 350.0,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        
        child: Text(answerText),
        onPressed: selectHandler,
      
      ),
    
    );
  }
}
