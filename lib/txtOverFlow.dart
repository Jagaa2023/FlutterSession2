import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class txtOverFlow extends StatelessWidget {
  const txtOverFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
     // height: 20,
      child:
      Column(

        children: [
          Text('JTextoverflowexampleshere',  style: TextStyle(  fontWeight: FontWeight.bold, color: Colors.amberAccent),),

          Text('JTextoverflowexampleshere',  style: TextStyle( overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold, color: Colors.red),),

        ],
      ),

    );
  }
}
