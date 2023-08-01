

import 'package:widgets/LoadFutureData/Model_list/listModel.dart';


class ReaderResponseList{

  List<ListModel> _listModel;

  ReaderResponseList(this._listModel);

  factory  ReaderResponseList.fromJson(Map<String, dynamic> json){

    return ReaderResponseList(
        List<ListModel>.from(  json["responseBody"].map( (x) => ListModel.fromJson(x) ))
    );


  }

  List<ListModel> get listModel => _listModel;

  set listModel(List<ListModel> value) {
    _listModel = value;
  }
}