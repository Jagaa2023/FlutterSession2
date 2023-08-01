import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myWrap extends StatefulWidget {
  const myWrap({Key? key}) : super(key: key);

  @override
  State<myWrap> createState() => _myWrapState();
}

class _myWrapState extends State<myWrap> {
  @override
  Widget build(BuildContext context) {
    return Wrap(

       spacing: 32,
       runSpacing: 32,
      children: [
        Container(width: 100, height: 100, color: Colors.green,),
        Container(width: 100, height: 100, color: Colors.purpleAccent,),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
          label: const Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
          label: const Text('Lafayette'),
        ),
        Container(width: 100, height: 100, color: Colors.green,),
        Container(width: 100, height: 100, color: Colors.purpleAccent,),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
          label: const Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
          label: const Text('Lafayette'),
        ),
        Container(width: 100, height: 100, color: Colors.green,),
        Container(width: 100, height: 100, color: Colors.purpleAccent,),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
          label: const Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
          label: const Text('Lafayette'),
        ),
      ],
    );
  }
}
