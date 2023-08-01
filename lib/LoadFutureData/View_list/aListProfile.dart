import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aListProfile extends StatefulWidget {


  Color color;
  String name;
  String email;
  aListProfile({Key? key, required this.color, required this.name, required this.email}) : super(key: key);

  @override
  State<aListProfile> createState() => _aListProfileState();
}

class _aListProfileState extends State<aListProfile> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(8)   , bottomLeft: Radius.circular(8) )
        ),

        child:
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(

                color: Colors.white,
                child:
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( widget.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                      Text( widget.email, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.blue),),
                     ],
                  ),
                ),
              ),
            ),

    ),
      );
  }
}
