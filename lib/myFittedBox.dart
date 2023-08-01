import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myFittedBox extends StatefulWidget {
  const myFittedBox({Key? key}) : super(key: key);

  @override
  State<myFittedBox> createState() => _myFittedBoxState();
}

class _myFittedBoxState extends State<myFittedBox> {
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        
      color: Colors.lightGreen,
      width: 400,
      height: 200,
      child: FittedBox(child: Text('Flutter Fitted Box', style: TextStyle(fontSize: 200),)),
    );
  }
}
