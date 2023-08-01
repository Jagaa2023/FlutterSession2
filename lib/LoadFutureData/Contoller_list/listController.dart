import 'dart:convert';

import 'package:widgets/LoadFutureData/Model_list/ReaderResponseLlist.dart';
import 'package:http/http.dart' as http;

class listController{


  Future<ReaderResponseList> getData(
      ) async {

   late ReaderResponseList readerResponseList  ;
   print('0.');

    try {

      final response = await http.get(

          Uri.parse
          (
              'http://192.168.21.188:8085/getData'
          ),
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json",
            "authorization":  'Basic ' + base64.encode(utf8.encode( 'user:P@ss0rd2023')),

          },

      );

      print('1.');
      if (response.statusCode ==  200) {
        print('2.');
        try {

          Map<String, dynamic> mapp = json.decode(response.body);
          readerResponseList = new ReaderResponseList.fromJson(mapp);

        } catch (e) {


        }

      }
    }  catch (exc) {


        print("-->>>> "+exc.toString());


    }


   print('3.');
    return readerResponseList;

  }




}