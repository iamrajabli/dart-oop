void main(List<String> args) {
  User iamrajabli = Admin();
  iamrajabli.login();
  iamrajabli.register();

  List<User> users = [iamrajabli];

  poly(iamrajabli);
}

void poly(User user) {
  user.register();
}

abstract class User {
  void login();
  void register();
}

class Admin extends User {
  @override
  void login() {
    print("Success Auth");
  }

  @override
  void register() {
    print("Success Register");
  }
}
