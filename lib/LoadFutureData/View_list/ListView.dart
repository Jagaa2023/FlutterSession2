import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/LoadFutureData/Model_list/listModel.dart';

import '../Contoller_list/listController.dart';
import '../Model_list/ReaderResponseLlist.dart';
import 'aListProfile.dart';

class myListView extends StatefulWidget {

  const myListView({Key? key}) : super(key: key);

  @override
  State<myListView> createState() => _myListViewState();


}

class _myListViewState extends State<myListView> {

  late Future _loadData;

  late List<ListModel> lstModel = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadData = DataLoading();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: FutureBuilder(
        future: _loadData,
        builder: (context, snap){

          if (snap.connectionState != ConnectionState.done) {
            //print('project snapshot data is: ${snap.data}');
            return
              Center(child: Container( child:  CircularProgressIndicator(color: Colors.amber, strokeWidth: 7, ) , width: 50, height: 50 )) ;
          } else {
            if (snap.hasError) {
              return Text( "Error");
            }
            else {

              if (snap.hasData) {



                return    ListView.builder(
                    itemCount: lstModel.length,
                    itemBuilder: (context, index){

                  return aListProfile(color:  Color(lstModel[index].color), name: lstModel[index].name, email: lstModel[index].email);

                }) ;
              } else {
                return Text("No DAta");
              }
            }
          }

        },
      ),
    );
  }

  Future<Text> DataLoading() async {

   //await Future.delayed(const Duration(milliseconds: 2000), () {

  //  });

    print("0");
    var rrl =  await listController().getData();
    print("4");


    lstModel  = rrl.listModel;




    return Text("This is Text widget.");


  }
}
