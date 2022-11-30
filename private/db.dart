import 'dart:math';

class DB {
  dynamic _pass;
  String? _username;

  DB(dynamic _pass, String _username) {
    this._pass = _pass;
    this._username = _username;
  }

  String connect() {
    bool network = this.internet();

    if (network) {
      if (this._pass == 1234 && this._username == 'root') {
        return "Successfuly connection with username: ${this._username}!";
      } else
        return "Username or password is incorrectly!";
    } else
      return "Problem in network!";
  }

  bool internet() {
    return Random().nextBool();
  }
}
