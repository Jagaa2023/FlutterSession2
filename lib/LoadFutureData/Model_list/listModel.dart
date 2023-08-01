class ListModel{

  String _name;
  String _email;
  int _color;

  int get color => _color;

  set color(int value) {
    _color = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  ListModel(this._name, this._email, this._color);

  factory ListModel.fromJson(Map<String, dynamic> json) {

    return ListModel(
        json['name']  == null ? "":  json['name']  as String,
        json['email'] == null ? "":  json['email'] as String,
      json['color'] == null ? 0:  json['color'] as int,
    );
  }


}