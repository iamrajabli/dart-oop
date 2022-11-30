import 'db.dart';

void main(List<String> args) {
  DB adminConnect = DB(1234, "root");

  print(adminConnect.connect());
}
