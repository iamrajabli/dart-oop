void main(List<String> args) {
  DB db = OracleDB();

  poly(db);
}

void poly(DB db) {
  db.getUser();
  db.saveUser();
  db.updateUser();
  db.removeUser();
}

abstract class DB {
  void getUser();
  void saveUser();
  void updateUser();
  void removeUser();
}

class MongoDB extends DB {
  @override
  void getUser() {
    print("Get all user");
  }

  @override
  void saveUser() {
    print("Save a user");
  }

  @override
  void updateUser() {
    print("Update a user");
  }

  @override
  void removeUser() {
    print("Remove a user");
  }
}

class OracleDB extends DB {
  @override
  void getUser() {
    print("Get all user");
  }

  @override
  void saveUser() {
    print("Save a user");
  }

  @override
  void updateUser() {
    print("Update a user");
  }

  @override
  void removeUser() {
    print("Remove a user");
  }
}
