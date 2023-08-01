import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myStack extends StatelessWidget {
  const myStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/JG.jpg'),
                radius: 50,
              ),
              Positioned(
                top:  73,
                left: 73,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 14,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 11,

                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Ц.Жаргалсүрэн', style: TextStyle( fontSize: 20),),
          ),

        ],
      ),
    );
  }
}
