import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/LoadFutureData/View_list/aListProfile.dart';

import '../LoadFutureData/View_list/ListView.dart';

class XacLiteLogin extends StatefulWidget {
  const XacLiteLogin({Key? key}) : super(key: key);

  @override
  State<XacLiteLogin> createState() => _XacLiteLoginState();
}

class _XacLiteLoginState extends State<XacLiteLogin> {
  bool isSecure  = false;
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


          Expanded(
            flex: 2,
            child: Container(

              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/CorpLogo.jpg"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Expanded(

            child: Container(
              margin: EdgeInsets.all(100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Text('XACBANK', style: TextStyle(fontSize: 30, color: Color(0xff0c043a), fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70, 0, 70, 10),
                    child: Container(

                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/xacbank.png"),
                            fit: BoxFit.fill),
                      ),
                      height: 90,
                      //width: 180,
                    ),
                  ),
                  TextFormField(
                    //  controller: _editingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
//                       hintText: 'this is hint',
                      labelText: 'Нэвтрэх нэр',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      // suffixIcon: Icon(Icons.access_time),
                      prefixIcon: Icon(Icons.person, color: Colors.deepOrange,),

                    ),

                    autovalidateMode: AutovalidateMode.always,
                    validator: (value) =>  NameCheck(value.toString()),

                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: !(isSecure),
                    //  controller: _editingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
//                       hintText: 'this is hint',
                      labelText: 'Нууц үг',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      suffixIcon: InkWell(
                        child: Icon(  (isSecure) ? Icons.lock : Icons.add_circle),
                        onTap: (){

                          setState(() {
                            isSecure = !isSecure;
                          });
                        },),
                      prefixIcon: Icon(   Icons.lock, color: Colors.deepOrange,),
                    ),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (value) =>  NameCheck(value.toString()),

                  ),
                  SizedBox(height: 10,),
                  OutlinedButton(
                    onPressed: (){

                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                        //aListProfile(color: Colors.blue,)
                          myListView(),
                      )
                      );

                  }, child: Text('Бүртгэх',style: TextStyle(color: Colors.white),),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                ],
              ),
            ),
          )






        ],
      ),
    );
  }
  NameCheck(String str) {

    if (str == "jg")
      return "Something wrong";
    else return null;

  }
}
